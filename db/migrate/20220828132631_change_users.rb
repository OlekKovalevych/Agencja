# frozen_string_literal: true

class ChangeUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean
  end
end
