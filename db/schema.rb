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

ActiveRecord::Schema.define(version: 20170427110705) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "ancestry"
    t.index ["ancestry"], name: "index_categories_on_ancestry", using: :btree
  end

  create_table "manufacturers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "manufacturer_entity_name"
    t.string   "manufacturer_mapping_id"
  end

  create_table "product_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_variant_id"
    t.integer  "variant_value_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["product_variant_id"], name: "index_product_details_on_product_variant_id", using: :btree
    t.index ["variant_value_id"], name: "index_product_details_on_variant_value_id", using: :btree
  end

  create_table "product_variants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.string   "product_varient_name"
    t.integer  "sku"
    t.float    "price",                limit: 24
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["product_id"], name: "index_product_variants_on_product_id", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "vertical_id"
    t.integer  "category_id"
    t.integer  "manufacturer_id"
    t.string   "ucode"
    t.string   "qty_per_pack"
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["manufacturer_id"], name: "index_products_on_manufacturer_id", using: :btree
    t.index ["vertical_id"], name: "index_products_on_vertical_id", using: :btree
  end

  create_table "variant_values", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "value"
    t.integer  "Variant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Variant_id"], name: "index_variant_values_on_Variant_id", using: :btree
  end

  create_table "variants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "variant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verticals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "products", "categories"
  add_foreign_key "products", "manufacturers"
  add_foreign_key "products", "verticals"
end
