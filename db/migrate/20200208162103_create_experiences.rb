class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :description
      t.integer :quota
      t.string :image
      t.string :host_name

      t.belongs_to :category, index: true, null: false, foreign_key: true
      t.belongs_to :location, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end

