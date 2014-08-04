uri = URI.parse(ENV["redis"])
REDIS = Redis.new(:url => ENV["redis"])
