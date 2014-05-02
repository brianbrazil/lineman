class Line
  include Mongoid::Document

  belongs_to :room

  field :name, type: String
  field :length, type: Integer, default: 0

end
