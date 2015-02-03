class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.references :category, index: true
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :categorizations, :categories
    add_foreign_key :categorizations, :projects
  end
end
