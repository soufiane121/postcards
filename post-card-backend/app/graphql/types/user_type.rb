module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :email, String, null: false
    # field :address, Types::JsonbType, null: false
    field :gender, String, null: true
    field :age, GraphQL::Types::ISO8601DateTime, null: true
    field :img, String, null: true
    field :gifts, [GiftType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
