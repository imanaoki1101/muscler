class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.text :body
      t.string :user_name
      t.string :trainingname
      t.string :trainingnumber

      t.timestamps
    end
  end
end
