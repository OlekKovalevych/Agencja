class CreateLokals < ActiveRecord::Migration[7.0]
  def change
    create_table :lokals do |t|
      t.string :ulica
      t.integer :cena
      t.datetime :rezerv
      t.datetime :end_time

      t.timestamps
    end
  end
end
