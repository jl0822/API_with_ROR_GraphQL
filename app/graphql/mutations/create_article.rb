module Mutations
  class CreateArticle < BaseMutation

    argument :title, String, required: true
    argument :description, String, required: true
    argument :author_id, Integer, required: true
    field :article, Types::ArticleType, null: true
    field :errors, [String], null: false 

    def resolve(author_id:, **attributes)
    return { errors: ["Author not exist"] } if !Author.find_by_id(author_id)

    article = Author.find(author_id).articles.new(attributes)

    if article.save
    { article: article, errors: [] }

    else
    { article: nil, errors: article.errors.full_messages }
    end
    
  end
 end
end
