module Api
  module V1
    class UserSerializer < ActiveModel::Serializer
      # Quais atributos vamos devolver no json
      attributes :id, :name, :email, :tweets_count, :followers_count, :following_count, :photo

      # O object dentro do Serializer é o nosso próprio usuário
      def tweets_count
        object.tweets.count
      end

      def followers_count
        object.followers_by_type('User').count
      end

      def following_count
        object.following_users.count
      end
    end
  end
end
