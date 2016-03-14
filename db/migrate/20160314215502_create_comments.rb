class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |table|
      table.string :title, null: false
      table.string :body, null: false
      table.integer :recipe_id, null: false
    end
  end
end
