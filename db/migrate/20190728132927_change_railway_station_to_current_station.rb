class ChangeRailwayStationToCurrentStation < ActiveRecord::Migration[5.2]
  def change
    rename_column :trains,
                  :railway_station_id,
                  :current_station_id
  end
end
