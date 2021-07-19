class CreateQweets < ActiveRecord::Migration[6.1]
  def change
    create_table :qweets do |t|
      t.text :qweet

      t.timestamps
    end
  end
end
