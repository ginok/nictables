class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.references :src, index: true
      t.references :dst, index: true
      t.integer :src_port
      t.integer :dst_port
      t.boolean :src_port_any, default: true
      t.boolean :dst_port_any, default: false

      t.timestamps
    end
  end
end
