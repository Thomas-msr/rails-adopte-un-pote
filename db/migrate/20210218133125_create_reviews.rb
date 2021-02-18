class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.text :content
      t.integer :destinataire
      t.reference :user
      t.reference :meeting

      t.timestamps
    end
  end
end
