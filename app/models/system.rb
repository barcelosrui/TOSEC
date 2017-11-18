class System < ApplicationRecord
    belongs_to :company
    belongs_to :systemsType
    validates :name, presence: true, length: { minimum: 3 }
end
