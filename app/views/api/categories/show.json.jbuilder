
json.(@category, :id, :title, :created_at, :updated_at )

json.pins_on_boards @pins_on_boards do |pob|
    json.partial!("api/pins_on_boards/pin_on_board", :pob => pob)
end