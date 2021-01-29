require "rest-client"
require "nokogiri"
require "open-uri"

class Card < ApplicationRecord
  has_many :gifts, dependent: :destroy
  has_many :users, through: :gifts
  validates :name, :category, :img, presence: true

  def self.scrape_cards
    answer = open("http://www.postable.com/cards")
    doc = Nokogiri::HTML.parse(answer)
    list = doc.css(".card-block")[0].css("a").to_a
    # ar[0].attributes.to_a.flatten[1].value
    #    list[0].attributes.to_a

    list.each do |ele, idx|
      if idx != 0
        url = ele.attributes.to_a.flatten[1].value
        byebug
        getting_all_cards(url)
      end
    end
  end

  private
  def getting_all_cards(url)
    # add logic here to re fetch data and 
  end

end
