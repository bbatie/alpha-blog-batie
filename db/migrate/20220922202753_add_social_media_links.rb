class AddSocialMediaLinks < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :twitter_link, :string
    add_column :users, :fackbook_link, :string
    add_column :users, :reddit_link, :string
    add_column :users, :linkedin_link, :string
    add_column :users, :tiktok_link, :string
    add_column :users, :email_link, :string
  end
end
