class Hotel 
  attr_accessor :name, :rating, :city, :total_rooms, :features
  @@hotels = []
  def initialize(name:, rating:, city:, total_rooms:, features:)
  @name = name
  @rating = rating
  @city = city
  @total_rooms = total_rooms
  @features = features
  @@hotels << self 
  end
  def self.all
  @@hotels 
  end   
  def self.last
  @@hotels [-1]
  end
  def stars
  '⭐️'* @rating
  end
  def slug
    @name.downcase.strip.gsub(' ', '_')
    end 
end


