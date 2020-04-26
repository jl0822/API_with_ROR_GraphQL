module Mutations
  class DestroyArticle < BaseMutation
    
      argument :id, Integer, required: true
      field :message, String, null: true
      field :error, String, null: true

      def resolve(id:)
      article = Article.find_by_id(id)
      return { error: "Article not exist" } unless article
      article.destroy!
      return { message: "Article was deleted sucessfully" }
      end
  end
end
