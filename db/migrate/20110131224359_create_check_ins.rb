class CreateCheckIns < ActiveRecord::Migration
  def self.up
    create_table :check_ins do |t|
      t.integer :bus_route_id
      t.date :checkin_datetime

      t.timestamps
    end
  end

  def self.down
    drop_table :check_ins
  end
end
