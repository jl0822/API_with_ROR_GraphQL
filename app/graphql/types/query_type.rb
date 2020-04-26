module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :articles,[Types::ArticleType], null: false 
 
    field :article, Types::ArticleType, null: false do
    argument :id, ID, required: true
    end

    def articles
    Article.all
    end

    def article(id:)
    Article.find(id)
    end
    
  end
end
