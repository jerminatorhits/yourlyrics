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

ActiveRecord::Schema.define(version: 20170131220247) do

  create_table "ciphers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "bag_id",            null: false
    t.string  "word",   limit: 13
    t.index ["bag_id"], name: "bag_id", unique: true, using: :btree
  end

  create_table "extra", primary_key: "tid", id: :string, limit: 18, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "mxmid",       limit: 7
    t.string "lyrics_hash", limit: 800
  end

  create_table "songs", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "tid",    limit: 18,  collation: "utf8_general_ci"
    t.string "mxmid",  limit: 7,   collation: "utf8_general_ci"
    t.string "artist", limit: 50,  collation: "utf8_general_ci"
    t.string "title",  limit: 150, collation: "utf8_general_ci"
  end

end
