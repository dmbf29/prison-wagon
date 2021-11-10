class CreateCriminals < ActiveRecord::Migration[6.1]
  def change
    create_table :criminals do |t|
      t.string :name
      t.integer :sentence
      t.references :prison, null: false, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
