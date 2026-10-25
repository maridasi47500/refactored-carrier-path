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

ActiveRecord::Schema[8.1].define(version: 2026_10_25_164511) do
  create_table "Argent", force: :cascade do |t|
    t.integer "user_id"
    t.string "mois", limit: 15, null: false
    t.integer "annee", limit: 4, null: false
    t.integer "paye", limit: 11, default: 0, null: false
    t.integer "apayer", limit: 11, default: 18000, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Depense", force: :cascade do |t|
    t.integer "transaction_id"
    t.integer "user_id"
    t.integer "somme", limit: 11, null: false
    t.text "motif", null: false
    t.date "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Menu", force: :cascade do |t|
    t.string "menu", limit: 25, null: false
    t.integer "prix", limit: 11, default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Repas", force: :cascade do |t|
    t.integer "transaction_id"
    t.integer "user_id"
    t.integer "somme", limit: 11, null: false
    t.date "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Transaction", force: :cascade do |t|
    t.integer "somme", limit: 11, null: false
    t.datetime "date", precision: nil, null: false
    t.string "motif", limit: 50, null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "a_propos_delles", force: :cascade do |t|
    t.integer "person_id"
    t.integer "post_id"
  end

  create_table "aboutsomeonegossips", id: :integer, default: nil, force: :cascade do |t|
    t.text "content_fr"
    t.integer "reaction_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.boolean "true"
    t.text "content_en"
    t.text "content_de"
  end

  create_table "acquaintances", id: :integer, default: nil, force: :cascade do |t|
    t.integer "person_id"
    t.integer "post_id"
  end

  create_table "acquaintances_of_my_acquaintances", force: :cascade do |t|
    t.integer "usurpation_id"
    t.integer "person_id"
    t.integer "post_id"
  end

  create_table "actions", force: :cascade do |t|
    t.string "name_en"
    t.string "name_fr"
    t.string "name_de"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "image"
  end

  create_table "actionshavethingsbyhearts", force: :cascade do |t|
    t.integer "taskaction_id"
    t.integer "categorything_id"
  end

  create_table "actionssailorgrouptasks", force: :cascade do |t|
    t.integer "sailorgrouptask_id"
    t.integer "taskaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "activetasks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "task_id"
  end

  create_table "additionalevents", force: :cascade do |t|
    t.integer "mainevent_id"
    t.integer "otherevent_id"
  end

  create_table "additionaltasks", force: :cascade do |t|
    t.integer "maintask_id"
    t.integer "othertask_id"
    t.integer "event_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "city_id"
    t.integer "country_id"
    t.integer "state_id"
    t.text "address"
    t.integer "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admissionfiles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aidememoirehavebigrelations", force: :cascade do |t|
    t.integer "relation_id"
    t.integer "aidememoire_id"
  end

  create_table "aidememoirehavemiddlerelations", force: :cascade do |t|
    t.integer "relation_id"
    t.integer "aidememoire_id"
  end

  create_table "aidememoirehaverelations", force: :cascade do |t|
    t.integer "aidememoire_id"
    t.integer "relation_id"
  end

  create_table "aidememoires", force: :cascade do |t|
    t.integer "recordingphrase_id"
    t.integer "recordingword_id"
  end

  create_table "albums", force: :cascade do |t|
    t.integer "person_id"
    t.string "title"
  end

  create_table "albumshavephotos", force: :cascade do |t|
    t.integer "album_id"
    t.integer "photo_id"
  end

  create_table "aliases", force: :cascade do |t|
    t.integer "user_id"
    t.integer "person_id"
  end

  create_table "anaphors", force: :cascade do |t|
    t.string "name"
    t.text "description_fr"
    t.text "description_en"
    t.text "description_de"
    t.integer "epoch_id"
  end

  create_table "anaphors_events", force: :cascade do |t|
    t.integer "anaphor_id"
    t.integer "event_id"
    t.integer "task_id"
  end

  create_table "anaphors_people", force: :cascade do |t|
    t.integer "anaphor_id"
    t.integer "person_id"
    t.integer "sailor_id"
  end

  create_table "anaphors_photos", force: :cascade do |t|
    t.integer "anaphor_id"
    t.integer "photo_id"
  end

  create_table "anaphors_posts", force: :cascade do |t|
    t.integer "anaphor_id"
    t.integer "post_id"
  end

  create_table "anaphors_tasks", force: :cascade do |t|
    t.integer "anaphor_id"
    t.integer "task_id"
  end

  create_table "answerinvites", force: :cascade do |t|
    t.integer "invite_id"
    t.integer "person_id"
    t.text "content"
  end

  create_table "answerpeople", force: :cascade do |t|
    t.integer "question_id"
    t.integer "answer_id"
    t.integer "user_id"
    t.integer "person_id"
  end

  create_table "answers", force: :cascade do |t|
    t.integer "question_id"
    t.string "text"
    t.boolean "good"
  end

  create_table "arguments", force: :cascade do |t|
    t.string "name"
  end

  create_table "argumentsposts", force: :cascade do |t|
    t.integer "argument_id"
    t.integer "post_id"
  end

  create_table "armygrades", force: :cascade do |t|
    t.string "nom"
    t.string "appellation"
    t.string "image"
    t.string "femme"
  end

  create_table "artistpeople", force: :cascade do |t|
    t.integer "person_id"
    t.integer "artobject_id"
    t.integer "user_id"
    t.integer "practice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "song_id"
  end

  create_table "attitudefilms", force: :cascade do |t|
    t.integer "attitude_id"
    t.integer "person_id"
    t.integer "film_id"
    t.integer "note"
    t.integer "user_id"
  end

  create_table "attitudehavefollowers", force: :cascade do |t|
    t.integer "attitude_id"
    t.integer "person_id"
  end

  create_table "attitudephotohavetickets", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "attitudephoto_id"
  end

  create_table "attitudephotos", force: :cascade do |t|
    t.datetime "start_at", precision: nil
    t.datetime "end_at", precision: nil
    t.string "title_fr"
    t.string "title_en"
    t.string "title_de"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attitudes", force: :cascade do |t|
    t.string "name"
    t.integer "post_id"
    t.integer "attitude_id"
    t.integer "thing_id"
    t.boolean "didit"
    t.string "image"
  end

  create_table "attitudeshavesailors", force: :cascade do |t|
    t.integer "attitude_id"
    t.integer "person_id"
  end

  create_table "attitudetakentasks", force: :cascade do |t|
    t.integer "torealizetask_id"
    t.integer "attitude_id"
    t.boolean "real"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attitudetvseries", force: :cascade do |t|
    t.integer "attitude_id"
    t.integer "person_id"
    t.integer "tvseries_id"
    t.integer "note"
    t.integer "user_id"
  end

  create_table "audioreviewshavebarcriteria", force: :cascade do |t|
    t.integer "recordingreview_id"
    t.integer "barcriterion_id"
    t.integer "score"
  end

  create_table "audioreviewshavescorecriteria", force: :cascade do |t|
    t.integer "recordingreview_id"
    t.integer "scorecriterion_id"
    t.integer "score"
  end

  create_table "authortables", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
  end

  create_table "bacseries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "barattempts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sample_id"
    t.integer "bar_id"
    t.integer "person_id"
  end

  create_table "barattemptshaverecordings", force: :cascade do |t|
    t.integer "barattempt_id"
    t.integer "recordingreview_id"
  end

  create_table "barcriteria", force: :cascade do |t|
    t.text "description"
    t.integer "bar_id"
    t.integer "gooduser_id"
  end

  create_table "barreviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "barattempt_id"
    t.text "description"
  end

  create_table "barreviewshavebarcriteria", force: :cascade do |t|
    t.integer "barcriteria_id"
    t.integer "barreview_id"
    t.integer "score"
  end

  create_table "barreviewshavescorecriteria", force: :cascade do |t|
    t.integer "scorecriteria_id"
    t.integer "barreview_id"
    t.integer "score"
  end

  create_table "barshavekeys", force: :cascade do |t|
    t.integer "bar_id"
    t.integer "musicalkey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "barshavemusicalinstruments", force: :cascade do |t|
    t.integer "bar_id"
    t.integer "musicalinstrument_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "beaches", force: :cascade do |t|
    t.integer "address_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "beacheshaveaidememoires", force: :cascade do |t|
    t.integer "beach_id"
    t.integer "aidememoire_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "beachstrassen", force: :cascade do |t|
    t.integer "rue_id"
    t.integer "beach_id"
  end

  create_table "becausetasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "othertask_id"
  end

  create_table "betterpeople", force: :cascade do |t|
    t.integer "twoperson_id"
    t.integer "attitude_id"
    t.integer "user_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "summary"
  end

  create_table "candlelightdinners", force: :cascade do |t|
    t.date "date"
    t.integer "tomorrow_morning_task"
    t.integer "person_id"
    t.integer "otherperson_id"
  end

  create_table "cantbelieve", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.integer "note"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "collections_people", force: :cascade do |t|
    t.integer "collection_id"
    t.integer "person_id"
  end

  create_table "collections_posts", force: :cascade do |t|
    t.integer "collection_id"
    t.integer "post_id"
  end

  create_table "collectionsfortasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "event_id"
    t.integer "collection_id"
  end

  create_table "colocataires", force: :cascade do |t|
    t.integer "person_id"
    t.integer "otherperson_id"
  end

  create_table "colocataireshavetasks", force: :cascade do |t|
    t.integer "colocataire_id"
    t.integer "task_id"
  end

  create_table "comicbooks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image"
  end

  create_table "commentrumeurs", force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "user_id"
    t.text "content"
  end

  create_table "comments", id: :integer, default: nil, force: :cascade do |t|
    t.string "text"
    t.integer "content_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments_contents", id: false, force: :cascade do |t|
    t.integer "content_id", null: false
    t.integer "comment_id", null: false
    t.index ["comment_id", "content_id"], name: "index_comments_contents_on_comment_id_and_content_id", unique: true
  end

  create_table "commenttasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "user_id"
    t.text "content"
  end

  create_table "companies", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "image"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companieshaveceos", force: :cascade do |t|
    t.integer "ceo_id"
    t.integer "job_id"
    t.integer "company_id"
    t.integer "user_id"
    t.integer "nationality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companieshavecustomers", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "customer_id"
    t.integer "company_id"
    t.integer "user_id"
    t.integer "nationality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companieshaveemployees", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "employer_id"
    t.integer "job_id"
    t.integer "company_id"
    t.integer "user_id"
    t.integer "nationality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "completetasks", force: :cascade do |t|
    t.integer "person_id"
    t.integer "user_id"
    t.integer "task_id"
    t.integer "otherperson_id"
    t.integer "emotion_id"
  end

  create_table "compohaverecipients", force: :cascade do |t|
    t.integer "person_id"
    t.integer "musicalcomposition_id"
    t.integer "surname_id"
  end

  create_table "composers", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["email"], name: "index_composers_on_email", unique: true
    t.index ["name"], name: "index_composers_on_name", unique: true
    t.index ["reset_password_token"], name: "index_composers_on_reset_password_token", unique: true
  end

  create_table "conditionnotneglectedtasks", force: :cascade do |t|
    t.integer "welldonesailorjob_id"
    t.integer "neglectedsailorjob_id"
  end

  create_table "conditionwelldonetasks", force: :cascade do |t|
    t.integer "sailorjob_id"
    t.integer "othersailorjob_id"
  end

  create_table "contents", id: :integer, default: nil, force: :cascade do |t|
    t.string "type"
    t.string "content_fr"
    t.integer "other_data_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_id"
    t.integer "lineid"
    t.text "content_en"
    t.text "content_de"
  end

  create_table "contents_photos", force: :cascade do |t|
    t.integer "content_id"
    t.integer "photo_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "mapicon"
  end

  create_table "couplethavecomposedcontents", force: :cascade do |t|
    t.integer "composedcontent_id"
    t.integer "couplet_id"
    t.integer "user_id"
    t.integer "musicalcomposition_id"
  end

  create_table "coupletshavecontents", force: :cascade do |t|
    t.string "couplet_id"
    t.string "content_id"
  end

  create_table "create_webpages", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currentjoboffers", force: :cascade do |t|
    t.string "largepic"
    t.string "smallpic"
    t.integer "place_id", null: false
    t.integer "field_id", null: false
    t.string "type_de_contrat"
    t.string "statut"
    t.string "salaire_annuel"
    t.string "temps_de_travail"
    t.string "duree_du_contrat"
    t.integer "job_id", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "person_id", null: false
    t.index ["field_id"], name: "index_currentjoboffers_on_field_id"
    t.index ["job_id"], name: "index_currentjoboffers_on_job_id"
    t.index ["person_id"], name: "index_currentjoboffers_on_person_id"
    t.index ["place_id"], name: "index_currentjoboffers_on_place_id"
  end

  create_table "currentprofilephotos", force: :cascade do |t|
    t.integer "profilepicture_id"
    t.integer "person_id"
  end

  create_table "detailtasks", force: :cascade do |t|
    t.integer "task_id"
    t.text "content"
  end

  create_table "displaygossips", force: :cascade do |t|
    t.integer "Gossipid"
    t.integer "Postid"
    t.string "Display"
  end

  create_table "dontlikerumeurs", force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "user_id"
  end

  create_table "dontliketask", force: :cascade do |t|
    t.integer "task_id"
    t.integer "user_id"
  end

  create_table "dontunderstandgossips", force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "user_id"
  end

  create_table "doubles", force: :cascade do |t|
    t.integer "person_id"
    t.integer "post_id"
    t.integer "double_id"
  end

  create_table "drinkremedieshavepeople", force: :cascade do |t|
    t.integer "remedieshavedrink_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinkthingtasks", force: :cascade do |t|
    t.integer "drink_id"
    t.integer "task_id"
    t.integer "person_id"
    t.integer "user_id"
    t.integer "qty"
  end

  create_table "ecartages", force: :cascade do |t|
    t.integer "person_id"
    t.integer "otherperson_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "from"
    t.string "to"
    t.string "content"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emails_events", force: :cascade do |t|
    t.integer "email_id"
    t.integer "event_id"
    t.integer "task_id"
  end

  create_table "emotions", id: :integer, default: nil, force: :cascade do |t|
    t.string "name_en"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name_fr"
    t.string "name_de"
  end

  create_table "epochs", id: :integer, default: nil, force: :cascade do |t|
    t.datetime "end_at", precision: nil
    t.datetime "start_at", precision: nil
    t.string "longitude"
    t.string "latitude"
    t.integer "city_id"
    t.integer "place_id"
    t.integer "state_id"
    t.string "address"
    t.string "name"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "type"
    t.string "zoom"
    t.string "image"
    t.text "description"
    t.string "event_type_id"
    t.string "done"
    t.string "idoit"
    t.integer "country_id"
    t.integer "nbtimes"
  end

  create_table "epochstudents", force: :cascade do |t|
    t.integer "person_id"
    t.integer "grade_id"
    t.integer "epoch_id"
  end

  create_table "event_types", force: :cascade do |t|
    t.string "name"
    t.integer "event_id"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", id: :integer, default: nil, force: :cascade do |t|
    t.datetime "end_at", precision: nil
    t.datetime "start_at", precision: nil
    t.string "longitude"
    t.string "latitude"
    t.integer "city_id"
    t.integer "place_id"
    t.integer "state_id"
    t.string "address"
    t.string "name_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.integer "zoom"
    t.string "image"
    t.string "description"
    t.integer "event_type_id"
    t.boolean "done", default: false
    t.boolean "idoit"
    t.integer "nbtimes"
    t.boolean "happened"
    t.string "name_fr"
    t.string "name_de"
  end

  create_table "events_events", force: :cascade do |t|
    t.integer "event_id"
    t.integer "task_id"
    t.integer "place_id"
    t.integer "otherplace_id"
  end

  create_table "events_google_requests", force: :cascade do |t|
    t.integer "event_id"
    t.integer "google_request_id"
    t.integer "task_id"
  end

  create_table "events_main_threads", force: :cascade do |t|
    t.integer "main_thread_id"
    t.integer "event_id"
    t.integer "task_id"
  end

  create_table "events_people", id: :integer, default: nil, force: :cascade do |t|
    t.integer "event_id"
    t.integer "person_id"
    t.integer "task_id"
    t.integer "place_id"
  end

  create_table "events_recordings", force: :cascade do |t|
    t.integer "event_id"
    t.integer "recording_id"
    t.integer "task_id"
  end

  create_table "events_tasks", force: :cascade do |t|
    t.integer "event_id"
    t.integer "task_id"
  end

  create_table "explaingossips", force: :cascade do |t|
    t.integer "fromsomeonegossip_id"
    t.integer "anaphor_id"
  end

  create_table "explainmygossips", force: :cascade do |t|
    t.integer "aboutsomeonegossip_id"
    t.integer "anaphor_id"
  end

  create_table "facebooksearches", force: :cascade do |t|
    t.integer "place_id"
    t.string "content"
  end

  create_table "facts", force: :cascade do |t|
    t.string "name"
  end

  create_table "facts_people", force: :cascade do |t|
    t.integer "fact_id"
    t.integer "person_id"
  end

  create_table "fakecomenttables", force: :cascade do |t|
    t.integer "fakecomment_id"
    t.integer "post_id"
  end

  create_table "fakecomments", force: :cascade do |t|
    t.string "author"
    t.text "content"
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "description"
  end

  create_table "findthebests", force: :cascade do |t|
    t.integer "olympicperson_id"
    t.integer "user_id"
    t.integer "winner"
  end

  create_table "findthemost", force: :cascade do |t|
    t.integer "betterperson_id"
    t.integer "themost"
    t.integer "user_id"
  end

  create_table "foodhavecountries", force: :cascade do |t|
    t.integer "dish_id"
    t.integer "country_id"
  end

  create_table "foodremedieshavepeople", force: :cascade do |t|
    t.integer "remedieshavefood_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foyertasks", force: :cascade do |t|
    t.integer "user1"
    t.integer "user2"
    t.string "task"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fromsomeonegossips", force: :cascade do |t|
    t.text "content"
    t.integer "reaction_id"
  end

  create_table "githubaccounts", force: :cascade do |t|
    t.string "nameowner"
    t.integer "owner_id"
    t.string "username"
  end

  create_table "githubrepos", force: :cascade do |t|
    t.string "reponame"
    t.integer "githubaccount_id"
  end

  create_table "google_requests", force: :cascade do |t|
    t.string "name"
    t.string "type"
  end

  create_table "google_requests_tasks", force: :cascade do |t|
    t.integer "google_request_id"
    t.integer "task_id"
  end

  create_table "googleresults", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "url"
    t.string "date"
  end

  create_table "googleresultsofgooglerequests", force: :cascade do |t|
    t.integer "google_request_id"
    t.integer "googleresult_id"
  end

  create_table "gossipaboutwhos", force: :cascade do |t|
    t.integer "aboutsomeonegossip_id"
    t.integer "person_id"
  end

  create_table "gossipnotaboutwhos", force: :cascade do |t|
    t.integer "aboutsomeonegossip_id"
    t.integer "person_id"
  end

  create_table "gossips", force: :cascade do |t|
    t.text "content"
    t.boolean "true"
  end

  create_table "gossipsafters", force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "reaction_id"
  end

  create_table "gossipsbefores", force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "reaction_id"
  end

  create_table "gossipsdurings", force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "reaction_id"
  end

  create_table "gossipsforposts", force: :cascade do |t|
    t.integer "aboutsomeonegossip_id"
    t.integer "post_id"
  end

  create_table "gossipsforpostsfromsomeones", force: :cascade do |t|
    t.integer "fromsomeonegossip_id"
    t.integer "post_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grouptasks", force: :cascade do |t|
    t.integer "task_id"
    t.string "title_fr"
    t.string "title_en"
    t.string "title_de"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hairstylisthabilleurtasks", force: :cascade do |t|
    t.integer "laundryjiramaperson_id"
    t.integer "laundryjiramasuperiorgradeperson_id"
  end

  create_table "heardrumeurs", force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "user_id"
  end

  create_table "hernothers", force: :cascade do |t|
    t.integer "person_id"
    t.integer "otherperson_id"
  end

  create_table "heroadventures", force: :cascade do |t|
    t.integer "story_id"
    t.integer "previousstoryevent_id"
    t.string "image"
    t.string "content_fr"
    t.string "content_en"
    t.string "content_de"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "heroattitudes", force: :cascade do |t|
    t.string "type"
    t.string "name_fr"
    t.string "name_en"
    t.string "name_de"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "historical_characters", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historicalevents", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "hthtvseries", force: :cascade do |t|
    t.integer "tvseries_id"
    t.integer "hackertask_id"
  end

  create_table "i18nphraseshavepeople", force: :cascade do |t|
    t.integer "person_id"
    t.integer "i18nphrase_id"
  end

  create_table "i18nphraseshavethings", force: :cascade do |t|
    t.integer "thing_id"
    t.integer "i18nphrase_id"
  end

  create_table "inloves", force: :cascade do |t|
    t.integer "person_id"
    t.integer "user_id"
    t.integer "otherperson_id"
    t.integer "intensity"
  end

  create_table "instructions", force: :cascade do |t|
    t.string "content_fr"
    t.string "content_en"
    t.string "content_de"
    t.integer "otherinstruction_id"
  end

  create_table "invitehavepeople", force: :cascade do |t|
    t.integer "person_id"
    t.integer "invite_id"
  end

  create_table "invitehavetasks", force: :cascade do |t|
    t.integer "invite_id"
    t.integer "task_id"
  end

  create_table "invites", force: :cascade do |t|
    t.string "namegroup"
    t.string "vipassname"
    t.string "image"
  end

  create_table "islands", force: :cascade do |t|
    t.integer "address_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "islandshavebeaches", force: :cascade do |t|
    t.integer "beach_id"
    t.integer "island_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jinglehaveaudiencemembers", force: :cascade do |t|
    t.integer "jingle_id"
    t.integer "person_id"
  end

  create_table "jinglehavesingers", force: :cascade do |t|
    t.integer "jingle_id"
    t.integer "singer_id"
  end

  create_table "jinglehavetasks", force: :cascade do |t|
    t.integer "jingle_id"
    t.integer "task_id"
  end

  create_table "jingles", id: :integer, default: nil, force: :cascade do |t|
    t.integer "person_id"
    t.string "name_fr"
    t.string "content_fr"
    t.string "name_de"
    t.string "name_en"
    t.string "name_it"
    t.string "content_de"
    t.string "content_en"
    t.string "content_it"
  end

  create_table "jingleshavereactions", force: :cascade do |t|
    t.integer "jingle_id"
    t.integer "reaction_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name_fr"
    t.string "name_en"
    t.string "name_de"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "jobusedstuffs", force: :cascade do |t|
    t.integer "thing_id"
    t.integer "job_id"
    t.integer "user_id"
    t.integer "use"
    t.integer "nb"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "locale"
  end

  create_table "langue_recordings", force: :cascade do |t|
    t.integer "language_id"
    t.integer "recording_id"
    t.integer "emotion_id"
  end

  create_table "laundrycaptains", force: :cascade do |t|
    t.integer "laundryjiramaperson_id"
    t.integer "laundryjiramasuperiorgradeperson_id"
  end

  create_table "laundryjiramapeople", force: :cascade do |t|
    t.integer "grade_id"
    t.integer "alias_id"
  end

  create_table "lesson_contents", force: :cascade do |t|
    t.string "type"
    t.string "content_fr"
    t.string "content_en"
    t.integer "lesson_id"
    t.string "content_de"
    t.integer "recordingfemme_id"
    t.integer "recordinghomme_id"
  end

  create_table "lesson_languages", force: :cascade do |t|
    t.integer "locale_from_id"
    t.integer "locale_to_id"
    t.integer "lesson_id"
  end

  create_table "lesson_recordings", force: :cascade do |t|
    t.integer "type"
    t.integer "recordingfemme_id"
    t.integer "recordinghomme_id"
    t.integer "lesson_content_id"
    t.integer "user_id"
  end

  create_table "lesson_titles", force: :cascade do |t|
    t.integer "type"
    t.integer "recordingfemme_id"
    t.integer "recordinghomme_id"
    t.integer "lesson_id"
    t.integer "user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "image"
    t.integer "user_id"
    t.integer "recordingfemme_id"
    t.integer "recordinghomme_id"
  end

  create_table "lgbtpeople", force: :cascade do |t|
    t.integer "person_id"
    t.integer "user_id"
  end

  create_table "likerumeurs", force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "user_id"
  end

  create_table "liketask", force: :cascade do |t|
    t.integer "task_id"
    t.integer "user_id"
  end

  create_table "linguaramis", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "linguaramishavephrases", force: :cascade do |t|
    t.integer "linguarami_id"
    t.integer "phrase_id"
  end

  create_table "linkfacebooksearchtasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "facebooksearch_id"
  end

  create_table "linkfamilyhavetickets", force: :cascade do |t|
    t.integer "linkfamilyperson_id"
    t.integer "ticket_id"
  end

  create_table "linkfamilypeople", id: :integer, default: nil, force: :cascade do |t|
    t.integer "familylink_id"
    t.integer "twoperson_id"
  end

  create_table "linkspousehavetickets", force: :cascade do |t|
    t.integer "linkspouseperson_id"
    t.integer "ticket_id"
  end

  create_table "linkspousepeople", id: :integer, default: nil, force: :cascade do |t|
    t.integer "spouselink_id"
    t.date "begindating"
    t.date "enddating"
    t.integer "twoperson_id"
  end

  create_table "listhackedhernothers", force: :cascade do |t|
    t.integer "post_id"
    t.integer "hernother_id"
  end

  create_table "listhackedi18nphrases", force: :cascade do |t|
    t.integer "post_id"
    t.integer "i18nphrase_id"
  end

  create_table "listhackedthistasknotthistasks", force: :cascade do |t|
    t.integer "post_id"
    t.integer "thistasknotthistask_id"
  end

  create_table "lotsofsurnames", force: :cascade do |t|
    t.integer "surname_id"
    t.integer "posts_surname_id"
  end

  create_table "loveislands", force: :cascade do |t|
    t.integer "wantedcouple_id"
    t.integer "notwantedcouple_id"
  end

  create_table "main_threads", force: :cascade do |t|
    t.datetime "created", precision: nil
    t.datetime "modified", precision: nil
    t.boolean "validated"
    t.datetime "planned", precision: nil
  end

  create_table "main_threads_posts", id: :integer, default: nil, force: :cascade do |t|
    t.integer "post_id"
    t.integer "main_thread_id"
    t.integer "task_id"
    t.integer "event"
  end

  create_table "manners", force: :cascade do |t|
    t.integer "event_id"
  end

  create_table "meanings", force: :cascade do |t|
    t.text "content"
    t.integer "word_id"
  end

  create_table "meaningsforsurnames", force: :cascade do |t|
    t.string "content"
  end

  create_table "meansoftransports", force: :cascade do |t|
    t.string "name"
  end

  create_table "memepensees", force: :cascade do |t|
    t.integer "person_id"
    t.integer "post_id"
  end

  create_table "memes", force: :cascade do |t|
    t.integer "person_id"
    t.integer "post_id"
  end

  create_table "menuhaverepas", force: :cascade do |t|
    t.integer "menu_id"
    t.integer "repas_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "message_for_tickets", force: :cascade do |t|
    t.string "content_fr"
    t.string "content_en"
    t.string "content_de"
  end

  create_table "messagecaches", force: :cascade do |t|
    t.string "content"
  end

  create_table "messagefortasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "post_id"
  end

  create_table "metonymies", force: :cascade do |t|
    t.string "name"
    t.integer "post_id"
    t.integer "metonymy_id"
    t.integer "thing_id"
  end

  create_table "missions", force: :cascade do |t|
    t.string "name_fr"
    t.string "name_en"
    t.string "name_de"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modedetransports", force: :cascade do |t|
    t.integer "place_id"
    t.integer "means_of_transport_id"
  end

  create_table "moviescenes", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "musical_bars", force: :cascade do |t|
    t.integer "musicalscore_id"
    t.string "image"
    t.integer "correct_id"
    t.integer "nb", default: 0
    t.text "description"
  end

  create_table "musicalbums", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "musicalcompositions", force: :cascade do |t|
    t.string "title"
    t.integer "composer_id"
  end

  create_table "musicalcompositionshavesongs", force: :cascade do |t|
    t.integer "song_id"
    t.integer "musicalcomposition_id"
  end

  create_table "musicalinstruments", id: :integer, default: nil, force: :cascade do |t|
    t.string "name_fr"
    t.string "image"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name_en"
    t.string "name_de"
  end

  create_table "musicalkeys", force: :cascade do |t|
    t.string "name_fr"
    t.string "name_en"
    t.string "name_de"
    t.string "code_fr"
    t.string "code_en"
    t.string "code_de"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musicalscores", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musicalscoreshavemusicalinstruments", force: :cascade do |t|
    t.integer "musicalinstrument_id"
    t.integer "musicalscore_id"
  end

  create_table "mybookings", force: :cascade do |t|
    t.date "from_date"
    t.date "to_date"
    t.integer "city_id"
    t.integer "alias_id"
    t.integer "place_id"
  end

  create_table "mylayouts", id: :integer, default: nil, force: :cascade do |t|
    t.string "name"
    t.string "typelayout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "mylinkedtasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "linkedtask_id"
    t.integer "recording1_id"
    t.integer "recording2_id"
  end

  create_table "mymaps", force: :cascade do |t|
    t.string "image"
    t.string "width"
    t.string "height"
  end

  create_table "mymapscoords", force: :cascade do |t|
    t.string "mymap_id"
    t.string "tagx"
    t.string "tagy"
    t.integer "place_id"
  end

  create_table "myothertaskhavetaskactiontwosailorjobs", force: :cascade do |t|
    t.integer "taskhavetaskactiontwosailorjob_id"
    t.integer "ifothertaskhavetaskactiontwosailorjob_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "myspeciallayouts", force: :cascade do |t|
    t.integer "mylayout_id"
    t.integer "post_id"
  end

  create_table "mytablenames", force: :cascade do |t|
    t.integer "scheduledtask_id"
    t.integer "validation_id"
  end

  create_table "nationalities", force: :cascade do |t|
    t.string "name_en"
    t.string "name_fr"
    t.string "name_de"
    t.string "flagicon"
  end

  create_table "noterealizedtasks", force: :cascade do |t|
    t.integer "note"
    t.integer "task_id"
    t.integer "user_id"
  end

  create_table "noterumeurs", force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "user_id"
    t.integer "note"
  end

  create_table "notetasks", force: :cascade do |t|
    t.integer "note"
    t.integer "task_id"
    t.integer "user_id"
  end

  create_table "olympicpeople", force: :cascade do |t|
    t.integer "twoperson_id"
    t.integer "skill_id"
    t.integer "user_id"
  end

  create_table "olympicpeoplehaveevents", force: :cascade do |t|
    t.integer "olympicperson_id"
    t.integer "event_id"
  end

  create_table "onetimes", force: :cascade do |t|
    t.string "content"
    t.string "person_id"
    t.string "title"
  end

  create_table "onlyphrases", force: :cascade do |t|
    t.integer "phrase1_id"
    t.integer "phrase2_id"
    t.integer "aidememoire_id"
  end

  create_table "onlywords", force: :cascade do |t|
    t.integer "word1_id"
    t.integer "word2_id"
    t.integer "aidememoire_id"
  end

  create_table "paragraphs", force: :cascade do |t|
    t.string "type"
    t.integer "orderid"
  end

  create_table "parentlinks", force: :cascade do |t|
    t.string "type"
    t.string "name_en"
    t.string "name_fr"
    t.string "name_de"
    t.string "image"
  end

  create_table "people", id: :integer, default: nil, force: :cascade do |t|
    t.string "name", null: false
    t.binary "image", null: false
    t.integer "collection_id"
    t.text "description"
    t.string "month_met"
    t.string "year_met"
    t.integer "pronoun_id"
    t.integer "myprofilepic_id"
    t.string "facebook"
    t.integer "country_id"
    t.integer "city_id"
    t.string "lastname"
    t.string "firstnames"
    t.integer "nationality_id"
    t.string "phonenumber"
    t.string "sexe"
    t.string "colorhair"
    t.string "eyescolor"
    t.date "dateofbirth"
    t.integer "size"
  end

  create_table "people_cities", force: :cascade do |t|
    t.integer "person_id"
    t.integer "city_id"
  end

  create_table "people_places", force: :cascade do |t|
    t.integer "person_id"
    t.integer "place_id"
  end

  create_table "people_posts_surnames", force: :cascade do |t|
    t.integer "person_id"
    t.integer "posts_surname_id"
  end

  create_table "people_reactions", force: :cascade do |t|
    t.integer "person_id"
    t.integer "reaction_id"
  end

  create_table "people_surnames", force: :cascade do |t|
    t.integer "person_id"
    t.integer "surname_id"
  end

  create_table "peoplebelievers", force: :cascade do |t|
    t.integer "person_id"
    t.integer "user_id"
  end

  create_table "peoplecars", force: :cascade do |t|
    t.integer "person_id"
    t.integer "car_id"
    t.integer "user_id"
  end

  create_table "peoplecitiesepochs", force: :cascade do |t|
    t.integer "people_city_id"
    t.integer "epoch_id"
  end

  create_table "peopledontlike", force: :cascade do |t|
    t.integer "person_id"
    t.integer "user_id"
    t.integer "intensity"
  end

  create_table "peoplehavejobs", force: :cascade do |t|
    t.integer "person_id"
    t.integer "job_id"
  end

  create_table "peoplehavephrasesandwords", force: :cascade do |t|
    t.integer "person_id"
    t.integer "aidememoire_id"
  end

  create_table "peoplehavestrengths", force: :cascade do |t|
    t.integer "linkspouseperson_id"
    t.integer "person_id"
    t.integer "strength_id"
    t.integer "user_id"
  end

  create_table "peoplehaveweaknesses", force: :cascade do |t|
    t.integer "linkspouseperson_id"
    t.integer "person_id"
    t.integer "weakness_id"
    t.integer "user_id"
  end

  create_table "peoplelike", force: :cascade do |t|
    t.integer "person_id"
    t.integer "user_id"
    t.integer "intensity"
  end

  create_table "peoplerecordings", force: :cascade do |t|
    t.integer "person_id"
    t.integer "recording_id"
  end

  create_table "peoplerelations", force: :cascade do |t|
    t.string "name"
  end

  create_table "peopleschedules", force: :cascade do |t|
    t.integer "person_id"
    t.integer "scheduledtask_id"
  end

  create_table "peopleschools", force: :cascade do |t|
    t.integer "person_id"
    t.integer "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peoplesentences", force: :cascade do |t|
    t.integer "person_id"
    t.integer "recording_id"
  end

  create_table "permanentpostsurnames", force: :cascade do |t|
    t.integer "person_id"
    t.integer "posts_surname_id"
  end

  create_table "permanentprofilepics", force: :cascade do |t|
    t.integer "person_id"
    t.integer "profilepicture_id"
  end

  create_table "personcomments", force: :cascade do |t|
    t.integer "person_id"
    t.integer "post_id"
  end

  create_table "personhassosies", force: :cascade do |t|
    t.integer "person_id"
    t.integer "sosie_id"
  end

  create_table "persons", force: :cascade do |t|
    t.string "name"
    t.binary "image"
  end

  create_table "personstates", force: :cascade do |t|
    t.string "state_fr"
    t.string "state_en"
    t.string "state_de"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phavefilms", force: :cascade do |t|
    t.integer "person_id"
    t.integer "film_id"
    t.integer "surname_id"
  end

  create_table "photohavesailors", force: :cascade do |t|
    t.integer "person_id"
    t.integer "photo_id"
    t.integer "emotion_id"
    t.integer "tagx"
    t.integer "tagy"
  end

  create_table "photopeoplehaveattitudes", force: :cascade do |t|
    t.integer "attitudephoto_id"
    t.integer "attitude_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photopeoplehavetraits", force: :cascade do |t|
    t.integer "attitudephoto_id"
    t.integer "trait_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", id: :integer, default: nil, force: :cascade do |t|
    t.string "link"
    t.string "name"
    t.string "title"
  end

  create_table "photos_posts", force: :cascade do |t|
    t.integer "photo_id"
    t.integer "post_id"
  end

  create_table "photos_posts_surnames", force: :cascade do |t|
    t.integer "person_id"
    t.integer "posts_surname_id"
  end

  create_table "photos_users", force: :cascade do |t|
    t.integer "photo_id"
    t.integer "user_id"
  end

  create_table "photos_wikipedia_pages", force: :cascade do |t|
    t.integer "photo_id"
    t.integer "wikipedia_page_id"
  end

  create_table "phraseandwords", force: :cascade do |t|
    t.integer "phrase_id"
    t.integer "word_id"
    t.integer "aidememoire_id"
    t.boolean "opposite"
  end

  create_table "phrases", id: :integer, default: nil, force: :cascade do |t|
    t.string "content_en"
    t.datetime "created", precision: nil
    t.string "type"
    t.text "content_fr"
    t.text "content_de"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "city_id"
    t.integer "place_id"
    t.integer "state_id"
    t.text "description"
    t.integer "country_id"
    t.string "longitude"
    t.string "latitude"
    t.string "type"
  end

  create_table "places_tasks", force: :cascade do |t|
    t.integer "place_id"
    t.integer "task_id"
  end

  create_table "placesandposts", force: :cascade do |t|
    t.integer "place_id"
    t.integer "post_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plantspecies", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "post_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "post_types_posts", force: :cascade do |t|
    t.integer "post_id"
    t.integer "post_type_id"
  end

  create_table "posthasjobpositions", force: :cascade do |t|
    t.integer "post_id", null: false
    t.integer "currentjoboffer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currentjoboffer_id"], name: "index_posthasjobpositions_on_currentjoboffer_id"
    t.index ["post_id"], name: "index_posthasjobpositions_on_post_id"
  end

  create_table "posthavehiddenmessages", force: :cascade do |t|
    t.integer "post_id"
    t.integer "messagecache_id"
  end

  create_table "posthavesongs", force: :cascade do |t|
    t.integer "post_id"
    t.integer "song_id"
  end

  create_table "postlikecomments", force: :cascade do |t|
    t.integer "post_id"
    t.integer "setoftask_id"
    t.integer "sailor_id"
    t.integer "task_id"
    t.integer "musicalinstrument_id"
    t.integer "score_id"
    t.integer "attitude_id"
  end

  create_table "postpeopleonetimes", force: :cascade do |t|
    t.integer "post_id"
    t.integer "onetime_id"
  end

  create_table "posts", id: :integer, default: nil, force: :cascade do |t|
    t.string "name"
    t.integer "post_id"
    t.string "content_fr"
    t.boolean "validated"
    t.integer "user_id"
    t.boolean "real_recipients"
    t.datetime "expired", precision: nil
    t.integer "usurpation_id"
    t.datetime "created_at", precision: nil
    t.string "title"
    t.boolean "inverse_hacking"
    t.text "content_en"
    t.text "messagecache"
    t.text "content_de"
  end

  create_table "posts_posts", force: :cascade do |t|
    t.integer "otherpost_id"
    t.integer "post_id"
  end

  create_table "posts_reactions", force: :cascade do |t|
    t.integer "post_id"
    t.integer "reaction_id"
  end

  create_table "posts_recordings", force: :cascade do |t|
    t.integer "post_id"
    t.integer "recording_id"
    t.string "jingle_id"
  end

  create_table "posts_surname_meanings", force: :cascade do |t|
    t.integer "ps_id"
    t.text "post_id"
    t.text "surname_id"
    t.text "person_id"
    t.text "sailor_id"
    t.text "place_id"
    t.text "posts_surname_id"
    t.text "thing_id"
    t.text "other_posts_surname_id"
    t.text "action_name"
    t.text "profilepic_id"
    t.text "speaklike_id"
    t.text "destinataire_id"
    t.text "realname_id"
    t.text "fakename"
    t.text "content_en"
    t.text "content_fr"
    t.text "content_de"
    t.text "surnamedestinataire_id"
    t.text "recordingphrase_id"
    t.text "recordingword_id"
    t.text "stranger_id"
  end

  create_table "posts_surnames", id: :integer, default: nil, force: :cascade do |t|
    t.integer "post_id"
    t.integer "surname_id"
    t.string "person_id"
    t.integer "sailor_id"
    t.integer "place_id"
    t.integer "posts_surname_id"
    t.integer "thing_id"
    t.integer "other_posts_surname_id"
    t.string "action_name"
    t.integer "profilepic_id"
    t.integer "speaklike_id"
    t.integer "destinataire_id"
    t.integer "realname_id"
    t.boolean "fakename"
    t.text "content_en"
    t.text "content_fr"
    t.text "content_de"
    t.integer "surnamedestinataire_id"
    t.integer "recordingphrase_id"
    t.integer "recordingword_id"
    t.integer "stranger_id"
  end

  create_table "posts_surnames_reactions", force: :cascade do |t|
    t.integer "posts_surname_id"
    t.integer "reaction_id"
  end

  create_table "posts_synonyms", force: :cascade do |t|
    t.integer "post_id"
    t.integer "synonym_id"
  end

  create_table "posts_tasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "post_id"
    t.integer "routine_id"
    t.integer "event_id"
  end

  create_table "posts_things", force: :cascade do |t|
    t.integer "tvseries_id"
    t.integer "post_id"
  end

  create_table "posts_videos", force: :cascade do |t|
    t.integer "post_id"
    t.integer "video_id"
  end

  create_table "postsaboutdishes", force: :cascade do |t|
    t.integer "post_id"
    t.integer "dish_id"
  end

  create_table "postsaboutthings", force: :cascade do |t|
    t.integer "post_id"
    t.integer "thing_id"
  end

  create_table "postsandemails", force: :cascade do |t|
    t.integer "email_id"
    t.integer "post_id"
  end

  create_table "postshaveaddresses", force: :cascade do |t|
    t.integer "address_id"
    t.integer "post_id"
  end

  create_table "postshavemymaps", force: :cascade do |t|
    t.integer "post_id"
    t.integer "mymap_id"
  end

  create_table "postshaveproposals", force: :cascade do |t|
    t.integer "post_id"
    t.integer "proposal_id"
  end

  create_table "postshaverobots", force: :cascade do |t|
    t.integer "robot_id"
    t.integer "post_id"
  end

  create_table "postshavesocialmovements", force: :cascade do |t|
    t.integer "post_id"
    t.integer "socialmovement_id"
  end

  create_table "postshavetickets", force: :cascade do |t|
    t.integer "post_id"
    t.integer "ticket_id"
  end

  create_table "postshavetweets", force: :cascade do |t|
    t.integer "post_id"
    t.integer "tweet_id"
  end

  create_table "postslinkedepochs", force: :cascade do |t|
    t.integer "post_id"
    t.integer "epoch_id"
  end

  create_table "postsrefcomicbooks", force: :cascade do |t|
    t.integer "post_id"
    t.integer "comicbook_id"
  end

  create_table "postsrefcompanies", force: :cascade do |t|
    t.integer "company_id"
    t.integer "post_id"
  end

  create_table "postsrefhistoricalcharacters", force: :cascade do |t|
    t.integer "historical_character_id"
    t.integer "post_id"
  end

  create_table "postsrefmovies", force: :cascade do |t|
    t.integer "post_id"
    t.integer "movie_id"
  end

  create_table "postsreftomoviescenes", force: :cascade do |t|
    t.integer "moviescene_id"
    t.integer "post_id"
  end

  create_table "postsrefwebpages", force: :cascade do |t|
    t.integer "webpage_id"
    t.integer "post_id"
  end

  create_table "postssurnamesforposts", force: :cascade do |t|
    t.integer "posts_surname_id"
    t.integer "post_id"
  end

  create_table "poststhreads", force: :cascade do |t|
    t.string "title"
  end

  create_table "profilepicsforpeople", force: :cascade do |t|
    t.integer "person_id"
    t.integer "profilepicture_id"
  end

  create_table "profilepictures", id: :integer, default: nil, force: :cascade do |t|
    t.string "image"
    t.integer "album_id"
    t.string "title"
    t.text "description"
  end

  create_table "programminglanguages", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pronouns", force: :cascade do |t|
    t.string "name"
  end

  create_table "proposals", id: :integer, default: nil, force: :cascade do |t|
    t.boolean "validated"
    t.text "content_fr"
    t.text "content_en"
    t.text "content_de"
    t.string "await"
  end

  create_table "proposalvalidations", id: :integer, default: nil, force: :cascade do |t|
    t.boolean "validated"
    t.integer "proposal_id"
    t.integer "user_id"
    t.text "content_fr"
    t.text "content_en"
    t.text "content_de"
  end

  create_table "questions", force: :cascade do |t|
    t.string "typeq"
    t.string "text"
  end

  create_table "radios", force: :cascade do |t|
    t.string "frequency"
    t.string "motto_fr"
    t.string "motto_en"
    t.string "motto_de"
    t.string "radioname"
  end

  create_table "radioshavecities", force: :cascade do |t|
    t.string "city_id"
    t.string "radio_id"
  end

  create_table "radioshavejingles", force: :cascade do |t|
    t.string "jingle_id"
    t.string "radio_id"
  end

  create_table "rcars", force: :cascade do |t|
    t.integer "user_id"
    t.integer "person_id"
  end

  create_table "reactions", force: :cascade do |t|
    t.string "name"
    t.integer "pronoun_id"
    t.boolean "opposite"
    t.string "surname"
    t.integer "groupby"
    t.integer "speaker_id"
    t.integer "posts_surname_id"
    t.integer "reaction_id"
    t.integer "emotion_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "reactions_texts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "readrumeurs", force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "user_id"
  end

  create_table "realfacts", force: :cascade do |t|
    t.text "content_fr"
    t.text "content_de"
    t.text "content_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipients", force: :cascade do |t|
    t.integer "person_id"
    t.integer "post_id"
  end

  create_table "recordingreviews", force: :cascade do |t|
    t.integer "correctsample_id"
    t.integer "incorrectsample_id"
    t.integer "gooduser_id"
  end

  create_table "recordings", id: :integer, default: nil, force: :cascade do |t|
    t.string "name_fr"
    t.integer "person_id"
    t.string "type"
    t.string "content_fr"
    t.integer "posts_surname_id"
    t.string "name_de"
    t.string "name_en"
    t.string "name_it"
    t.string "content_de"
    t.string "content_en"
    t.string "content_it"
  end

  create_table "recordings_tasks", force: :cascade do |t|
    t.integer "recording_id"
    t.integer "task_id"
  end

  create_table "recordings_users", force: :cascade do |t|
    t.integer "recording_id"
    t.integer "user_id"
  end

  create_table "redbandpeople", force: :cascade do |t|
    t.integer "user_id"
    t.integer "person_id"
  end

  create_table "refrainhavecomposedcontents", force: :cascade do |t|
    t.integer "composedcontent_id"
    t.integer "refrain_id"
    t.integer "user_id"
    t.integer "musicalcomposition_id"
  end

  create_table "refrainshaverefrains", force: :cascade do |t|
    t.string "refrain_id"
    t.string "content_id"
  end

  create_table "relations", force: :cascade do |t|
    t.string "name_en"
    t.string "name_fr"
    t.string "name_de"
  end

  create_table "remedieshavedrinks", force: :cascade do |t|
    t.integer "drink_id"
    t.integer "personstate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "remedieshavefoods", force: :cascade do |t|
    t.integer "food_id"
    t.integer "personstate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requetefacebooksposts", force: :cascade do |t|
    t.integer "facebook_request_id"
    t.integer "post_id"
  end

  create_table "requetegooglesposts", force: :cascade do |t|
    t.integer "google_id"
    t.integer "post_id"
    t.integer "google_request_id"
  end

  create_table "resultsoffbsearches", force: :cascade do |t|
    t.integer "facebooksearch_id"
    t.integer "person_id"
  end

  create_table "risktasks", force: :cascade do |t|
    t.integer "person_id"
    t.integer "task_id"
    t.integer "user_id"
  end

  create_table "robots", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
  end

  create_table "rrobots", force: :cascade do |t|
    t.integer "user_id"
    t.integer "person_id"
  end

  create_table "rues", force: :cascade do |t|
    t.string "name"
  end

  create_table "sailorgrouptasks", force: :cascade do |t|
    t.integer "grouptask_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sailorhaveattitudesintasks", force: :cascade do |t|
    t.integer "attitude_id"
    t.integer "score"
    t.integer "person_id"
    t.integer "user_id"
    t.integer "task_id"
  end

  create_table "sailorjobhaveclothes", force: :cascade do |t|
    t.integer "sailorjob_id"
    t.integer "clothing_id"
  end

  create_table "sailorjobs", force: :cascade do |t|
    t.integer "person_id"
    t.integer "task_id"
    t.integer "event_id"
    t.integer "routine_id"
  end

  create_table "savedpeople", force: :cascade do |t|
    t.integer "person_id"
    t.integer "user_id"
  end

  create_table "savedtasksailors", force: :cascade do |t|
    t.integer "person_id"
    t.integer "task_id"
    t.integer "user_id"
  end

  create_table "scheduledtasks", force: :cascade do |t|
    t.datetime "date_and_time", precision: nil
    t.string "name"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schoolhpeople", force: :cascade do |t|
    t.integer "school_id"
    t.integer "person_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scorecriteria", force: :cascade do |t|
    t.text "description"
    t.integer "musicalscore_id"
    t.integer "gooduser_id"
  end

  create_table "scoreshavekeys", force: :cascade do |t|
    t.integer "musicalscore_id"
    t.integer "musicalkey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.date "begin_at"
    t.date "end_at"
    t.string "name"
    t.string "image"
  end

  create_table "secretanswers", force: :cascade do |t|
    t.integer "question_id"
    t.string "text"
    t.boolean "good"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "secretquestions", force: :cascade do |t|
    t.string "typeq"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "field_id"
    t.date "open_signup"
    t.boolean "admission_exam"
    t.date "admission_exam_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectorshaveadmissionfiles", force: :cascade do |t|
    t.integer "sector_id"
    t.integer "admissionfile_id"
  end

  create_table "sectorshavebacseries", force: :cascade do |t|
    t.integer "sector_id"
    t.integer "bacseries_id"
  end

  create_table "sectorshavecities", force: :cascade do |t|
    t.integer "sector_id"
    t.integer "city_id"
  end

  create_table "selfiehaveposts", force: :cascade do |t|
    t.integer "post_id"
    t.integer "selfie_id"
  end

  create_table "selfiehavesailors", force: :cascade do |t|
    t.integer "selfie_id"
    t.integer "person_id"
    t.integer "emotion_id"
  end

  create_table "selfies", force: :cascade do |t|
    t.string "name"
    t.string "title"
  end

  create_table "setoftaskhavetasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "setoftask_id"
  end

  create_table "setoftasks", force: :cascade do |t|
    t.string "title"
  end

  create_table "shaktistatements", force: :cascade do |t|
    t.text "content_fr"
    t.text "content_en"
    t.text "content_de"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skillhavesailors", force: :cascade do |t|
    t.integer "skill_id"
    t.integer "person_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name_en"
    t.string "name_fr"
    t.string "name_de"
    t.string "image"
  end

  create_table "socialcontracts", force: :cascade do |t|
    t.integer "person_id"
    t.integer "otherperson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "socialcontractshaveactions", force: :cascade do |t|
    t.integer "socialcontract_id"
    t.integer "action_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "socialmovements", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "songshavecouplets", force: :cascade do |t|
    t.integer "couplet_id"
    t.integer "song_id"
  end

  create_table "songshaverefrain", force: :cascade do |t|
    t.integer "refrain_id"
    t.integer "song_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title_fr"
    t.string "title_en"
    t.string "title_de"
    t.string "image"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surnamehavepeople", force: :cascade do |t|
    t.integer "surname_id"
    t.integer "person_id"
  end

  create_table "surnames", id: :integer, default: nil, force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "place_id"
    t.integer "interpretation_id"
    t.string "my_relation"
  end

  create_table "surnamesforreactioners", force: :cascade do |t|
  end

  create_table "synonyms", force: :cascade do |t|
    t.integer "synonym_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "textedusynonyme"
  end

  create_table "taskactionsailorjobs", force: :cascade do |t|
    t.integer "sailorjob_id"
    t.integer "taskaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taskactionsailorjobshaveaccomplishments", force: :cascade do |t|
    t.integer "taskactionsailorjob_id"
    t.integer "person_id"
    t.datetime "time", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taskactionsailorjobshaveaccomplishmentshackedpeople", force: :cascade do |t|
    t.integer "taskactionsailorjobshaveaccomplishment_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taskactionsailorjobshaveaccomplishmentshackedpeoplesurnames", force: :cascade do |t|
    t.integer "taskactionsailorjobshaveaccomplishmentshackedperson_id"
    t.integer "surname_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taskactionsailorjobshaveaccomplishmentshackedpeopletasks", force: :cascade do |t|
    t.integer "taskactionsailorjobshaveaccomplishmentshackedperson_id"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taskcollections", force: :cascade do |t|
    t.string "name"
  end

  create_table "taskhasgithubrepos", force: :cascade do |t|
    t.integer "githubrepo_id"
    t.integer "task_id"
  end

  create_table "taskhasmanyaddresses", force: :cascade do |t|
    t.integer "task_id"
    t.integer "address_id"
  end

  create_table "taskhasmanygossips", force: :cascade do |t|
    t.integer "aboutsomeonegossip_id"
    t.integer "task_id"
  end

  create_table "taskhaveepochs", force: :cascade do |t|
    t.integer "task_id"
    t.integer "epoch_id"
  end

  create_table "taskhavetaskactiontwosailorjobs", force: :cascade do |t|
    t.integer "taskactiontwosailorjob_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taskmucheffortsailors", force: :cascade do |t|
    t.integer "taskaction_id"
    t.integer "person_id"
    t.integer "task_id"
    t.integer "user_id"
    t.integer "intensity"
  end

  create_table "tasks", id: :integer, default: nil, force: :cascade do |t|
    t.datetime "end_at", precision: nil
    t.datetime "start_at", precision: nil
    t.string "longitude"
    t.string "latitude"
    t.integer "city_id"
    t.integer "place_id"
    t.integer "state_id"
    t.string "address"
    t.string "name_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.boolean "done"
    t.integer "nbtimes"
    t.string "name_fr"
    t.string "name_de"
  end

  create_table "tasks_things", force: :cascade do |t|
    t.integer "event_id"
    t.integer "thing_id"
    t.integer "task_id"
  end

  create_table "tasksailorusedstuffhavepeople", force: :cascade do |t|
    t.integer "tasksailorusedstuff_id"
    t.integer "person_id"
  end

  create_table "tasksailorusedstuffs", force: :cascade do |t|
    t.integer "taskusedstuff_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taskshaveaccomplishments", force: :cascade do |t|
    t.integer "task_id"
    t.integer "sailor_id"
    t.datetime "timeididit", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ticket_id"
  end

  create_table "taskshaveactions", force: :cascade do |t|
    t.integer "action_id"
    t.integer "task_id"
  end

  create_table "taskshaveaidememoires", force: :cascade do |t|
    t.integer "aidememoire_id"
    t.integer "task_id"
  end

  create_table "taskshaveattitudes", force: :cascade do |t|
    t.integer "attitude_id"
    t.integer "task_id"
  end

  create_table "taskshaverelations", force: :cascade do |t|
    t.integer "mylinkedtask_id"
    t.integer "relation_id"
  end

  create_table "taskshavetaskscollections", id: :integer, default: nil, force: :cascade do |t|
    t.integer "taskcollection_id"
    t.integer "task_id"
  end

  create_table "tasksunvalidatetickets", force: :cascade do |t|
    t.integer "task_id"
    t.integer "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasksvalidatetickets", force: :cascade do |t|
    t.integer "task_id"
    t.integer "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasksworks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "worktwo_id"
  end

  create_table "taskusedstuffs", force: :cascade do |t|
    t.integer "thing_id"
    t.integer "task_id"
    t.integer "user_id"
    t.integer "use"
    t.integer "nb"
  end

  create_table "techniquesposts", force: :cascade do |t|
    t.integer "technique_id"
    t.integer "post_id"
  end

  create_table "techniquestasks", force: :cascade do |t|
    t.integer "technique_id"
    t.integer "task_id"
  end

  create_table "tendances", force: :cascade do |t|
    t.string "content"
    t.integer "post_id"
  end

  create_table "things", id: :integer, default: nil, force: :cascade do |t|
    t.string "name_fr"
    t.string "description"
    t.string "type"
    t.string "image"
    t.string "name_de"
    t.string "name_en"
  end

  create_table "thingssailorgrouptasks", force: :cascade do |t|
    t.integer "sailorgrouptask_id"
    t.integer "thing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thisisjingles", force: :cascade do |t|
    t.integer "jingle_id"
    t.integer "person_id"
    t.integer "user_id"
    t.string "content"
  end

  create_table "thistasknotthistasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "othertask_id"
  end

  create_table "threadhavemanyposts", id: :integer, default: nil, force: :cascade do |t|
    t.integer "poststhread_id"
    t.integer "post_id"
  end

  create_table "tickethavehiddenmessages", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "hiddenmessage_id"
  end

  create_table "tickethaveplaces", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "place_id"
  end

  create_table "tickethavesailorjobs", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "sailorjob_id"
  end

  create_table "tickets", id: :integer, default: nil, force: :cascade do |t|
    t.string "sender"
    t.string "recipient"
    t.text "content_en"
    t.boolean "senderknown"
    t.boolean "thereissender"
    t.boolean "recipientknown"
    t.boolean "thereisrecipient"
    t.boolean "validated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "image"
    t.boolean "canceltask"
    t.integer "message_id"
    t.boolean "contentknown"
    t.text "content_fr"
    t.text "content_de"
  end

  create_table "ticketsaboutpeople", force: :cascade do |t|
    t.integer "person_id"
    t.integer "ticket_id"
  end

  create_table "ticketshaverecipients", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "recipient_id"
    t.integer "recording1_id"
    t.integer "recording2_id"
    t.integer "relation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticketshavesenders", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "sender_id"
    t.integer "recording1_id"
    t.integer "recording2_id"
    t.integer "relation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "todolisthavesailors", force: :cascade do |t|
    t.integer "task_id"
    t.integer "person_id"
  end

  create_table "todolisthavetasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "Num"
    t.integer "todolist_id"
  end

  create_table "todolists", force: :cascade do |t|
    t.string "title"
  end

  create_table "torealizetasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "user_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "name_fr"
    t.string "name_en"
    t.string "name_de"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traumberufe", force: :cascade do |t|
    t.integer "job_id"
    t.integer "person_id"
  end

  create_table "tvserieshaveactors", force: :cascade do |t|
    t.integer "person_id"
    t.integer "tvseries_id"
    t.integer "surname_id"
  end

  create_table "tweets", id: :integer, default: nil, force: :cascade do |t|
    t.text "content"
    t.string "username"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "savedtodb", precision: nil
    t.integer "hits"
  end

  create_table "twitteraccounts", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "person_id"
  end

  create_table "twopeople", force: :cascade do |t|
    t.integer "person_id"
    t.integer "otherperson_id"
  end

  create_table "twopeoplehavecities", force: :cascade do |t|
    t.integer "city_id"
    t.integer "twoperson_id"
  end

  create_table "twopeoplehavecompanies", force: :cascade do |t|
    t.integer "company_id"
    t.integer "twoperson_id"
  end

  create_table "twopeoplehavejobs", force: :cascade do |t|
    t.integer "job_id"
    t.integer "twoperson_id"
  end

  create_table "twopeoplemeets", force: :cascade do |t|
    t.integer "person_id"
    t.integer "otherperson_id"
  end

  create_table "twosailorjobs", force: :cascade do |t|
    t.integer "sailorjob_id"
    t.integer "othersailorjob_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userhavearmygrades", force: :cascade do |t|
    t.integer "user_id"
    t.integer "armygrade_id"
  end

  create_table "userhaveclothes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "clothing_id"
  end

  create_table "userhavefamilies", force: :cascade do |t|
    t.integer "user_id"
    t.integer "familylink_id"
    t.integer "person_id"
  end

  create_table "userhaveskills", force: :cascade do |t|
    t.integer "user_id"
    t.integer "skill_id"
  end

  create_table "userhavesongs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "song_id"
  end

  create_table "users", id: :integer, default: nil, force: :cascade do |t|
    t.string "name"
    t.binary "image"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "person_id"
    t.integer "mode"
    t.integer "cuisinier"
    t.integer "ordures"
    t.integer "meuf_id"
    t.integer "mec_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_videos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "video_id"
  end

  create_table "usershavesectors", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sector_id"
  end

  create_table "usurpations", id: :integer, default: nil, force: :cascade do |t|
    t.string "name"
    t.integer "post_id"
    t.integer "person_id"
  end

  create_table "validations", force: :cascade do |t|
    t.integer "scheduledtask_id"
    t.string "name"
  end

  create_table "validatorusers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "name"
  end

  create_table "weaknesscouples", force: :cascade do |t|
    t.integer "person_id"
    t.integer "heroattitude_id"
    t.integer "otherheroattitude_id"
    t.integer "otherperson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "webpages", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "whoscaptains", force: :cascade do |t|
    t.integer "grade_id"
    t.integer "superiorgrade_id"
  end

  create_table "wikipedia_pages", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "person_id"
    t.string "name_of_birth"
    t.date "date_of_birth"
    t.string "place_of_birth"
    t.string "main_activity"
    t.string "musical_genre"
    t.string "instruments"
    t.date "active_years"
    t.string "official_site"
    t.string "influences"
  end

  create_table "winningattitudes", force: :cascade do |t|
    t.text "content_fr"
    t.text "content_en"
    t.text "content_de"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "words", force: :cascade do |t|
    t.string "word"
  end

  create_table "wordsforposts", force: :cascade do |t|
    t.integer "word_id"
    t.integer "post_id"
  end

  create_table "worktwos", id: :integer, default: nil, force: :cascade do |t|
    t.integer "link_id"
    t.integer "twoperson_id"
  end

  create_table "worktwoshavetickets", force: :cascade do |t|
    t.integer "worktwo_id"
    t.integer "ticket_id"
  end

  create_table "wrongtasks", force: :cascade do |t|
    t.integer "wrongsailorjob_id"
    t.integer "suggestedsailorjob_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "currentjoboffers", "fields"
  add_foreign_key "currentjoboffers", "jobs"
  add_foreign_key "currentjoboffers", "people"
  add_foreign_key "currentjoboffers", "places"
  add_foreign_key "posthasjobpositions", "currentjoboffers"
  add_foreign_key "posthasjobpositions", "posts"
end
