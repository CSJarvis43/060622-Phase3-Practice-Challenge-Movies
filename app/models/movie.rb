class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles


    def cast_role(actor, character_name, salary)
        Role.create(actor: actor, character_name: character_name, salary: salary, movie_id: self.id)
    end

    def all_credits
        self.roles.map do |char|
            "#{char.character_name}: Played by #{char.actor.name}"
        end
    end

    def fire_actor(actor)
        bad_actor = self.roles.find(actor.id)
        bad_actor.destroy
    end


end