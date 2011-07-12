# Make sure to load both the base class and the STI class, or ActiveRecord freaks out about associations.
require 'omnisocial/login_account'
require 'omnisocial/twitter_account'

Omnisocial::TwitterAccount.module_eval do
  alias_method :assign_basic_account_info, :assign_account_info

  def assign_account_info(auth_hash)
    self.assign_basic_account_info(auth_hash)
  
    self.first_name = auth_hash['user_info']['first_name']
    self.last_name  = auth_hash['user_info']['last_name']
    self.email      = auth_hash['extra']['user_hash']['email']
  end
end