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

ActiveRecord::Schema.define(version: 2019_04_09_062635) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "casas", force: :cascade do |t|
    t.integer "user_id"
    t.string "estado"
    t.string "municipio"
    t.string "colonia"
    t.string "calle"
    t.string "tipo_de_propiedad"
    t.integer "m2terreno"
    t.integer "m2construccion"
    t.integer "baños"
    t.integer "habitaciones"
    t.string "entorno"
    t.integer "precioask"
    t.boolean "inmobiliaria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_casas_on_user_id"
  end

  create_table "mi_propiedads", force: :cascade do |t|
    t.integer "user_id"
    t.string "estado"
    t.string "municipio"
    t.string "colonia"
    t.string "calle"
    t.integer "numero"
    t.string "tipo_de_propiedad"
    t.integer "m2terreno"
    t.integer "m2construccion"
    t.integer "baños"
    t.integer "habitaciones"
    t.string "entorno"
    t.string "condiciones_de_la_propiedad"
    t.integer "precio_al_que_adquiri"
    t.integer "año_al_que_adquiri"
    t.boolean "en_venta"
    t.string "plazo_de_venta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mi_propiedads_on_user_id"
  end

  create_table "reporte_mi_propiedads", force: :cascade do |t|
    t.integer "mi_propiedad_id"
    t.string "tipo_de_demanda"
    t.integer "años_de_analisis"
    t.integer "plusvalia_historica"
    t.integer "proyeccion_plusvalia"
    t.integer "años_de_proyeccion"
    t.integer "plusvalia_colonia"
    t.integer "plusvalia_municipio"
    t.integer "plusvalia_estatal"
    t.integer "precio_midprice"
    t.integer "precio_bidlow"
    t.integer "precio_askhigh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mi_propiedad_id"], name: "index_reporte_mi_propiedads_on_mi_propiedad_id"
  end

  create_table "tweets", force: :cascade do |t|
    t.integer "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tweets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
