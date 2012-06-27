class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.references :competition

      t.timestamps
    end
    add_index :seasons, :competition_id
  end
end
