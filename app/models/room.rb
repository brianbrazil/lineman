class Room
  include Mongoid::Document

  has_many :lines
  belongs_to :event

  field :name, type: String
  field :capacity, type: Integer

end
