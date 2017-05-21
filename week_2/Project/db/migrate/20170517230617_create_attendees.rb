class CreateAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :attendees do |t|
      t.string :name,
      t.references, :person
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
