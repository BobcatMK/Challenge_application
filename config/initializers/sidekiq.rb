Sidekiq.configure_server do |config|
  config.redis = { :url => 'redis://redis.example.com:9547/12', :namespace => 'mynamespace' }
end

Sidekiq.configure_client do |config|
  config.redis = { :url => 'redis://redis.example.com:9547/12', :namespace => 'mynamespace' }
end
