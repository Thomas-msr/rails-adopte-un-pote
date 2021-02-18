class AddInitTagsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :init_tags, :text, array: true, default: []
  end
end
