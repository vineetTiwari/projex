class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.references :task, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :favourites, :tasks
    add_foreign_key :favourites, :users
  end
end
