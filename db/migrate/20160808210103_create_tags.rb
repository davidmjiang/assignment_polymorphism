class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :taggable_id
      t.string :taggable_type

      t.timestamps null: false
    end
    add_index :tags, [:taggable_id, :taggable_type]
  end
end
