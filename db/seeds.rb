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
