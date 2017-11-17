class Company < ApplicationRecord
    has_many :systems
    validates :title, presence:true, length: {minimum: 6}
    validates :text, presence:true, length: {minimum: 6}
end
