require 'rubygems'
require 'oauth'
require 'json'

def yelp_search(category, location)
  consumer_key = 'R1WnfbpBXLs-SgAXS-H48Q'
  consumer_secret = 'cXzCLHHMYf4xilaw-O-jATVVM5k'
  token = 'A0z9H1wnI0LCRRWyLDEGCioiB2PC3Cbp'
  token_secret = 'BK6BO3HkFK6TeDmTyGrPvr5QfkA'

  api_host = 'api.yelp.com'

  consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
  access_token = OAuth::AccessToken.new(consumer, token, token_secret)

  path = "/v2/search?term=#{category}&location=#{location}"

  data = access_token.get(path).body

  result = JSON.parse(data)

  return result
end

def filter_result(result)
  clean = []
  result["businesses"].each { |biz| clean.insert(biz["name"]) }
  return clean
end
