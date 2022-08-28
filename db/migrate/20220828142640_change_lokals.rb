# frozen_string_literal: true

class ChangeLokals < ActiveRecord::Migration[7.0]
  def change
    add_column :lokals, :user_id, :integer
  end
end
