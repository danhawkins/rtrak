class CreateMilestones < ActiveRecord::Migration
  def self.up
    create_table :milestones do |t|
      t.string :name
      t.date :start_date
      t.date :due_date
      t.date :end_date
      t.text :goals
      t.timestamps
    end
  end
  
  def self.down
    drop_table :milestones
  end
end
