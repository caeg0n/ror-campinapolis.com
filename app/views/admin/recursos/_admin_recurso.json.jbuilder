json.extract! admin_recurso, :id, :titulo, :desc, :img, :created_at, :updated_at
json.url admin_recurso_url(admin_recurso, format: :json)
