require "rest-client"
require "nokogiri"
require "open-uri"
class Card < ApplicationRecord
    has_many :gifts, dependent: :destroy
    has_many :users, through: :gifts
    validates :name, :category, :img, presence: true



    def self.scrape_cards
       answer = open("http://www.postable.com/cards")
       doc = Nokogiri::HTML(answer)
       p doc
       byebug
    end
end
