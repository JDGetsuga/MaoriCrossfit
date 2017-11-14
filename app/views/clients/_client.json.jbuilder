json.extract! client, :id, :nombre, :apellido, :cedula, :genero, :telefono, :email, :nacimiento, :direccion, :ciudad, :pais, :provincia, :created_at, :updated_at
json.url client_url(client, format: :json)
