class RenameReceiverEmailToEmail < ActiveRecord::Migration
  def change
  	rename_column :requests, :receiver_email, :email
  end
end
