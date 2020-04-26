module Types
  class MutationType < Types::BaseObject
    field :destroy_article, mutation: Mutations::DestroyArticle
    field :update_article, mutation: Mutations::UpdateArticle
    field :create_article, mutation: Mutations::CreateArticle
   
  end
end
