class Room
  include Mongoid::Document

  belongs_to :event
  has_many :lines

  field :name, type: String
  field :capacity, type: Integer

end
