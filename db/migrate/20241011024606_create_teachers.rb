class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :mail
      t.string :pw
      t.integer :kana

      t.timestamps
    end
  end
end
