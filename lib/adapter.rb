class API

    BASE_URL = "https://www.dnd5eapi.co/api/skills/"


    def self.get_skills
        
        url = BASE_URL
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        data = JSON.parse(response.body)
        data = data["results"]



        binding.pry
    end 
end 


#I'm going to need to change my plan here, this requires me to access 19 different URLs
