class Search < ApplicationRecord
    
def search_articles
        articles = Article.all
        #articles = articles.where(["keywords LIKE ?","%#{keywords}%"]) if keywords.present?
        articles = articles.where(["title LIKE ?","%#{title1}%"]) if title1.present?
        #articles = articles.where(["author LIKE ?",author]) if author.present?
        #articles = articles.where(["from_year >= ?",from_year]) if from_year.present?
        #articles = articles.where(["language LIKE ?",language]) if language.present?
        articles = articles.where(["research_method LIKE ?",research_method1]) if research_method1.present?
        #articles = articles.where(["research_part LIKE ?",research_part]) if research_part.present?
        #articles = articles.where(["se_method LIKE ?",se_method]) if se_method.present?
        #articles = articles.where(["methodology LIKE ?",methodology]) if methodology.present?
        #articles = articles.where(["rating LIKE ?",rating]) if rating.present?
        
        
        return articles
end
end
