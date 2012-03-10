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

ActiveRecord::Schema.define(:version => 20120219025615) do

  create_table "college_applications", :force => true do |t|
    t.integer  "participant_id"
    t.integer  "institution_id"
    t.datetime "date_applied"
    t.datetime "date_notified"
    t.string   "decision"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "choice"
  end

  create_table "education_levels", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_attendances", :force => true do |t|
    t.integer  "person_id"
    t.integer  "event_id"
    t.boolean  "rsvp"
    t.boolean  "attended"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_groups", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "event_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "location_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.boolean  "show_for_participants", :default => true
    t.boolean  "show_for_mentors",      :default => true
    t.boolean  "allow_rsvps"
    t.integer  "event_type_id"
    t.integer  "event_group_id"
    t.string   "location_text"
    t.integer  "capacity"
  end

  create_table "how_did_you_hear_options", :force => true do |t|
    t.string   "name"
    t.boolean  "show_for_participants"
    t.boolean  "show_for_mentors"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "how_did_you_hear_options_people", :id => false, :force => true do |t|
    t.integer "person_id"
    t.integer "how_did_you_hear_option_id"
  end

  create_table "income_levels", :force => true do |t|
    t.float    "min_level"
    t.float    "max_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.boolean  "partner_school"
  end

  create_table "mentor_participants", :force => true do |t|
    t.integer  "mentor_id"
    t.integer  "participant_id"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mentor_quarter_groups", :force => true do |t|
    t.integer  "quarter_id"
    t.integer  "location_id"
    t.string   "title"
    t.string   "course_id"
    t.string   "times"
    t.time     "depart_time"
    t.time     "return_time"
    t.integer  "capacity"
    t.boolean  "none_option"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mentor_quarters_count", :default => 0
    t.integer  "linked_group_id"
  end

  create_table "mentor_quarters", :force => true do |t|
    t.integer  "mentor_id"
    t.integer  "mentor_quarter_group_id"
    t.boolean  "lead"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "volunteer"
    t.boolean  "driver"
    t.text     "notes"
  end

  create_table "object_filters", :force => true do |t|
    t.string   "object_class"
    t.string   "title"
    t.text     "criteria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "suffix"
    t.string   "nickname"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
    t.string   "phone_home"
    t.string   "phone_mobile"
    t.string   "phone_work"
    t.string   "screen_name"
    t.string   "screen_name_type"
    t.string   "birthdate"
    t.string   "sex"
    t.boolean  "free_reduced_lunch"
    t.boolean  "no_internet_at_home"
    t.boolean  "english_not_primary_at_home"
    t.string   "other_languages"
    t.boolean  "english_second_language"
    t.integer  "grad_year"
    t.float    "gpa"
    t.date     "gpa_date"
    t.text     "after_school_activities"
    t.text     "time_conflicts"
    t.date     "fafsa_submitted_date"
    t.date     "binder_date"
    t.date     "photo_release_date"
    t.boolean  "photo_release_no_fullname"
    t.string   "relationship"
    t.string   "type"
    t.integer  "high_school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "first_generation"
    t.boolean  "computer_at_home"
    t.string   "dietary_restrictions"
    t.boolean  "vegetarian"
    t.boolean  "vegan"
    t.boolean  "hispanic"
    t.boolean  "african_american"
    t.boolean  "american_indian"
    t.boolean  "asian"
    t.boolean  "pacific_islander"
    t.boolean  "caucasian"
    t.string   "ethnicity_details"
    t.boolean  "inactive"
    t.integer  "mother_education_level_id"
    t.integer  "father_education_level_id"
    t.string   "mother_education_country"
    t.string   "father_education_country"
    t.integer  "family_income_level_id"
    t.integer  "college_attending_id"
    t.integer  "household_size"
    t.boolean  "single_parent_household"
    t.boolean  "not_attending_college"
    t.date     "intake_survey_date"
    t.boolean  "received_binder"
    t.boolean  "live_the_dream_recipient"
    t.boolean  "live_the_dream_nominee"
    t.boolean  "address_is_invalid"
    t.boolean  "email_is_invalid"
    t.text     "other_programs"
    t.date     "college_graduation_date"
    t.boolean  "target_participant"
    t.boolean  "not_target_participant"
    t.text     "inactive_explanation"
    t.datetime "inactive_date"
    t.string   "parent_only_speaks_language"
    t.boolean  "kosher"
    t.boolean  "halal"
    t.boolean  "foster_youth"
    t.string   "plans_after_high_school"
    t.boolean  "live_with_mother"
    t.boolean  "live_with_father"
    t.boolean  "parent_graduated_college"
    t.string   "family_members_who_went_to_college"
    t.boolean  "family_members_graduated"
    t.boolean  "attended_school_outside_usa"
    t.string   "countries_attended_school_outside_usa"
    t.boolean  "attended_grade_1_outside_usa"
    t.boolean  "attended_grade_2_outside_usa"
    t.boolean  "attended_grade_3_outside_usa"
    t.boolean  "attended_grade_4_outside_usa"
    t.boolean  "attended_grade_5_outside_usa"
    t.boolean  "attended_grade_6_outside_usa"
    t.boolean  "attended_grade_7_outside_usa"
    t.boolean  "attended_grade_8_outside_usa"
    t.boolean  "attended_grade_9_outside_usa"
    t.boolean  "attended_grade_10_outside_usa"
    t.boolean  "attended_grade_11_outside_usa"
    t.boolean  "attended_grade_12_outside_usa"
    t.boolean  "african"
    t.boolean  "latino"
    t.boolean  "middle_eastern"
    t.boolean  "other_ethnicity"
    t.string   "african_american_heritage"
    t.string   "african_heritage"
    t.string   "american_indian_heritage"
    t.string   "asian_heritage"
    t.string   "hispanic_heritage"
    t.string   "latino_heritage"
    t.string   "middle_eastern_heritage"
    t.string   "pacific_islander_heritage"
    t.string   "caucasian_heritage"
    t.string   "other_heritage"
    t.boolean  "bad_address"
    t.boolean  "bad_phone"
    t.boolean  "bad_email"
    t.integer  "previous_participant_id"
    t.datetime "ferpa_agreement_signed_at"
    t.datetime "background_check_run_at"
    t.string   "background_check_result"
    t.datetime "risk_form_signed_at"
    t.string   "risk_form_signature"
    t.string   "reg_id"
    t.string   "uw_student_no"
    t.string   "uw_net_id"
    t.datetime "resource_cache_updated_at"
    t.string   "display_name"
    t.string   "survey_id"
    t.boolean  "clearinghouse_record_found"
    t.string   "other_how_did_you_hear"
    t.boolean  "can_send_texts"
    t.boolean  "can_receive_texts"
    t.boolean  "unlimited_texting"
    t.boolean  "college_bound_scholarship"
    t.string   "other_college_programs"
    t.integer  "mentor_participant_count"
    t.integer  "other_location_id"
    t.text     "aliases"
    t.boolean  "crimes_against_persons_or_financial"
    t.boolean  "drug_related_crimes"
    t.boolean  "related_proceedings_crimes"
    t.boolean  "medicare_healthcare_crimes"
    t.text     "victim_crimes_explanation"
    t.boolean  "general_convictions"
    t.text     "general_convictions_explanation"
    t.datetime "background_check_authorized_at"
    t.datetime "van_driver_training_completed_at"
    t.string   "husky_card_rfid"
  end

  add_index "people", ["display_name"], :name => "index_people_on_display_name"
  add_index "people", ["firstname"], :name => "index_people_on_firstname"
  add_index "people", ["lastname"], :name => "index_people_on_lastname"
  add_index "people", ["uw_net_id"], :name => "index_people_on_uw_net_id"

  create_table "quarters", :force => true do |t|
    t.integer  "year"
    t.integer  "quarter_code"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "course_ids"
    t.boolean  "allow_signups"
  end

  create_table "scholarship_applications", :force => true do |t|
    t.integer  "scholarship_id"
    t.integer  "participant_id"
    t.boolean  "awarded"
    t.boolean  "renewable"
    t.boolean  "accepted"
    t.decimal  "amount"
    t.date     "date_applied"
    t.text     "restrictions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
  end

  create_table "scholarships", :force => true do |t|
    t.string   "title"
    t.string   "organization_name"
    t.text     "description"
    t.decimal  "default_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "remember_token"
    t.string   "remember_token_expires_at"
    t.string   "identity_url"
    t.string   "type"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

end
