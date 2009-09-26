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
  end
  
  def self.down
    drop_table :tickets
  end
end
