Sidekiq.configure_server do |config|
  config.redis = { :url => 'redis://redistogo:308170c9df9214c5ec94150a1155477b@hoki.redistogo.com:9547/', :namespace => 'mynamespace' }
end

Sidekiq.configure_client do |config|
  config.redis = { :url => 'redis://redistogo:308170c9df9214c5ec94150a1155477b@hoki.redistogo.com:9547/', :namespace => 'mynamespace' }
end
