module Types
  class QueryType < Types::BaseObject
    # type [UserType], null: false
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :search_user, UserType, null: false do
      argument :id, Integer, required: true
    end

    field :users, [UserType], null: false do
      argument :secret, String, required: true
    end

    field :cards, [Types::CardType], null: false do
      description "all cards with all prop"
    end

    field :gifts, [Types::GiftType], null: false do
      description "all gifts with all prop"
    end
    # field :find_user, [Types::UserType], null: false do
    #   #  description "find specific user with id"
    #    argument :id, Integer, require: true
    # end

    def search_user(id:)
      # debugger
     user= User.find_by(id: id)
     user
    end
    def users(secret:)
      if secret == "123"
        return User.all
      else 
        raise IOError.new "not allowed"
      end
    end
    def cards
      return Card.all
    end
    def gifts
      return Gift.all
    end

    # def find_user(id:)
    #   return user = User.find_by(id: id)
    # end


  end
end
