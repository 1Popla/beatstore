class Orderable < ApplicationRecord
  belongs_to :beat
  belongs_to :cart

  def total
    beat.price * quantity
  end
end
