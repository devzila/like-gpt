class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.references :author, foreign_key: true, null: false
      t.references :category, foreign_key: true, null: false
      t.string :slug, index: { unique: true }, null: false

      t.timestamps
    end
  end
end
