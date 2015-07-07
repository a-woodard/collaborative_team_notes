class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :title
      t.string :image
      t.text :content

      t.timestamps null: false
    end
  end
end
