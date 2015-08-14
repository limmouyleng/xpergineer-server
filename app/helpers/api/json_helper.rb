module Api::JsonHelper
  def article_json(article)
    obj = {}
    obj[:title] = article.title
    obj[:text] = article.text
    obj[:type] = article.type
    obj
  end
end