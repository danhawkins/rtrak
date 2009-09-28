class CreateTicketTypes < ActiveRecord::Migration
  def self.up
    create_table :ticket_types do |t|
      t.string :name
      t.timestamps
    end
    
    add_index :ticket_types, :id
  end
  
  def self.down
    drop_table :ticket_types
  end
end
