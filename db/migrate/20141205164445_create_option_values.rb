class CreateOptionValues < ActiveRecord::Migration
  def change
    create_table :option_values do |t|
      t.references :option, index: true
      t.string :name
      t.timestamps
    end
  end
end
