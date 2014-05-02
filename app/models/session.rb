class Session
  include Mongoid::Document

  belongs_to :room

  field :name, type: String
  field :line_length, type: Integer, default: 0

end
