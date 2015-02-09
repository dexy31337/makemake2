class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.references :quote, index: true
      t.references :maker, index: true

      t.timestamps null: false
    end
    add_foreign_key :jobs, :quotes
    add_foreign_key :jobs, :makers
  end
end
