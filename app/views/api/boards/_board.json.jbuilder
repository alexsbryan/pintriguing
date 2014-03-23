json.(board, :id, :name, :description, :owner_id, :created_at, :updated_at )

pobs ||= nil

unless pobs.nil?
  json.pins_on_boards(pobs) do |pob|
     json.partial!("api/pins_on_boards/pin_on_board", :pob => pob)
  end
end


