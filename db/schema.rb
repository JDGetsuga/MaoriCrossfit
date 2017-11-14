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

ActiveRecord::Schema.define(version: 20171114040447) do

  create_table "classrecords", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "membership_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "classrecords", ["membership_id"], name: "index_classrecords_on_membership_id"
  add_index "classrecords", ["user_id"], name: "index_classrecords_on_user_id"

  create_table "clients", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cedula"
    t.string   "genero"
    t.string   "telefono"
    t.string   "email"
    t.date     "nacimiento"
    t.text     "direccion"
    t.string   "ciudad"
    t.string   "pais"
    t.string   "provincia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detail_sales", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "cantidad"
    t.decimal  "precio"
    t.decimal  "descuento"
    t.decimal  "subtotal"
    t.string   "tipo"
    t.integer  "headersale_id"
    t.integer  "item_id"
    t.integer  "membership_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "detail_sales", ["headersale_id"], name: "index_detail_sales_on_headersale_id"
  add_index "detail_sales", ["item_id"], name: "index_detail_sales_on_item_id"
  add_index "detail_sales", ["membership_id"], name: "index_detail_sales_on_membership_id"
  add_index "detail_sales", ["user_id"], name: "index_detail_sales_on_user_id"

  create_table "functions", force: :cascade do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.string   "tipo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "headersales", force: :cascade do |t|
    t.date     "fechaventa"
    t.integer  "client_id"
    t.time     "horaventa"
    t.integer  "user_id"
    t.decimal  "iva"
    t.decimal  "totalefectivo"
    t.decimal  "totaltarjeta"
    t.decimal  "total"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "headersales", ["client_id"], name: "index_headersales_on_client_id"
  add_index "headersales", ["user_id"], name: "index_headersales_on_user_id"

  create_table "items", force: :cascade do |t|
    t.string   "nombre"
    t.decimal  "preciocompra"
    t.decimal  "precioventa"
    t.integer  "cantidad"
    t.integer  "cantidadminima"
    t.decimal  "ganancia"
    t.string   "tipo"
    t.integer  "supplier_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "items", ["supplier_id"], name: "index_items_on_supplier_id"

  create_table "lessons", force: :cascade do |t|
    t.date     "fechaactual"
    t.integer  "user_id"
    t.time     "horainicio"
    t.time     "horafin"
    t.integer  "service_id"
    t.integer  "capacidad"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lessons", ["service_id"], name: "index_lessons_on_service_id"
  add_index "lessons", ["user_id"], name: "index_lessons_on_user_id"

  create_table "memberships", force: :cascade do |t|
    t.integer  "client_id"
    t.date     "fechainicio"
    t.date     "fechaexpiracion"
    t.integer  "service_id"
    t.integer  "rate_id"
    t.integer  "entradasrestantes"
    t.string   "estado"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "memberships", ["client_id"], name: "index_memberships_on_client_id"
  add_index "memberships", ["rate_id"], name: "index_memberships_on_rate_id"
  add_index "memberships", ["service_id"], name: "index_memberships_on_service_id"

  create_table "rates", force: :cascade do |t|
    t.string   "nombre"
    t.decimal  "precio"
    t.decimal  "descuento"
    t.integer  "entradas"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rates", ["service_id"], name: "index_rates_on_service_id"

  create_table "services", force: :cascade do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "titulo"
    t.string   "razonsocial"
    t.string   "telefono"
    t.text     "direccion"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.text     "direccion"
    t.string   "cedula"
    t.date     "fechanacimiento"
    t.string   "telefono"
    t.boolean  "estado"
    t.date     "fechacontrato"
    t.date     "fechafincontrato"
    t.boolean  "admin"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "cargo"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
