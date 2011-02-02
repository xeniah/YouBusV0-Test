# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110131224359) do

  create_table "bus_routes", :force => true do |t|
    t.integer  "bus_route_id"
    t.string   "route_type"
    t.integer  "route_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bus_stops", :force => true do |t|
    t.integer  "stop_id"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "check_ins", :force => true do |t|
    t.integer  "bus_route_id"
    t.date     "checkin_datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "default_schedules", :force => true do |t|
    t.integer  "bus_route_id"
    t.datetime "scheduled_datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "route_stops", :force => true do |t|
    t.integer  "bus_route_id"
    t.integer  "stop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
