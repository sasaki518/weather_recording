class CreateWeathers < ActiveRecord::Migration[5.2]
  def change
    create_table :weathers do |t|
      t.string :day
      t.string :weather
      t.integer :temperture
      t.integer :rainy_percent

      t.timestamps
    end
  end
end
