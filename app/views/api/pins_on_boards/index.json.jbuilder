

json.page params[:page]
json.total_pages @pins_on_boards.total_pages
json.pins_on_boards @pins_on_boards do |pob|
  json.partial!("api/pins_on_boards/pin_on_board", :pob => pob)
end
