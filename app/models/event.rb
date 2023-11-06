class Event < ApplicationRecord
  #quid de l'admin part
  has_many :participations
  has_many :events, through: :participations

  validates :start_date, presence: true
  #code pour indiquer pas de modif ou créa dans le passé
  validate :start_date_in_future

  validates :duration, presence: true, numericality: { greater_than: 0, multiple_of: 5 }
  
  validates :title, presence: true, length: { in: 5..140 }
  
  validates :description, presence: true, length: { in: 20..1000 }
  
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }
  
  validates :location, presence: true
  
  private

  def start_date_in_future
    if start_date.present? && start_date < Date.today.to_s
      errors.add(:start_date, "La date ne peut pas être dans le passé")
    end
  end

end