class Search < ApplicationRecord
    
def search_articles
        articles = Article.all

      
    $where = " "

    for i in 0.."#{keywords1}".split('$').length-1
        
        
        if "#{keywords1}".split('$')[i].split('#')[0]=="-1" and  "#{keywords1}".split('$')[i].split('#')[2] =="-1"
            $where =$where+ " 1=1 "
         end
        
         if "#{keywords1}".split('$')[i].split('#')[0]=="-1" and  "#{keywords1}".split('$')[i].split('#')[2] !="-1"
                $where=$where+"  "+ "#{keywords1}".split('$')[i].split('#')[1]+" like  \'%" + "#{keywords1}".split('$')[i].split('#')[2]+'%\''
         end
           
         if "#{keywords1}".split('$')[i].split('#')[0] !="-1" and  "#{keywords1}".split('$')[i].split('#')[2] =="-1"
               $where =$where+ " 1=1 "
         end
        
         if "#{keywords1}".split('$')[i].split('#')[0] !="-1" and  "#{keywords1}".split('$')[i].split('#')[2] !="-1" 
               $where=$where +"  "+ "#{keywords1}".split('$')[i].split('#')[0]+" " + "#{keywords1}".split('$')[i].split('#')[1]+" like  \'%" + "#{keywords1}".split('$')[i].split('#')[2]+'%\''
         end

          
    end

    articles = articles.where($where)
       
  return articles

end
end

