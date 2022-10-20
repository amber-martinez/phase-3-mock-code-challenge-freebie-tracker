class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.any? { |freebie| freebie.name == item_name }
    end

    def give_away(dev, freebie)

        self.freebies.collect do |dev_freebie|
            if dev_freebie.name == freebie.name
                freebie.dev = dev
                puts "The previous owner of the #{freebie.name} was #{self.name}. Now the owner is #{dev.name}.🍦"
            else
                puts "This free does not belong to the dev and cannot give it away."
            end
        end

    end

end
