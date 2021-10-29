json.extract! contato, :id, :nome, :mail, :mensagem, :created_at, :updated_at
json.url contato_url(contato, format: :json)
