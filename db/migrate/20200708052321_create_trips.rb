class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
