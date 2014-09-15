class CreateInterfaces < ActiveRecord::Migration
  def change
    create_table :interfaces do |t|
      t.string :address
      t.string :name
      t.integer :port

      t.timestamps
    end
  end
end
