class CreateGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :grades do |t|
      t.string :grade_name
      t.string :class_name

      t.timestamps
    end
  end
end
