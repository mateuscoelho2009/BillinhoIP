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

ActiveRecord::Schema.define(version: 2018_09_15_172928) do

  create_table "genders", force: :cascade do |t|
    t.string "name", limit: 50
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "cnpj", limit: 50
    t.integer "kind_id"
  end

  create_table "kinds", force: :cascade do |t|
    t.string "name", limit: 50
  end

  create_table "matriculations", force: :cascade do |t|
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "name", limit: 50
  end

  create_table "students", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "cpf", limit: 50
    t.integer "gender_id"
    t.integer "payment_method_id"
    t.date "birth_date"
    t.integer "cellphone"
  end

end
