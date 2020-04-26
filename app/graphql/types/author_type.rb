module Types
  class AuthorType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :bio, String, null: true
      field :articles, [Types::ArticleType], null: true
      field :article_count, Integer, null: true
   def article_count
     object.articles.count
   end
  end
end
