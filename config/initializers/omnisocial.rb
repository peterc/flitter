Omnisocial.setup do |config|
  TWITTER_CONSUMER_KEY = "azPN3IfzKmIx2dlR9bX0cg"
  TWITTER_CONSUMER_SECRET = "JLX4W0TGZUXfjwzhHj50v6XZ3LNFkuELYEBEMgOmfY"
  
  # ==> Twitter
  config.twitter TWITTER_CONSUMER_KEY, TWITTER_CONSUMER_SECRET
  
  # ==> Facebook
  # config.facebook 'APP_KEY', 'APP_SECRET', :scope => 'publish_stream'
  
  if Rails.env.production?
    
    # Configs for production mode go here
    
  elsif Rails.env.development?
    
    # Configs for development mode go here
    
  end
  
end
