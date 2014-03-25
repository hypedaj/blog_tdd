class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user, index: true, null: false
      t.references :post, index: true, null: false
      t.text :message, null: false

      t.timestamps
    end
  end
end
