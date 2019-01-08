require "rest-client"
require "json"
require "pry"


def get_character_movies_from_api(character_name)

 response_string = RestClient.get("http://www.swapi.co/api/people/")
 response_hash = JSON.parse(response_string)
 response_hash['results'].each do |x,y|
   x.each do |key, val|
     array = []
     if key == 'films'
        val.each do |film|
          hash = {}
          response_string2 = RestClient.get(film)
          response_hash2 = JSON.parse(response_string2)
          array.push(response_hash2)
        end
        return array
      end
    end
 end
end




def print_movies(films)

 films.each do |movie|
   movie.each do |info, data|
     if info == 'title'
       puts data
     end
   end
  end
end



def show_character_movies(character)
 films = get_character_movies_from_api(character)
 print_movies(films)
end
