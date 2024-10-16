class CreateTimetables < ActiveRecord::Migration[6.1]
  def change
    create_table :timetables do |t|
      t.date :input
      t.integer :grade_id
      t.integer :subject_id1
      t.integer :subject_id2
      t.integer :subject_id3
      t.integer :subject_id4
      t.integer :subject_id5
      t.integer :subject_id6
      t.integer :subject_id7
      t.integer :teacher_id1
      t.integer :teacher_id2
      t.integer :teacher_id3
      t.integer :teacher_id4
      t.integer :teacher_id5
      t.integer :teacher_id6
      t.integer :teacher_id7
      t.integer :hr_teacher_id1
      t.integer :hr_teacher_id2

      t.timestamps
    end
  end
end
