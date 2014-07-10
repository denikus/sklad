class AddAncestryToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :ancestry, :string
    add_column :categories, :identifier, :integer
    add_index :categories, :ancestry
    add_index :categories, :identifier
  end
end
