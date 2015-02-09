class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :name
      t.references :order, index: true
      t.references :maker, index: true
      t.references :job, index: true
      t.string :state, :default=>'new'

      t.timestamps null: false
    end
    add_foreign_key :quotes, :orders
    add_foreign_key :quotes, :makers
  end
end
