class CreateBusRoutes < ActiveRecord::Migration
  def self.up
    create_table :bus_routes do |t|
      t.integer :bus_route_id
      t.string :route_type
      t.integer :route_number

      t.timestamps
    end
  end
  
  def self.down
    drop_table :bus_routes
  end
end
