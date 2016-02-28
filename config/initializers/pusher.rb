Pusher.url = "https://6fc3679ef9bf33c75bf8:26dbdb6bd0625815e8d4@api.pusherapp.com/apps/183644"

$PUSHER_CLIENT = Pusher::Client.new(
  app_id: ENV['pusher_app_id'],
  key: ENV['pusher_key'],
  secret: ENV['pusher_secret']
)