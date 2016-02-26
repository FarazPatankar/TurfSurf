class AddReceiverEmailToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :receiver_email, :string
  end
end
