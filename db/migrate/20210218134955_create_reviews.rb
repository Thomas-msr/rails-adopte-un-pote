class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.text :content
      t.integer :destinataire
      t.references :user, null: false, foreign_key: true
      t.references :meeting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
