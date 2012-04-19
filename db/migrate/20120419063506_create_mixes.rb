class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.string :nome
      t.string :autor

      t.timestamps
    end
  end
end
