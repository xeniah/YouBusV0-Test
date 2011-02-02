class CreateDefaultSchedules < ActiveRecord::Migration
  def self.up
    create_table :default_schedules do |t|
      t.integer :bus_route_id
      t.datetime :scheduled_datetime

      t.timestamps
    end
  end

  def self.down
    drop_table :default_schedules
  end
end
