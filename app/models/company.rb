class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        Freebie.create(name: "#{item_name}", value: value, dev_id: dev)
    end

    def oldest_company

        # return Company.all.min_by { |founding_year| founding_year }
        

    end

end
