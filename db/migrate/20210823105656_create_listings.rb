class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
