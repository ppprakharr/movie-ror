class Movie < ApplicationRecord
    validates :name, presence: :true
    validates :summary, presence: :true
    validates :director, presence: :true
    validates :year_of_release, presence: :true
    validates :country_code, presence: :true
    has_many_attached :pictures
end
