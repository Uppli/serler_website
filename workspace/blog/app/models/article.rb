class Article < ApplicationRecord
    validates :title, presence: true,
                    length: { minimum: 5 }
    def self.search(search)
        where("title LIKE ? OR text LIKE ? ", "%#{search}%", "%#{search}%") #"%#{search}%", "%#{search}%", "%#{search}%",
    end                
                    
end
