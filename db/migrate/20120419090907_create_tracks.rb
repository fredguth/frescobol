class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :url
      t.references :mix

      t.timestamps
    end
    add_index :tracks, :mix_id
  end
end
