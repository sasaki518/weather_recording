class RenameTypeColumnToWeathers < ActiveRecord::Migration[5.2]
  def change
    rename_column :weathers, :type, :weather
  end
end
