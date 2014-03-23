


json.(@user, :id, :first_name, :last_name, :email, :created_at, :updated_at )

json.boards @boards do |board|
  json.partial!("api/boards/board", :board => board, :pobs => board.board_assignments)
end