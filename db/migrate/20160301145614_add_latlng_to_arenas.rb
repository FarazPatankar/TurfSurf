class AddLatlngToArenas < ActiveRecord::Migration
  def change
    add_column :arenas, :lat, :decimal
    add_column :arenas, :lng, :decimal
  end
end
