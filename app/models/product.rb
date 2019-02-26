class Product < ApplicationRecord
  scope :search, ->(query) { where('name ilike ?', "%#{query}%") }

  def self.by_price(min, max)
    result = all

    result = result('price >= ?', min) if min.present?
    result = result('price <= ?', max) if max.present?

    result
  end
end
