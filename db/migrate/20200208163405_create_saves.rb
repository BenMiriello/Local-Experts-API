class CreateSaves < ActiveRecord::Migration[6.0]
  def change
    create_table :saves do |t|
      t.boolean :booked, default: false
      t.belongs_to :event, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
