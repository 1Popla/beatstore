class Beat < ApplicationRecord

    has_one_attached :song_file

    has_one_attached :image
    
    belongs_to :user, optional: true

    validate :Title, :bpm, :genre, :scale, :price

    validates :description, length: { maximum: 500, too_long: "%{count} character is the maximum allowed."}

    validates :Title, length: { maximum: 100, too_long: "%{count} character is the maximum allowed." }

    validates :price, numericality: { only_integer: true }, length: { maximum: 9 }

    GENRE = %w{ HipHop EDM Trap Rap Oldschool Hyperpop Rock Lo-Fi Drill Grime Pluggnb }
    BPM = %w{ 50
        51 52 53 54 55 56 57 58 59 60
        61 62 63 64 65 66 67 68 69 70
        71 72 73 74 75 76 77 78 79 80
        81 82 83 84 85 86 87 88 89 90
        91 92 93 94 95 96 97 98 99 100
        101 102 103 104 105 106 107 108 109 110
        111 112 113 114 115 116 117 118 119 120
        121 122 123 124 125 126 127 128 129 130
        131 132 133 134 135 136 137 138 139 140
        141 142 143 144 145 146 147 148 149 150
        151 152 153 154 155 156 157 158 159 160
        161 162 163 164 165 166 167 168 169 170
        171 172 173 174 175 176 177 178 179 180
        181 182 183 184 185 186 187 188 189 190
        191 192 193 194 195 196 197 198 199 200 }

    
def image_as_thumbnail
    
    image.variant(resize_to_limit: [150, 150]).processed

end

end

