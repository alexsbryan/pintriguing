board = pob.board
pin = pob.pin
owner = board.owner


json.id pob.id
json.description pob.description
json.owner_name ("#{owner.first_name} #{owner.last_name}")
json.(board, :owner_id)
json.pin_id pin.id
json.(pin, :img_url)
json.(pin, :url)
json.board_name board.name
json.board_id board.id
json.created_at pob.created_at
json.updated_at pob.updated_at


