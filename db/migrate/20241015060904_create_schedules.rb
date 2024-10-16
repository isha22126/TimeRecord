class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.integer :teacher_id
      t.date :input
      t.datetime :start
      t.datetime :finish

      t.timestamps
    end
  end
end
