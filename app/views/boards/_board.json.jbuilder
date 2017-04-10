json.extract! board, :id, :title, :content, :cafe_id, :created_at, :updated_at
json.url board_url(board, format: :json)