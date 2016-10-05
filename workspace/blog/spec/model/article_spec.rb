require 'spec_helper'

describe article do

  before do
    @article = Article.new(Language: "English"#, File_Type: "document", Abstract: "abcdef",  DOI: "10.10.123.1" , File_Size: "10.23" 
    #File_URl: "serler website", Author: "Paul" , Content: "softwate development methods", Keywords: "SDM", title: "abcdef",
    #text: "ashish12", keywords: "SE", research_method: "UCD", research_part: "Usability testing", se_method: "sre", 
    #methodology: "agile", rating: "2"
    )
  end
  it { should respond_to(:Language) }
  it { should respond_to(:File_Type) }
  it { should respond_to(:Abstract) }
  it { should respond_to(:DOI) }
  it { should respond_to(:File_Size) }
  it { should respond_to(:File_URl)}
  it { should respond_to(:Author)}
  it { should respond_to(:Content)}
   it { should respond_to(:Keywords)}
   it { should respond_to(:title)}
    it { should respond_to(:text)}
     it { should respond_to(:keywords)}
      it { should respond_to(:research_method)}
       it { should respond_to(:research_part)}
   it { should respond_to(:se_method)}
     it { should respond_to(:methodology)}
       it { should respond_to(:rating)}
         
end
