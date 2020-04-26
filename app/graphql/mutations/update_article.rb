module Mutations
    class UpdateArticle < BaseMutation
    
        argument :id, Integer, required: true
        argument :title, String, required: true
        argument :description, String, required: true
        argument :author_id, Integer, required: true
        field :article, Types::ArticleType, null: true
        field :errors, [String], null: false
        
        def resolve(id:, author_id:, **attributes)
        article = Article.find_by_id(id)
        return { errors: ["Article not exist"] } unless article
        author = Author.find_by_id(author_id)
        return { errors: ["Author not exist"] } unless author

        article.assign_attributes(attributes)

        if article.save
        { article: article, errors: [] }
        else
        { article: nil, errors: article.errors.full_messages }
        end
       end
       
    end
  end