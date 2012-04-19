class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.string :owner

      t.timestamps
    end
  end
end
