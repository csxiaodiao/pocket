class AddOmniauthToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :openid, :string, limit: 50, null: false
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :sex, :integer
    add_column :users, :name, :string, limit: 30
    add_column :users, :country, :string, limit: 30
    add_column :users, :province, :string, limit: 30
    add_column :users, :headimgurl, :string, limit: 30
    add_column :users, :subscribe_time, :datetime
    add_column :users, :unsubscribe_time, :datetime

  end

  def down
    remove_column :users, :openid
    remove_column :users, :provider
    remove_column :users, :uid
    remove_column :users, :name
    remove_column :users, :country
    remove_column :users, :province
    remove_column :users, :headimgurl
    remove_column :users, :subscribe_time
    remove_column :users, :unsubscribe_time
  end
end
