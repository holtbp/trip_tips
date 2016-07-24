ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

# TODO: This is sloppy and a hack. Clean up
GOOGLE_LOCATION_API_KEY =  'AIzaSyBXkyRF0-by92x-ufQXY_DStmUzUObZfaw'
GOOGLE_MAPS_API_KEY = 'AIzaSyAw5O2gOiN5XacL3Zyo4g1FZsruN8nS_QY'

require 'bundler/setup' # Set up gems listed in the Gemfile.
