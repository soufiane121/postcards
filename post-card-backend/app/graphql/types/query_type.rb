module Types
  class QueryType < Types::BaseObject
    # type [UserType], null: false
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [Types::UserType], null: false do
      description "all users with all prop"
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

    def users
      return User.all
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
