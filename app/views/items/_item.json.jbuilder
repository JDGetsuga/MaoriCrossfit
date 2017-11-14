json.extract! item, :id, :nombre, :preciocompra, :precioventa, :cantidad, :cantidadminima, :ganancia, :tipo, :supplier_id, :created_at, :updated_at
json.url item_url(item, format: :json)
