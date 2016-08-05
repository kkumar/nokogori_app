class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :url
      t.text :h1_nodes
      t.text :h2_nodes
      t.text :h3_nodes
      t.text :links
      t.timestamps null: false
    end
  end
end
