json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :promo_title, :promo_description, :promo_imagepath, :promo_startdate, :promo_enddate
  json.url promotion_url(promotion, format: :json)
end
