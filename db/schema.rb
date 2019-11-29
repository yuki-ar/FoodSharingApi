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

ActiveRecord::Schema.define(version: 20191119070000) do

  create_table "commitment_space_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "image"
    t.bigint "commitment_space_id"
    t.index ["commitment_space_id"], name: "index_commitment_space_images_on_commitment_space_id"
  end

  create_table "commitment_spaces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "content"
    t.bigint "shop_id"
    t.index ["shop_id"], name: "index_commitment_spaces_on_shop_id"
  end

  create_table "item_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "image"
    t.bigint "item_id"
    t.index ["item_id"], name: "index_item_images_on_item_id"
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", null: false
    t.bigint "shop_id"
    t.index ["shop_id"], name: "index_items_on_shop_id"
  end

  create_table "purchased_histories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id", default: 1, null: false
    t.integer "shop_id", null: false
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_purchased_histories_on_item_id"
    t.index ["shop_id"], name: "index_purchased_histories_on_shop_id"
    t.index ["user_id"], name: "index_purchased_histories_on_user_id"
  end

  create_table "shop_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "image"
    t.bigint "shop_id"
    t.index ["shop_id"], name: "index_shop_images_on_shop_id"
  end

  create_table "shop_reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "reviewStar", null: false
    t.string "review", null: false
    t.integer "user_id", default: 1, null: false
    t.bigint "shop_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shop_reviews_on_shop_id"
    t.index ["user_id"], name: "index_shop_reviews_on_user_id"
  end

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.string "description"
    t.integer "genre", null: false
    t.integer "averagePrice"
    t.integer "businessHoursStart"
    t.integer "businessHoursEnd"
    t.string "adress", null: false
    t.string "url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.index ["reset_password_token"], name: "index_shops_on_reset_password_token", unique: true
  end

  add_foreign_key "commitment_space_images", "commitment_spaces"
  add_foreign_key "commitment_spaces", "shops"
  add_foreign_key "item_images", "items"
  add_foreign_key "shop_images", "shops"
  add_foreign_key "shop_reviews", "shops"
end
