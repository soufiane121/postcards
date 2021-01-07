module Mutations
  class Login < BaseMutation

    field :token, String, null: false
    field :user, Types::UserType, null: false

    argument :email, String, required: true
    argument :password, String, required: true

    def resolve(**args)
      user = User.find_by(email: args[:email])
      if user && user.authenticate(args[:password])
        token = encode_token(args[:email], args[:password])
         {user: user, token: token }
      else
        raise IOError.new(user.errors.full_messages)
      end
    end

    private

    def encode_token(email, password)
      payload = { email: email, password: password }
      coded = JWT.encode(payload, Rails.application.credentials[:secret_key_base])
    end

  end
end
