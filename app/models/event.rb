class Event
  include Mongoid::Document

  has_many :rooms

  field :name, type: String
  field :startdate, type: Date
  field :enddate, type: Date
  field :shortcode, type: String

  def sessions
    self.rooms.map { |room| room.sessions }.flatten
  end

end
