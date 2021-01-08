require "bcrypt"
require "jwt"

module Mutations
  class CreateUser < BaseMutation

    # create costume payload
    field :token, String, null: true
    field :user, Types::UserType, null: true

    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true
    argument :address, GraphQL::Types::JSON, required: true
    argument :age, GraphQL::Types::ISO8601DateTime, required: true

    def resolve(**arg)
      user = User.new(first_name: arg[:first_name], last_name: arg[:last_name], email: arg[:email], address: arg[:address], age: arg[:age])
      user.password = arg[:password]
      if user.save
        token = encode_token(user.email, user.password_digest)
        UserMailer.welcome_email.deliver_now
        { user: user, token: token }
      else
        raise IOError.new(user.errors.full_messages)
        # user.errors.full_messages
      end
    end

    private

    def encode_token(email, password)
      payload = { email: email, password: password }
      coded = JWT.encode(payload, Rails.application.credentials[:secret_key_base])
    end
  end
end
