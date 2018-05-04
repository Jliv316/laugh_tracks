class Comedian < ActiveRecord::Base
    has_many :specials

    def find_specials
        specials_array = comedian.specials
        names = specials_array.map do |special|
            special.name
        end
        return names
    end
end


