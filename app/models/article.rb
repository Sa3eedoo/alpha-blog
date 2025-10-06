class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 6, maximu: 100}
    validates :description, presence: true, length: {minimum: 10, maximu: 300}
end