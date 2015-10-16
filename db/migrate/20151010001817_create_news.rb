class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
    	t.references :category_news, index: true
    	t.references :admin, index: true
    	t.string :title, limit: 150, null: false
    	t.string :subtitle, limit: 150, null: false
    	t.text :content, null: false

      t.timestamps null: false
    end
  end
end
