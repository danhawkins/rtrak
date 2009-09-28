class CreatePriorities < ActiveRecord::Migration
  def self.up
    create_table :priorities do |t|
      t.string :name
      t.integer :order
      t.string :colour
      t.timestamps
    end
    
    add_index :priorities, :id
  end
  
  def self.down
    drop_table :priorities
  end
end
