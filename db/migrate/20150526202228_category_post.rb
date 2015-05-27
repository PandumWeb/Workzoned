class CategoryPost < ActiveRecord::Migration
  def change
  	create_table :category_post do |t|
    	t.integer	:category_id
    	t.integer	:post_id
      t.timestamps null: false
  end
end
end
