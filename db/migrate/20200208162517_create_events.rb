class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.timestamp :start_at
      t.timestamp :end_at
      # t.string :notes

      t.belongs_to :experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
