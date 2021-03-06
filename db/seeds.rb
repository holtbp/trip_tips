# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

cities = [
  {
    name: "Atlanta",
    local_name: "Atlanta",
    province: "Georgia",
    country_code: "US"
  },
  {
    name: "Austin",
    local_name: "Austin",
    province: "Texas",
    country_code: "US"
  },
  {
    name: "Boston",
    local_name: "Boston",
    province: "Massachusetts",
    country_code: "US"
  },
  {
    name: "Chicago",
    local_name: "Chicago",
    province: "Illinois",
    country_code: "US"
  },
  {
    name: "Cincinati",
    local_name: "Cincinati",
    province: "Ohio",
    country_code: "US"
  },
  {
    name: "Denver",
    local_name: "Denver",
    province: "Colorado",
    country_code: "US"
  },
  {
    name: "Detroit",
    local_name: "Detroit",
    province: "Michigan",
    country_code: "US"
  },
  {
    name: "Indianapolis",
    local_name: "Indianapolis",
    province: "Indiana",
    country_code: "US"
  },
  {
    name: "Kansas City",
    local_name: "Kansas City",
    province: "Missouri",
    country_code: "US"
  },
  {
    name: "Las Vegas",
    local_name: "Las Vegas",
    province: "Nevada",
    country_code: "US"
  },
  {
    name: "Los Angeles",
    local_name: "Los Angeles",
    province: "California",
    country_code: "US"
  },
  {
    name: "Miami",
    local_name: "Miami",
    province: "Florida",
    country_code: "US"
  },
  {
    name: "Nashville",
    local_name: "Nashville",
    province: "Tennessee",
    country_code: "US"
  },
  {
    name: "New Orleans",
    local_name: "New Orleans",
    province: "Louisiana",
    country_code: "US"
  },
  {
    name: "New York City",
    local_name: "New York City",
    province: "New York",
    country_code: "US"
  },
  {
    name: "Orlando",
    local_name: "Orlando",
    province: "Florida",
    country_code: "US"
  },
  {
    name: "Phoenix",
    local_name: "Phoenix",
    province: "Arizona",
    country_code: "US"
  },
  {
    name: "Portland",
    local_name: "Portland",
    province: "Oregon",
    country_code: "US"
  },
  {
    name: "San Antonio",
    local_name: "San Antonio",
    province: "Texas",
    country_code: "US"
  },
  {
    name: "San Diego",
    local_name: "San Diego",
    province: "California",
    country_code: "US"
  },
  {
    name: "San Francisco",
    local_name: "San Francisco",
    province: "California",
    country_code: "US"
  },
  {
    name: "Seattle",
    local_name: "Seattle",
    province: "Washington",
    country_code: "US"
  },
  {
    name: "St. Louis",
    local_name: "St. Louis",
    province: "Missouri",
    country_code: "US"
  },
  {
    name: "Washington D.C.",
    local_name: "Washington D.C.",
    province: "District of Columbia",
    country_code: "US"
  },
  {
    name: "Nice",
    local_name: "Nice",
    province: "Provence-Alpes-Côte d'Azur",
    country_code: "FR"
  },
  {
    name: "Nîmes",
    local_name: "Nîmes",
    province: "Occitania",
    country_code: "FR"
  },
  {
    name: "Paris",
    local_name: "Paris",
    province: "Ile-de-France",
    country_code: "FR"
  },
  {
    name: "Monte Carlo",
    local_name: "Monte Carlo",
    province: "Monaco",
    country_code: "MC"
  },
  {
    name: "Bordeaux",
    local_name: "Bordeaux",
    province: "Aquitaine",
    country_code: "FR"
  },
  {
    name: "Mont Saint-Michel",
    local_name: "Mont Saint-Michel",
    province: "Normandy",
    country_code: "FR"
  },
  {
    name: "Amsterdam",
    local_name: "Amsterdam",
    province: "Noord-Holland",
    country_code: "NL"
  },
  {
    name: "The Hague",
    local_name: "Den Haag",
    province: "Zuid-Holland",
    country_code: "NL"
  },
  # {
  #   name: "",
  #   local_name: "",
  #   province: "",
  #   country_code: ""
  # },
]

cities.each do |city|
  province = Province.where(
    name: city[:province],
    country_code: city[:country_code],
  ).first_or_create

  City.where(
    name: city[:name],
    local_name: city[:local_name],
    province_id: province,
  ).first_or_create
end

sights = [
  {
    city: "Amsterdam",
    name: "Rijksmuseum",
    type: "Museum",
    address: "Museumstraat 1, 1071 XX Amsterdam, Netherlands"
  },
  {
    city: "Amsterdam",
    name: "Van Gogh Museum",
    type: "Museum",
    address: "Museumplein 6, 1071 DJ Amsterdam, Netherlands"
  },
  {
    city: "Amsterdam",
    name: "Dam Square",
    type: "Landmark",
    address: "Dam 2118, 1012 CX Amsterdam, Netherlands"
  },
  {
    city: "Amsterdam",
    name: "Artis Royal Zoo",
    type: "Entertainment",
    address: "Plantage Kerklaan 38-40, 1018 CZ Amsterdam, Netherlands"
  },
  {
    city: "Paris",
    name: "Arc de Triomphe",
    type: "Landmark",
    address: "Place Charles de Gaulle, 75008 Paris, France"
  },
  {
    city: "Paris",
    name: "Eiffel Tower",
    type: "Landmark",
    address: "Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France"
  },
  {
    city: "Paris",
    name: "Musée d'Orsay",
    type: "Museum",
    address: "1 Rue de la Légion d'Honneur, 75007 Paris, France"
  },
  {
    city: "Paris",
    name: "Musée du Louvre",
    type: "Museum",
    address: "75001 Paris, France"
  },
  {
    city: "Paris",
    name: "Musée de l'Orangerie",
    type: "Museum",
    address: "Jardin Tuileries, 75001 Paris, France"
  },
  {
    city: "The Hague",
    name: "Mauritshuis",
    type: "Museum",
    address: "Plein 29, 2511 CS Den Haag, Netherlands"
  },
  {
    city: "Nice",
    name: "Allianz Riviera",
    type: "Entertainment",
    address: "Boulevard des Jardiniers, 06200 Nice, France"
  },
  {
    city: "Monte Carlo",
    name: "Larvotto Beach",
    type: "Entertainment",
    address: "Plage du Larvotto, 98000 Monaco-Ville, Monaco"
  },
  {
    city: "Monte Carlo",
    name: "Royal Thai",
    type: "Food",
    address: "18 Rue de Millo, 98000 Monaco"
  },
  {
    city: "Monte Carlo",
    name: "Oceanography Museum of Monaco",
    type: "Museum",
    address: "Musée Océanographique de Monaco, Avenue Saint-Martin, Monaco"
  },
  {
    city: "Monte Carlo",
    name: "Prince's Palace of Monaco",
    type: "Landmark",
    address: "Le Palais des Princes de Monaco, 98015, Monaco"
  },
  {
    city: "Nice",
    name: "Blue Beach",
    type: "Food",
    address: "Blue Beach, Prom. des Anglais, 06000 Nice, France"
  },
  {
    city: "Nice",
    name: "Jardin Albert I",
    type: "Landmark",
    address: "2-16 Avenue de Verdun, 06000 Nice, France"
  },
  {
    city: "Amsterdam",
    name: "Modern Contemporary (Moco) Museum",
    type: "Museum",
    address: "Honthorststraat 20, 1071 Amsterdam, Netherlands"
  },
  {
    city: "Amsterdam",
    name: "Omelegg - De Pijp",
    type: "Food",
    address: "Ferdinand Bolstraat 143, 1072 LH Amsterdam, Netherlands"
  },
  {
    city: "Amsterdam",
    name: "Zuivere Koffie",
    type: "Food",
    address: "Utrechtsestraat 39, 1017 VH Amsterdam, Netherlands"
  },
  {
    city: "Paris",
    name: "Parc des Princes",
    type: "Entertainment",
    address: "24 Rue du Commandant Guilbaud, 75016 Paris, France"
  },
  {
    city: "Nîmes",
    name: "Arena of Nîmes",
    type: "Landmark",
    address: "Arena of Nîmes, Boulevard des Arènes, 30000 Nîmes, France"
  },
  {
    city: "Nîmes",
    name: "Les Jardins de la Fontaine",
    type: "Landmark",
    address: "Les Jardins de la Fontaine, Quai de la Fontaine, 30000 Nîmes, France"
  },
  {
    city: "Nîmes",
    name: "La Tour Magne",
    type: "Landmark",
    address: "7 Rue de la Tour Magne, 30000 Nîmes, France"
  },
  {
    city: "Nîmes",
    name: "Mercadante",
    type: "Food",
    address: "4 Boulevard Gambetta, 30000 Nîmes, France"
  },
  {
    city: "Nîmes",
    name: "Temple de Diane",
    type: "Landmark",
    address: "Temple de Diane, 7 Quai Georges Clemenceau, 30900 Nîmes, France"
  },
  # {
  #   city: "",
  #   name: "",
  #   type: "",
  #   address: ""
  # },
]

sights.each do |sight|
  city = City.where(
    name: sight[:city]
  ).first

  next unless city.present?

  Sight.where(
    name: sight[:name],
    type: sight[:type],
    address: sight[:address],
    city_id: city,
  ).first_or_create
end
