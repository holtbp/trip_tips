# Trip Tips

## Terminology
* Getaway - this is a "trip," encapsulating everything from the moment you leave home to the moment you return home.
* Stop - represents a place you will stay overnight. For this project, I have connected all Adventures to Stops, so you can keep a list of places you want to see/things you want to do on each Stop
* Adventure - a sight you want to see. Allows for notes about what you want to do/see on each Adventure. Adventures can be located in different cities from their stop though. For example, you could stay in Amsterdam and travel to The Hague for the afternoon just to see the Mauritshuis.

## TODO
Turn these items into GitHub Issues:

* Register for account
  * Confirm email
  * Forgot password
* Browsing
  * Implement toggling of getaways to public/private viewing
  * Allow users to view public getaways
  * Allow users to view all sights w/ stats
    * Number of people that have been to a sight
    * Number of people who have added sight to a getaway
* Tips for travel
  * Show local currency (DONE) - maybe a link to exchange rate?
  * Show country code (DONE) - example of dialing a local phone number
  * Show local name for countries (DONE)
  * Show local name for cities - need to obtain that data somehow
  * Show list of languages locals speak (showing language codes currently). Use this [gem](https://github.com/grosser/i18n_data) to get languageg names
* Sight info
  * Do lookups for operating hours for everything except landmarks. [API page](https://developers.google.com/places/web-service/details#PlaceDetailsResults)
* Stops
  * Allow user to specify their lodging location. Do all distance calculations to sights from the lodging location.
  * Autocomplete cities based on Google's API. Automatically add cities to the DB when a stop is created for a city that doesn't exist. [Relevant SO post](http://stackoverflow.com/questions/13689705/how-to-add-google-maps-autocomplete-search-box)
* On the Trip
  * Allow checking off things completed/visited
