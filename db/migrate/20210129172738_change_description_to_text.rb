class ChangeDescriptionToText < ActiveRecord::Migration[6.0]
  change_column :cakes, :description, :text
end
