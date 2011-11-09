Experimenting with the Yelp API.

v2access.rb returns JSON for the first 20 results of a category/location
search. 

Tasks:
* Get those results untangled and fed into an ActiveRecord model.
* Make API request within the app, instead of a separate script. Not
  sure whether a controller or model should be doing that.
* Then again, maybe not. We certainly don't want to be polling the api on page loads, we just want to get the damn db populated. Using v2access.rb to straight up generate a seed file would work too.
