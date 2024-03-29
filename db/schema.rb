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

ActiveRecord::Schema.define(version: 2019_04_18_045455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "camions", force: :cascade do |t|
    t.decimal "peso_carga"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "volumen_cargar"
    t.integer "equipo_cargar"
    t.integer "condicion_vial"
    t.integer "condicion_ambiental"
    t.integer "condicion_geografica"
    t.integer "tipo_carga"
    t.integer "clase_carga"
    t.integer "estibado_carga"
    t.integer "peso_kilometro"
    t.decimal "peso_kilome"
    t.decimal "peso_tonelada"
    t.decimal "peso_hora"
    t.decimal "gasto_financ"
    t.decimal "cifra_negocio"
    t.decimal "contingencia_venta"
    t.integer "promocion_venta"
    t.integer "contingencia_administrativa"
    t.integer "contingencia_operacional"
    t.integer "contingencia_produccion"
  end

  create_table "costos_fijos", force: :cascade do |t|
    t.integer "cantidad_movimiento_mensual"
    t.integer "frecuencia_movimiento"
    t.integer "multiplividad_tiempo_movimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "costos_marginals", force: :cascade do |t|
    t.decimal "gasto_finaciero"
    t.decimal "cifra_negocio"
    t.decimal "promocion_venta"
    t.decimal "contingencia_administrativa"
    t.decimal "contingencia_operacional"
    t.decimal "contingencia_produccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "costos_variables", force: :cascade do |t|
    t.integer "localidad_logistica"
    t.integer "localidad_consolidado"
    t.integer "localidad_stacking"
    t.decimal "valor_peajes"
    t.decimal "vitaico_kilometros"
    t.decimal "servicio_kilometro"
    t.integer "sueldo_conductor"
    t.decimal "porcentaje_conductor"
    t.integer "horas_logistica"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factores_fluctuantes", force: :cascade do |t|
    t.decimal "peso_carga"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "volumen_carga"
    t.integer "equipos_carga"
    t.decimal "condiciones_viales"
    t.integer "condiciones_ambientales"
    t.integer "condiciones_geograficas"
    t.integer "tipo_carga"
    t.integer "estibado_carga"
  end

  create_table "tarifa_diferidas", force: :cascade do |t|
    t.decimal "peso_kilometro"
    t.decimal "peso_tonelada"
    t.decimal "peso_hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tarifa_hora_logisticas", force: :cascade do |t|
    t.decimal "valor_dolar"
    t.integer "variacion_inversion"
    t.integer "variacion_mano_obra"
    t.decimal "variacion_materia_prima"
    t.decimal "varicion_financiera"
    t.decimal "nivel_utilidades"
    t.decimal "impuestos_derechos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.string "tipo"
    t.string "marca"
    t.string "patente"
    t.string "año"
    t.string "modelo"
    t.string "nombre_chofer"
    t.string "dueno"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
