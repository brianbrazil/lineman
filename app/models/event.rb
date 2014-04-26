class Event
  include Mongoid::Document

  has_many :rooms

  field :name, type: String
  field :startdate, type: Date
  field :enddate, type: Date
  field :shortcode, type: String

  def lines
    self.rooms.map { |room| room.lines }.flatten
  end

end
