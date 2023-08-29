class Event < ApplicationRecord
  validates :title, presence: true
  validates :date, presence: true
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :attendances
  has_many :attendees, :through => :attendances, foreign_key: 'event_id'

  scope :past, -> { where('date < ?', DateTime.current.to_date) }

  scope :upcoming, -> { where('date >= ?', DateTime.current.to_date) }
end
