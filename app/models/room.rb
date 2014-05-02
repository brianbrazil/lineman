class Room
  include Mongoid::Document

  has_many :sessions
  belongs_to :event

  field :name, type: String
  field :capacity, type: Integer

end
