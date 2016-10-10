class Article < ApplicationRecord
    validates :title, presence: true,
                    length: { minimum: 5 }
    def self.search(search)
        where("title LIKE ? OR keywords LIKE ? or author like ?", "%#{search}%", "%#{search}%","%#{search}%") #"%#{search}%", "%#{search}%", "%#{search}%",
    end                
                    
end
