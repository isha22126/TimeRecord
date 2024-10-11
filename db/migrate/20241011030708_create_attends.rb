class CreateAttends < ActiveRecord::Migration[6.1]
  def change
    create_table :attends do |t|
      t.date :input
      t.boolean :hr_attend1
      t.boolean :hr_attend2
      t.boolean :attend1
      t.boolean :attend2
      t.boolean :attend3
      t.boolean :attend4
      t.boolean :attend5
      t.boolean :attend6
      t.boolean :attend7
      t.string :hr_comment1
      t.string :hr_comment2
      t.string :comment1
      t.string :comment2
      t.string :comment3
      t.string :comment4
      t.string :comment5
      t.string :comment6
      t.string :comment7

      t.timestamps
    end
  end
end
