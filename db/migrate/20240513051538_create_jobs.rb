class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.date :deadline
      t.string :trainingname
      t.string :trainingnumber

      t.timestamps
    end
  end
end
