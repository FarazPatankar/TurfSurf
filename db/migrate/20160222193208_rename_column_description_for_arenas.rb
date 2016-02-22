class RenameColumnDescriptionForArenas < ActiveRecord::Migration
  def change
  	rename_column :arenas, :description, :website
  end
end
