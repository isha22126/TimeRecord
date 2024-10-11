class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :kana
      t.string :mail
      t.string :pw

      t.timestamps
    end
  end
end
