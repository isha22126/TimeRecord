class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :mail
      t.string :pw
      t.integer :grade_id
      t.string :kana

      t.timestamps
    end
  end
end
