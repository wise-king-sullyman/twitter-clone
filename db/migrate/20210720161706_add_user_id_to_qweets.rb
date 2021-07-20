class AddUserIdToQweets < ActiveRecord::Migration[6.1]
  def change
    add_column :qweets, :user_id, :integer
  end
end
