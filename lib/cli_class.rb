class CLI

    def main
        fetch_skills
    end 
    
    def fetch_skills
        API.get_skills
    end 

end 