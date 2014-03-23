json.array!(@pins_on_boards) do |pob|
  json.partial!("api/pins_on_boards/pin_on_board", :pob => pob)
end