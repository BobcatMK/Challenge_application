uri = URI.parse(ENV["lol"])
REDIS = Redis.new(:url => ENV["lol"])
