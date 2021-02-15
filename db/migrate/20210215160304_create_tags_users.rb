class CreateTagsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :tags_users do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
