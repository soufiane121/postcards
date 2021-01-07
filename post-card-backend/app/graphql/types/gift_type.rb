module Types
  class GiftType < Types::BaseObject
    field :id, ID, null: false
    field :receiver_fname, String, null: false
    field :receiver_lname, String, null: false
    field :receiver_age, GraphQL::Types::ISO8601DateTime, null: false
    field :receiver_address, GraphQL::Types::JSON, null: false
    field :user_id, Integer, null: false
    field :card_id, Integer, null: false
    field :users, [UserType], null: false
    field :cards, [CardType], null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
