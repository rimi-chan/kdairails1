class CreateMains < ActiveRecord::Migration[6.1]
  def change
    create_table :mains do |t|
      t.string :title
      t.date :start_at
      t.date :end_at
      t.boolean :checkbox
      t.text :memo

      t.timestamps
    end
  end
end
