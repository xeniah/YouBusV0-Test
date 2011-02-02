# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

require "rexml/document"
include REXML

def read_file(filename)
  result = [];
  counter = 0;
  words = Array.new;
  
  source = File.open(filename);
  source.readlines.each { |line|
   if counter== 0
      words = line.split(',');    
   else
      #puts "\n\nReading values!"
      values = line.split(',');
      h = Hash.new;
      index = 0;
      words.each {|w|      
          h[w.chomp] = values[index];
          index+=1; 
        }
      result << h;  
    end
    counter +=1;    
  }
  
  result;
end



routes = [];
defaultstops = [];
stops = [];

routes_filename = 'db/google_transit/routes.txt'
stops_filename = 'db/google_transit/stops.txt'
routes_hash = read_file(routes_filename);
stops_hash = read_file(stops_filename)
routes_hash.each {|h| 
  routes << {:bus_route_id => h["route_id"].to_i, :route_type => "", :route_number => h["route_short_name"]} ;
}
stops_hash.each {|h| 
  stops << {:stop_id => h["stop_id"].to_i, :longitude => h["stop_lon"], :latitude => h["stop_lat"]} ;
}

BusRoute.create(routes);
BusStop.create(stops);




