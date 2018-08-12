class Photo < ApplicationRecord
def self.search(search)
where("title LIKE ?", "%#{search}%")
where("category LIKE ?", "%#{search}%")
where("description LIKE ?", "%#{search}%")
end
end