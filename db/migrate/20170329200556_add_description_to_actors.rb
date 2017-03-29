class AddDescriptionToActors < ActiveRecord::Migration[5.0]
  def change
    add_column :actors, :description, :text
  end
end
