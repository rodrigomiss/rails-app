class CreateCategoryNews < ActiveRecord::Migration
  def change
    create_table :category_news do |t|
    	t.string :name, limit: 120, null: false

      t.timestamps null: false
    end
  end
end
