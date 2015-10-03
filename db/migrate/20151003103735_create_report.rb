class CreateReport < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :topic
      t.text :description
      t.date :date_created
    end
  end
end
