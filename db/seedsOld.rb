# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)


  
busses=[
  
  {:bus_route_id => 108, :route_type => "E", :route_number => 41},
  {:bus_route_id => 109, :route_type => "D", :route_number => 41},
  {:bus_route_id => 110, :route_type => "", :route_number => 41},
  {:bus_route_id => 111, :route_type => "ED", :route_number =>70},
  {:bus_route_id => 112, :route_type => "E", :route_number => 71},
  {:bus_route_id => 113, :route_type => "E", :route_number => 72},
  {:bus_route_id => 114, :route_type => "", :route_number => 73},
  {:bus_route_id => 115, :route_type => "", :route_number => 74},
  {:bus_route_id => 116, :route_type => "", :route_number => 75},
  {:bus_route_id => 117, :route_type => "D", :route_number => 67},
  {:bus_route_id => 118, :route_type => "E", :route_number => 301}
  
  ]

defaultstops = [
  {:bus_route_id => 109, :scheduled_datetime => "01/31/2011 17:09"},
  {:bus_route_id => 109, :scheduled_datetime => "01/31/2011 17:27"},
  {:bus_route_id => 109, :scheduled_datetime => "01/31/2011 17:41"},
  {:bus_route_id => 109, :scheduled_datetime => "01/31/2011 17:58"},
  {:bus_route_id => 109, :scheduled_datetime => "01/31/2011 18.10"},
  {:bus_route_id => 111, :scheduled_datetime => "01/31/2011 17.01"},
  {:bus_route_id => 111, :scheduled_datetime => "01/31/2011 17.31"},
  {:bus_route_id => 111, :scheduled_datetime => "01/31/2011 18:01"},
  {:bus_route_id => 111, :scheduled_datetime => "01/31/2011 18:42"},
  {:bus_route_id => 111, :scheduled_datetime => "01/31/2011 19:02"},
  {:bus_route_id => 111, :scheduled_datetime => "01/31/2011 19:32"},
  {:bus_route_id => 117, :scheduled_datetime => "01/31/2011 17:01"},
  {:bus_route_id => 117, :scheduled_datetime => "01/31/2011 17:23"},
  {:bus_route_id => 117, :scheduled_datetime => "01/31/2011 17:45"}
  ]
  
busstops = [
  {:stop_id => 1, :longitude => 47.001, :latitude => 122.009},
  {:stop_id => 2, :longitude => 47.011, :latitude => 122.019},
  {:stop_id => 3, :longitude => 47.43, :latitude => 122.312},
  {:stop_id => 4, :longitude => 47.501, :latitude => 122.010},
  {:stop_id => 5, :longitude => 47.2, :latitude => 122.901},
  {:stop_id => 6, :longitude => 47.544, :latitude => 122.100},
  {:stop_id => 7, :longitude => 47.801, :latitude => 122.211},
  {:stop_id => 8, :longitude => 47.9, :latitude => 122.344},
  {:stop_id => 9, :longitude => 47.00918, :latitude => 122.912},
  {:stop_id => 10, :longitude => 47.919, :latitude => 122.8015},
  ]
BusRoute.create(busses);
BusStop.create(busstops);
DefaultSchedule.create(defaultstops);

