json.extract! user, :id, :nombre, :apellido, :direccion, :cedula, :fechanacimiento, :telefono, :estado, :fechacontrato, :fechafincontrato, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
