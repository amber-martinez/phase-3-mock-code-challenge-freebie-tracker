class Freebie < ActiveRecord::Base
    belongs_to :dev 
    belongs_to :company

    def print_details
        return "#{self.dev.name} owns a #{self.name} from #{self.company.name}"
    end

end
