class CreateLocalisations < ActiveRecord::Migration
  def change
    create_table :localisations do |t|
    	t.name

      t.timestamps null: false
    end
  end
end
