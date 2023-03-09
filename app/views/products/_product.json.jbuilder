# json.extract! product, :id, :created_at, :updated_at
# json.url product_url(product, format: :json)

json.id product.id
json.name product.name
json.images product.images
json.price product.price
json.is_discounted? product.is_discounted?
json.tax product.tax
json.total product.total
json.description product.description
json.supplier product.supplier
# json.url product.url
