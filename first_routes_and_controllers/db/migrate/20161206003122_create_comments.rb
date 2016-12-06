class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title, null: false
      t.references :author_id, polymorphic: true, index: true

      t.timestamps
    end
  end
end
