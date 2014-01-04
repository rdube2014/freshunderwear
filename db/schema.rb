# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140104175315) do

  create_table "homepages", force: true do |t|
  end

  create_table "requests", force: true do |t|
    t.integer "request_number"
    t.integer "user_number"
    t.date    "created_date"
    t.date    "needed_date"
    t.time    "time_needed"
    t.string  "delivery_city"
    t.string  "delivery_address"
    t.text    "delivery_instructions"
    t.text    "request_text"
    t.string  "underwear_type"
    t.string  "underwear_size"
    t.string  "underwear_color"
    t.integer "underwear_quantity"
    t.string  "undershirt_type"
    t.string  "undershirt_size"
    t.string  "undershirt_color"
    t.string  "undershirt_quantity"
    t.string  "sock_type"
    t.string  "sock_size"
    t.string  "sock_color"
    t.string  "sock_quantity"
  end

  create_table "users", force: true do |t|
    t.integer "user_number"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "home_city"
    t.string  "home_state"
    t.string  "home_country"
    t.string  "email"
    t.string  "user_name"
    t.string  "password"
    t.string  "security_question"
    t.string  "security_answer"
    t.string  "photo_link"
  end

end
