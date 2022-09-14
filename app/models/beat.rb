class Beat < ApplicationRecord

    
    has_one_attached :audio

    has_one_attached :image
    
    belongs_to :user, optional: true

    validate :Title, :bpm, :genre, :scale, :price

    validates :description, length: { maximum: 500, too_long: "%{count} character is the maximum allowed."}

    validates :Title, length: { maximum: 100, too_long: "%{count} character is the maximum allowed." }

    validates :price, numericality: { only_integer: true }, length: { maximum: 9 }

    
    GENRE = %w{ HipHop EDM Trap Rap Oldschool Hyperpop Rock Lo-Fi Drill Grime Pluggnb }
    BPM = [(50..200).to_a].flatten

    
def image_as_thumbnail
    
    image.variant(resize_to_limit: [150, 150]).processed

end

end

