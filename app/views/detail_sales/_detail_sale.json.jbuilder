json.extract! detail_sale, :id, :descripcion, :cantidad, :precio, :descuento, :subtotal, :tipo, :headersale_id, :item_id, :user_id, :created_at, :updated_at
json.url detail_sale_url(detail_sale, format: :json)
