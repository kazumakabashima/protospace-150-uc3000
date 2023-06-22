class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string :name
      t.string :prototype
      t.text :image
      t.text :catch_copy
      t.text :concept
      t.timestamps
    end
  end
end
