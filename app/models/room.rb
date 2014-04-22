class Room
  include Mongoid::Document

  has_many :lines

  field :name, type: String
  field :capacity, type: Integer

end
