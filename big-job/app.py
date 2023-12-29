from flask import Flask, render_template, request
import mysql.connector
import pandas as pd


"""creation de l'application flask"""
app = Flask(__name__)

"""fonction qui permet de se connecter à la base de données"""
def connect_db():
    connection = mysql.connector.connect(
  host='localhost',
  user='root',
  database='carbonfootprint'
)
    return connection


"""route qui permet d'afficher la page d'accueil"""
@app.route('/')
def index():
    return render_template('index.html', 
                           observation=insert_observation(), 
                           title="Carbon Footprint", 
                           context=insert_context(),
                           w_headers=get_world_headers(),
                           world=get_world_data_dict(),
                           c_headers=get_country_headers(),
                            country=get_country_data_dict(),
                            countryList = get_country_name())


"""route qui permet d'afficher les details d'un pays"""
@app.route('/details', methods=['GET', 'POST'])
def details():
    if request.method == 'POST':
        country = request.form.get('country')
        if country == "none":
            return render_template('details.html',
                           title=country, 
                           country=get_country_data_dict(),
                           countryList = get_country_name())
        
        emission_contribution = get_emission_contribution_byCountry(country)

        result = {
            'Coal' : [emission_contribution['Coal'].values[0], electricity_gen_df['Médiane de gC02/kWh'][0], emission_contribution['Coal Emission contribution gCO2/kWh'].values[0]],
            'Oil' : [emission_contribution['Oil'].values[0], electricity_gen_df['Médiane de gC02/kWh'][2], emission_contribution['Oil Emission contribution gCO2/kWh'].values[0]],
            'Gas' : [emission_contribution['Gas'].values[0], electricity_gen_df['Médiane de gC02/kWh'][1], emission_contribution['Gas Emission contribution gCO2/kWh'].values[0]],
            'Nuclear' : [emission_contribution['Nuclear'].values[0], electricity_gen_df['Médiane de gC02/kWh'][5], emission_contribution['Nuclear Emission contribution gCO2/kWh'].values[0]],
            'Hydro' : [emission_contribution['Hydro'].values[0], electricity_gen_df['Médiane de gC02/kWh'][3], emission_contribution['Hydro Emission contribution gCO2/kWh'].values[0]],
            'Renewable' : [emission_contribution['Renewable'].values[0], electricity_gen_df['Médiane de gC02/kWh'][4], emission_contribution['Renewable Emission contribution gCO2/kWh'].values[0]]
        }

    return render_template('details.html',
                           title=country, 
                           result=result, 
                           country=get_country_data_dict(),
                           countryList = get_country_name(),
                           total_emission=get_total_emission(country))


"""route qui permet d'afficher la page d'émission totale annuelle de CO2"""
@app.route('/year', methods=['GET', 'POST'])
def year():
    if request.method == 'POST':
        if request.form.get('country') == "none":
            return render_template('year.html',
                           title="Error, please select a country", 
                           country=get_country_data_dict(),
                           countryList = get_country_name())
        if request.form.get('electricity_consumption') == "":
            return render_template('year.html',
                           title="Error, please enter a number for electricity consumption", 
                           country=get_country_data_dict(),
                           countryList = get_country_name())

        country = request.form.get('country')
        electicity_consumption = request.form.get('electricity_consumption')
        total_emission, total_emission_per_year = get_total_emission_year(country, int(electicity_consumption))
        number_of_trees = get_number_of_trees(country, int(electicity_consumption)).round(0)

        return render_template('year.html',
                           title=country, 
                           country=get_country_data_dict(),
                           countryList = get_country_name(),
                           electicity_consumption=electicity_consumption,
                           total_emission=total_emission,
                           total_emission_per_year=total_emission_per_year,
                           trees_needed=number_of_trees)



"""fonction qui permet de recuperer les données du fichier bigJob.txt"""
def insert_context():
    with open('big-job/docs/bigJob.txt', 'r', encoding='utf-8') as file:
        text = file.read()
        """split the text into a list line by line"""
        text = text.split('\n')
        return text

"""fonction qui permet de recuperer les données du fichier observations.txt"""
def insert_observation():
    with open('big-job/docs/observations.txt', 'r', encoding='utf-8') as file:
        text = file.read()
        """split the text into a list line by line"""
        text = text.split('\n')
        return text
    
"""fonction qui permet de recuperer les noms de colonnes de la table world"""
def get_world_headers():
    conn = connect_db()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM world")
    hearders = cursor.column_names
    return hearders

"""fonction qui permet de recuperer les données de la table world"""
def get_world_data_dict():
    conn = connect_db()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM world LIMIT 3")
    data = cursor.fetchall()
    cursor.close()
    conn.close()
    data_list = []
    col = cursor.column_names
    for row in data:
        data_list.append(dict(zip(col, row)))
    return data_list

"""fonction qui permet de recuperer les noms de colonnes de la table country"""
def get_country_headers():
    conn = connect_db()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM country")
    hearders = cursor.column_names
    return hearders

"""fonction qui permet de recuperer les données de la table country"""
def get_country_data_dict():
    conn = connect_db()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM country LIMIT 3")
    data = cursor.fetchall()
    cursor.close()
    conn.close()
    data_list = []
    col = cursor.column_names
    for row in data:
        data_list.append(dict(zip(col, row)))
    return data_list


"""fonction qui permet de calculer le pourcentage de contribution des differentes sources aux emissions de CO2 pour chaque pays de la table country"""
def get_country_data():
    conn = connect_db()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM country")
    data = cursor.fetchall()
    cursor.close()
    conn.close()
    data_list = []
    for row in data:
        data_list.append(row)
    return data_list


"""dataframe contenant les emissions de CO2 de differentes sources de production d'electricité"""
electricity_gen_df = pd.read_csv("big-job/docs/electricity_generation.csv", encoding='latin1', sep=';')


def get_all_country():
    conn = connect_db()
    cursor = conn.cursor()
    cursor.execute("(SELECT * FROM country) union (SELECT * FROM world)")
    data = cursor.fetchall()
    cursor.close()
    conn.close()
    country_df = pd.DataFrame(data, columns=['Country', 'Coal', 'Gas', 'Oil', 'Hydro', 'Renewable', 'Nuclear'])
    return country_df


"""calcul du pourcentage de contribution des differentes sources aux emissions de CO2 pour chaque pays de la dataframe country_df en utilisant la dataframe electricity_gen_df'
Contribution de la source aux émissions totales de CO2 d’un pays = Pourcentage d’utilisation de la source du pays x Emission de gCO2 par kWh de la source."""
def get_emission_contribution():
    country_df = get_all_country()
    country_df['Coal Emission contribution gCO2/kWh'] = (country_df['Coal']*electricity_gen_df['Médiane de gC02/kWh'][0])/100
    country_df['Gas Emission contribution gCO2/kWh'] = (country_df['Gas']*electricity_gen_df['Médiane de gC02/kWh'][1])/100
    country_df['Oil Emission contribution gCO2/kWh'] = (country_df['Oil']*electricity_gen_df['Médiane de gC02/kWh'][2])/100
    country_df['Hydro Emission contribution gCO2/kWh'] = (country_df['Hydro']*electricity_gen_df['Médiane de gC02/kWh'][3])/100
    country_df['Renewable Emission contribution gCO2/kWh'] = (country_df['Renewable']*electricity_gen_df['Médiane de gC02/kWh'][4])/100
    country_df['Nuclear Emission contribution gCO2/kWh'] = (country_df['Nuclear']*electricity_gen_df['Médiane de gC02/kWh'][5])/100
    return country_df


"""répartition des emissions de CO2 par pays"""
def get_emission_contribution_byCountry(country):
    country_df = get_emission_contribution()
    return country_df.loc[country_df['Country'] == country]


"""recuperation des données d'un pays"""
def get_country_row(country_name):
    country_df = get_all_country()
    country_row = country_df.loc[country_df['Country'] == country_name]
    return country_row


"""recuperation des noms des pays"""
def get_country_name():
    country_df = get_all_country()
    country_name = country_df['Country']
    return country_name


"""calcul du total des emissions de CO2 d'un pays"""
def get_total_emission(country_name):
    country_row = get_emission_contribution_byCountry(country_name)
    total_emission = country_row['Coal Emission contribution gCO2/kWh'] + country_row['Gas Emission contribution gCO2/kWh'] + country_row['Oil Emission contribution gCO2/kWh'] + country_row['Hydro Emission contribution gCO2/kWh'] + country_row['Renewable Emission contribution gCO2/kWh'] + country_row['Nuclear Emission contribution gCO2/kWh']
    return total_emission.values[0]


"""calcul de l'émission totale annuelle de CO2 d'un pays"""
def get_total_emission_year(country_name, electicity_consumption):
    total_emission = get_total_emission(country_name) / 1000
    hour_number_per_year = 8760
    emission_per_year = total_emission * electicity_consumption * hour_number_per_year
    return total_emission, emission_per_year


"""sachant qu'un arbre absorbe 25kg de CO2 par an, calcul du nombre d'arbres necessaires pour absorber les emissions de CO2 d'un pays"""
def get_number_of_trees(country_name, electicity_consumption):
    emission_per_year = get_total_emission_year(country_name, electicity_consumption)[1]
    tree_absorb = 25
    number_of_trees = emission_per_year / tree_absorb
    return number_of_trees


if __name__ == '__main__':
    app.run(debug=True)