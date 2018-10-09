class CreateGages < ActiveRecord::Migration[5.2]
  def change
    create_table :gages do |t|
      t.string :name
      t.string :photo
      t.string :audio

      t.timestamps
    end
  end
end
