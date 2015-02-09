class CreateMakers < ActiveRecord::Migration
  def change
    create_table :makers do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :makers, :users
  end
end
