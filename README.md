# Trip Tips

## Terminology
* Getaway - this is a "trip," encapsulating everything from the moment you leave home to the moment you return home.
* Stop - represents a place you will stay overnight. For this project, I have connected all Adventures to Stops, so you can keep a list of places you want to see/things you want to do on each Stop
* Adventure - a sight you want to see. Allows for notes about what you want to do/see on each Adventure. Adventures can be located in different cities from their stop though. For example, you could stay in Amsterdam and travel to The Hague for the afternoon just to see the Mauritshuis.

## TODO
Turn these items into GitHub Issues:

* Sight info
  * Do lookups for operating hours for everything except landmarks. [API page](https://developers.google.com/places/web-service/details#PlaceDetailsResults)
* Stops
  * Allow user to specify their lodging location. Do all distance calculations to sights from the lodging location.
  * Autocomplete cities based on Google's API. Automatically add cities to the DB when a stop is created for a city that doesn't exist. [Relevant SO post](http://stackoverflow.com/questions/13689705/how-to-add-google-maps-autocomplete-search-box)
* On the Trip
  * Allow checking off things completed/visited
    * Add column via migration (DONE)
    * Add UI to mark as completed
* Require authentication to create Getaway; incorporate user_id into records
* User profile page
  * List travel stats
  * List completed adventures
