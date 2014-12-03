class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :url
      t.string :name
      t.timestamps
    end
  end
end
