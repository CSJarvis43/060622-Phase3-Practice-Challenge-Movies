class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles


    def total_salary
        self.roles.map { |role| role.salary }.sum
    end

    def blockbusters
        self.movies.where("box_office_earnings > ?", 50_000_000)
    end

    def self.most_successful

        big_actors = Actor.all.map { |act| {actor: act, total_salary: act.total_salary} }
        big_actors.sort_by { |h| h[:total_salary] }



        # big_actors = Actor.all.select do |act|
        #     act.total_salary > 0
        # end
        # big_actors.limit(1)
    end


end