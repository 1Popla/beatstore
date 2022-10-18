class Beat < ApplicationRecord

    has_many :orderables
    has_many :carts, through: :orderables
    belongs_to :category


    has_one_attached :audio

    has_one_attached :image
    
    belongs_to :user, optional: true

    validate :title, :bpm, :genre, :scale, :price

    validates :description, length: { maximum: 500, too_long: "%{count} character is the maximum allowed."}

    validates :title, length: { maximum: 100, too_long: "%{count} character is the maximum allowed." }

    validates :price, numericality: { only_integer: true }, length: { maximum: 9 }

    validates :category_id, presence: true

    
    GENRE = %w{ HipHop EDM Trap Rap Oldschool Hyperpop Rock Lo-Fi Drill Grime Pluggnb }
    BPM = (50..200).to_a

    
def image_as_thumbnail
    
    image.variant(resize_to_limit: [150, 150]).processed

end

end

