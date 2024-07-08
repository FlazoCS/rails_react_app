# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_06_193047) do
  create_table "chat_transcripts", force: :cascade do |t|
    t.integer "chat_id"
    t.integer "msg_section_id"
    t.integer "case_id"
    t.integer "officer_id"
    t.string "user"
    t.integer "MOP_number"
    t.text "message"
    t.string "topic"
    t.string "url"
    t.datetime "time"
    t.boolean "isAudited"
    t.string "attachment_type"
    t.integer "attachment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachment_type", "attachment_id"], name: "index_chat_transcripts_on_attachment"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
