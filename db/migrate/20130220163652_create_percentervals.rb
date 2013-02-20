class CreatePercentervals < ActiveRecord::Migration
  def change
    create_table :percentervals do |t|
      t.date :date
      t.string :name
      t.decimal :hours

      t.timestamps
    end
  end
end
