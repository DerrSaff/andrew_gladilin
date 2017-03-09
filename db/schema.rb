# frozen_string_literal: true
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

ActiveRecord::Schema.define(version: 20_170_308_215_820) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'books', force: :cascade do |t|
    t.string   'name',         default: ''
    t.integer  'pages_read',   default: 0
    t.integer  'total_pages',  default: 0
    t.string   'book_picture', default: ''
    t.string   'link',         default: ''
    t.text     'review',       default: ''
    t.datetime 'created_at',                null: false
    t.datetime 'updated_at',                null: false
    t.text     'summary',      default: ''
    t.string   'author',       default: ''
    t.string   'year',         default: ''
    t.string   'publisher',    default: ''
  end

  create_table 'comments', force: :cascade do |t|
    t.integer  'user_id'
    t.text     'message',          default: ''
    t.integer  'answer',           default: 0
    t.integer  'commentable_id'
    t.string   'commentable_type'
    t.datetime 'created_at',                    null: false
    t.datetime 'updated_at',                    null: false
    t.index %w(commentable_type commentable_id), name: 'index_comments_on_commentable_type_and_commentable_id', using: :btree
  end

  create_table 'dislikes', force: :cascade do |t|
    t.integer  'post_id'
    t.integer  'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['post_id'], name: 'index_dislikes_on_post_id', using: :btree
    t.index ['user_id'], name: 'index_dislikes_on_user_id', using: :btree
  end

  create_table 'likes', force: :cascade do |t|
    t.integer  'post_id'
    t.integer  'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['post_id'], name: 'index_likes_on_post_id', using: :btree
    t.index ['user_id'], name: 'index_likes_on_user_id', using: :btree
  end

  create_table 'posts', force: :cascade do |t|
    t.string   'header',          default: '', null: false
    t.text     'text',            default: '', null: false
    t.datetime 'created_at',                   null: false
    t.datetime 'updated_at',                   null: false
    t.text     'summary',         default: ''
    t.integer  'views',           default: 0
    t.string   'author',          default: ''
    t.string   'link',            default: ''
    t.string   'original_header', default: ''
    t.text     'javascript',      default: ''
    t.text     'css',             default: ''
    t.string   'tags',            default: ''
  end

  create_table 'reports', force: :cascade do |t|
    t.text     'message',    default: ''
    t.integer  'user_id',    default: 0
    t.string   'email',      default: ''
    t.string   'name',       default: ''
    t.datetime 'created_at',              null: false
    t.datetime 'updated_at',              null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string   'email',                  default: '', null: false
    t.string   'encrypted_password',     default: '', null: false
    t.string   'name',                   default: '', null: false
    t.integer  'role',                   default: 0,  null: false
    t.string   'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer  'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.inet     'current_sign_in_ip'
    t.inet     'last_sign_in_ip'
    t.string   'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string   'unconfirmed_email'
    t.integer  'failed_attempts', default: 0, null: false
    t.string   'unlock_token'
    t.datetime 'locked_at'
    t.datetime 'created_at',                          null: false
    t.datetime 'updated_at',                          null: false
    t.index ['confirmation_token'], name: 'index_users_on_confirmation_token', unique: true, using: :btree
    t.index ['email'], name: 'index_users_on_email', unique: true, using: :btree
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true, using: :btree
    t.index ['unlock_token'], name: 'index_users_on_unlock_token', unique: true, using: :btree
  end
end
