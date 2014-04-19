class Event
  include Mongoid::Document

  field :name, type: String
  field :startdate, type: Date
  field :enddate, type: Date

end
