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

ActiveRecord::Schema.define(:version => 1) do

  create_table "entries", :force => true do |t|
    t.string  "col1head"
    t.string  "col2head"
    t.string  "col3head"
    t.string  "col4head"
    t.integer "this_rownum",      :limit => 11, :null => false
    t.integer "immed_par_rownum", :limit => 11
    t.integer "ult_par_rownum",   :limit => 11, :null => false
    t.integer "lft_rownum",       :limit => 11, :null => false
    t.integer "rgt_rownum",       :limit => 11, :null => false
    t.integer "pyrbrails",        :limit => 11, :null => false
    t.string  "releasenum"
    t.text    "descrip"
    t.text    "descrip_trunc"
    t.text    "urls"
    t.integer "number_urls",      :limit => 11
    t.integer "len_desc",         :limit => 11
    t.float   "ratio_len"
    t.integer "ult_par_id",       :limit => 11
    t.integer "parent_id",        :limit => 11
    t.integer "lft",              :limit => 11
    t.integer "rgt",              :limit => 11
    t.string  "random17"
    t.integer "allblank",         :limit => 11
  end

  add_index "entries", ["random17"], :name => "index_entries_on_random17"

end
