class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
    	t.string :title
    	t.string :image
    	t.string :description
    	t.references :tag
      	t.timestamps
    end
  end
end
