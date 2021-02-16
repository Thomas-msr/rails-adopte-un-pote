class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :city
      t.string :availabilities

      t.timestamps
    end
  end
end
