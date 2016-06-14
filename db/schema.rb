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

ActiveRecord::Schema.define(version: 20160614000528) do

  create_table "bills", force: :cascade do |t|
    t.decimal  "valor",                     precision: 10
    t.string   "titulo",        limit: 255
    t.string   "descrição",     limit: 255
    t.decimal  "ajuste",                    precision: 10
    t.integer  "parcelas",      limit: 4
    t.integer  "mInicio",       limit: 4
    t.integer  "mesFinal",      limit: 4
    t.boolean  "saque"
    t.boolean  "transferencia"
    t.boolean  "cartão"
    t.boolean  "internet"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.decimal  "valor",                  precision: 10
    t.boolean  "dividido"
    t.string   "ajuste",     limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "mounth",     limit: 4
  end

end