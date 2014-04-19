class Line
  include Mongoid::Document

  field :name, type: String
  field :length, type: Integer

end
