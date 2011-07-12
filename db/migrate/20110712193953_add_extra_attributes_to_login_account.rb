class AddExtraAttributesToLoginAccount < ActiveRecord::Migration
  def self.up
    add_column :login_accounts, :first_name, :string
    add_column :login_accounts, :last_name, :string
    add_column :login_accounts, :email, :string
  end

  def self.down
    remove_column :login_accounts, :email
    remove_column :login_accounts, :last_name
    remove_column :login_accounts, :first_name
  end
end
