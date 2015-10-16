json.array!(@category_news) do |category_news|
  json.extract! category_news, :id
  json.url category_news_url(category_news, format: :json)
end
