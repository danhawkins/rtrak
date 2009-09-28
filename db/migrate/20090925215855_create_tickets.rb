class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.integer :priority_id
      t.integer :stage_id
      t.integer :state_id
      t.integer :milestone_id
      t.integer :owner_id
      t.integer :parent_id
      t.integer :ticket_type_id
      t.timestamps
    end
    
    add_index :tickets, :priority_id
    add_index :tickets, :stage_id
    add_index :tickets, :state_id
    add_index :tickets, :milestone_id
    add_index :tickets, :owner_id
    add_index :tickets, :parent_id
    add_index :tickets, :ticket_type_id
  end
  
  def self.down
    drop_table :tickets
  end
end
