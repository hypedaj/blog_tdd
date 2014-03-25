class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :context
      t.references :user, index: true, null: false
      t.references :blog, index: true, null: false

      t.timestamps
    end
  end
end
