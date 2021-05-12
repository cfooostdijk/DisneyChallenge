ActiveRecord::Schema.define(version: 20_210_511_195_527) do
  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.integer 'record_id', null: false
    t.integer 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness', unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.string 'service_name', null: false
    t.bigint 'byte_size', null: false
    t.string 'checksum', null: false
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'active_storage_variant_records', force: :cascade do |t|
    t.integer 'blob_id', null: false
    t.string 'variation_digest', null: false
    t.index %w[blob_id variation_digest], name: 'index_active_storage_variant_records_uniqueness', unique: true
  end

  create_table 'characters', force: :cascade do |t|
    t.string 'name'
    t.integer 'age'
    t.integer 'weight'
    t.text 'history'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'filmographies', force: :cascade do |t|
    t.string 'title'
    t.integer 'date'
    t.integer 'stars'
    t.integer 'genre_id', null: false
    t.integer 'character_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['character_id'], name: 'index_filmographies_on_character_id'
    t.index ['genre_id'], name: 'index_filmographies_on_genre_id'
  end

  create_table 'genres', force: :cascade do |t|
    t.string 'kind'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'title'
    t.string 'content'
    t.integer 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_posts_on_user_id'
  end

  create_table 'roles', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email'
    t.string 'password_digest'
    t.integer 'role_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['role_id'], name: 'index_users_on_role_id'
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'active_storage_variant_records', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'filmographies', 'characters'
  add_foreign_key 'filmographies', 'genres'
  add_foreign_key 'posts', 'users'
  add_foreign_key 'users', 'roles'
end
