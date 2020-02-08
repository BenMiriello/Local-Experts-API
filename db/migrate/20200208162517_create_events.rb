class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.timestamp :start
      t.timestamp :end
      # t.string :notes

      t.belongs_to :experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
