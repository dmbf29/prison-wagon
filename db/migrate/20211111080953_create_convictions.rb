class CreateConvictions < ActiveRecord::Migration[6.1]
  def change
    create_table :convictions do |t|
      t.references :crime, null: false, foreign_key: true
      t.references :criminal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
