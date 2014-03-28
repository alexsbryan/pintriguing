  json.page params[:page]
  json.total_pages @pins_on_board.total_pages
  json.board do
   json.partial!("api/boards/board", :board => @board, :pobs => @pins_on_board)
   end
