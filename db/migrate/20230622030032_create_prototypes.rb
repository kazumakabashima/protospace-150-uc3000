class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.text :prototype
      t.text :user
      t.text :image
      t.string :catch_copy
      t.string :concept
      t.timestamps
    end
  end
end
