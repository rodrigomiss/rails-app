class AddTagsToNews < ActiveRecord::Migration
  def self.up
    add_column :news, :tags, :string, limit: 80
  end

  def self.down
    remove_column :news, :tags
  end
end
