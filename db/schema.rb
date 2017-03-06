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

ActiveRecord::Schema.define(version: 20170202020351) do

  create_table "ciphers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "bag_id",                    null: false
    t.string  "word",           limit: 13
    t.string  "word_unstemmed", limit: 15
    t.index ["bag_id"], name: "bag_id", unique: true, using: :btree
  end

  create_table "codes", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "bag_id",                    default: 0, null: false
    t.string  "word_unstemmed", limit: 15
  end

  create_table "details", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "tid",         limit: 18
    t.string "artist",      limit: 50
    t.string "title",       limit: 150
    t.string "mxm_tid",     limit: 7
    t.string "artist_name", limit: 50
    t.string "title_name",  limit: 50
  end

  create_table "song1s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "tid"
    t.string   "mxmid"
    t.string   "lyrics_hash"
    t.string   "artist"
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "songs", primary_key: "tid", id: :string, limit: 18, default: "", collation: "utf8_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "mxmid",       limit: 7,   collation: "utf8_general_ci"
    t.string "lyrics_hash", limit: 800, collation: "utf8_general_ci"
    t.string "artist",      limit: 50,  collation: "utf8_general_ci"
    t.string "title",       limit: 150, collation: "utf8_general_ci"
  end

  create_table "songzers", primary_key: "tid", id: :string, limit: 18, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "mxmid",       limit: 7
    t.string "lyrics_hash", limit: 800
  end

  create_table "stems", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "word",           limit: 15
    t.string "word_unstemmed", limit: 15
  end

end
