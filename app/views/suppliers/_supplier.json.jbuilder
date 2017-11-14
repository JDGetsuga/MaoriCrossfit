json.extract! supplier, :id, :titulo, :razonsocial, :telefono, :direccion, :email, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
