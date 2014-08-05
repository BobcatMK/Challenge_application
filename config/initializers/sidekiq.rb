Sidekiq.configure_server do |config|
  config.redis = { :url => ENV["REDISTOGO_URL"], :namespace => 'mynamespace', :size => 1 }
end

Sidekiq.configure_client do |config|
  config.redis = { :url => ENV["REDISTOGO_URL"], :namespace => 'mynamespace', :size => 5 }
end
