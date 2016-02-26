class RenameMessageToName < ActiveRecord::Migration
  def change
  	rename_column :requests, :message, :name
  end
end
