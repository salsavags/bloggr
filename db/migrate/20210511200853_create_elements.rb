class CreateElements < ActiveRecord::Migration[6.1]
  def change
    create_table :elements do |t|
      t.string :element_type
      t.text :context
      t.references :post, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
