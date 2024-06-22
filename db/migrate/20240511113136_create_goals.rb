class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.date :deadlone
      t.string :weight
      t.string :fet

      t.timestamps
    end
  end
end
