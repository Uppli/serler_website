class Search < ApplicationRecord
    
def search_articles
        articles = Article.all
        
      #  articles = articles.where(["keywords in (?)","%#{keywords1}%"]) if keywords1.present?
     #   articles = articles.where(["title LIKE ?","%#{title1}%"]) if title1.present?
     #   articles = articles.where(["author LIKE ?","%#{author1}%"]) if author1.present?
      #  articles = articles.where(["from_year >= ?",from_year]) if from_year.present?
     #   articles = articles.where(["to_year <= ?",to_year]) if to_year.present?
     #   articles = articles.where(["language LIKE ?","%#{language1}%"]) if language1.present?
      #  articles = articles.where(["research_method LIKE ?",research_method1]) if research_method1.present?
     #   articles = articles.where(["research_part LIKE ?",research_part1]) if research_part1.present?
      #  articles = articles.where(["se_method LIKE ?",se_method1]) if se_method1.present?
     #   articles = articles.where(["methodology LIKE ?",methodology1]) if methodology1.present?
     #   articles = articles.where(["rating = ?",rating1]) if rating1.present?
     
 
   # $i = 0
   # $number="#{keywords1}".split('$').length
  
      #  articles = articles.where([' xs ? ',$number])
      
    $where =" "

    for i in 0.."#{keywords1}".split('$').length-1
        

       if  "#{keywords1}".split('$')[i].split('#')[2] =="-1"
        
       else
           if "#{keywords1}".split('$')[i].split('#')[0]=="-1"
             $where=$where+ "#{keywords1}".split('$')[i].split('#')[1]+" like  \'%" + "#{keywords1}".split('$')[i].split('#')[2]+'%\''
           else
             $where=$where +" "+ "#{keywords1}".split('$')[i].split('#')[0]+" "+ "#{keywords1}".split('$')[i].split('#')[1]+" like  \'%" + "#{keywords1}".split('$')[i].split('#')[2]+'%\''
           end 
       end
          
    end


     

         articles = articles.where($where)
  
       
     # articles= articles.where(["1=?",articles])
     # articles = articles.where(["keywords in (?)","%#{keywords1}%"]) if keywords1.present?
        
        return articles
end
end

