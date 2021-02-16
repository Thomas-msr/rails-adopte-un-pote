class RemoveCityFromOffers < ActiveRecord::Migration[6.0]
  def change
    remove_column :offers, :city, :string
  end
end
