class AddUserIdToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_id, :int
  end
end
