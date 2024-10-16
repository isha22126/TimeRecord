class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :mail
      t.string :pw
      t.integer :room_id
      t.string :kana

      t.timestamps
    end
  end
end
