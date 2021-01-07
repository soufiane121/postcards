require "jwt"
require "bcrypt"

module Types
  class QueryType < Types::BaseObject
    
    field :search_user, UserType, null: false do
      argument :id, Integer, required: true
    end

    field :cards, [Types::CardType], null: false do
      description "all cards with all prop"
    end

    field :gifts, [Types::GiftType], null: false do
      description "all gifts with all prop"
    end

    field :auto_login, UserType, null: false do
      argument :token, String, required: true
      description "for auto login you must provide valid token "
    end

    # "eyJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6InNvdWR4bm5maWRzM29rc2Y0QGxvbC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1NiJ9.myoQAv9CM1jcAlupmbB1CeB4d3Gu1GRjsAZd5copBCs"

    def search_user(id:)
      user = User.find_by(id: id)
      user
    end

    def cards
      return Card.all
    end

    def gifts
      return Gift.all
    end

    def auto_login(token:)
      decoded = decoded_token(token)
      @user = User.find_by(email: decoded[0]["email"])
      if @user && @user.password == decoded[0]["password"]
        @user
      else
        raise IOError.new(@user.errors.full_messages("you are not allowed"))
      end
    end

    private

    def decoded_token(token)
      begin
        answer = JWT.decode(token, Rails.application.credentials[:secret_key_base])
      rescue
        nil
      end
    end
  end
end
