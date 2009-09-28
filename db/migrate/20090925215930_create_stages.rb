class CreateStages < ActiveRecord::Migration
  def self.up
    create_table :stages do |t|
      t.string :name
      t.string :colour
      t.timestamps
    end
    
    add_index :stages, :id
  end
  
  def self.down
    drop_table :stages
  end
end
