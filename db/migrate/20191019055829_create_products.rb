class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :desc
      t.string :active

      t.timestamps
    end
  end
end
