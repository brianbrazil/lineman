class Room
  include Mongoid::Document

  field :name, type: String
  field :capacity, type: Integer

end
