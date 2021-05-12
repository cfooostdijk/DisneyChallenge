# frozen_string_literal: true

class CreateFilmographies < ActiveRecord::Migration[6.1]
  def change
    create_table :filmographies do |t|
      t.string :title
      t.integer :date
      t.integer :stars
      t.references :genre, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
