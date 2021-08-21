class Booking
  include Mongoid::Document
  include Mongoid::Timestamps
  extend Enumerize
  
  field :room_type, type: String
  field :start_date, type: DateTime
  field :last_date, type: DateTime
  field :adults, type: Integer
  field :children, type: Integer

  belongs_to :user

  enumerize :room_type, in: ["Deluxe Rooms","Luxury Rooms","Luxury suites","Presidential Suites"]
  validates :last_date, :last_date, presence: true
end
