class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :owner
      t.integer :original_track_id
      t.string :instrument
      t.string :stream_url
      t.integer :bpm
      t.integer :duration

      t.timestamps
    end
  end
end
