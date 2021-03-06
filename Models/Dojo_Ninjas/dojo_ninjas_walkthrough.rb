This is what you'll do:
    Start a new project (the name of the project should be 'dojo_ninjas')
    Create appropriate tables/models.
    Using Ruby console:
    Create 3 dojos (insert some blank entries just to make sure it's allowing you to insert empty entries)

Change your models so that it does the following validations:

    For the dojo, require the presence of the name, city, and state; also require the state to be two characters long
        class Dojo < ApplicationRecord
            validates :name, :city, :state, presence: true
            validates :name, :city, length: { maximum: 255 }
            validates :state, length: { is: 2 } 
        end

    For the ninja, require the presence of the first name and last name
        Do this in the ninja.rb file
        class Ninja < ApplicationRecord
            validates :first_name, last_name, presence: true
        end

    Make sure that your ninja model belongs to the dojo (specify this in the model for both the dojo and the ninja)
        Do this in the ninja.rb file
        class Ninja < ApplicationRecord
            belongs_to :dojo 
            validates :first_name, last_name, presence: true
        end
        
        Do this in the dojo.rb file
        class Dojo < ApplicationRecord
            has_many :ninjas
            validates :name, :city, :state, presence: true
            validates :name, :city, length: { maximum: 255 }
            validates :state, length: { is: 2 } 
        end

Using ruby console

Delete the three dojos you created (e.g. Dojo.find(1).destroy; also look up destroy_all method)
    Dojo.destroy_all

Create 3 additional dojos by using Dojo.new.
    dojo1 = Dojo.create(name:"CodingDojo Silicon Valley",, city:"Moutain View", state:"CA")

Try to create a few more dojos but without specifying some of the required fields. Make sure that the validation works and generates the errors.
    dojo4 = Dojo.create => shows rollback error
    dojo4.errors.full_messages

Create 3 ninjas that belong to the first dojo you created.
    ninja1 = Ninja.create(first_name:"James", last_name:"Thames", dojo:Dojo.find(1))
    # have to include 'dojo' required field because we made the relationship/association before creating the ninjas

Create 3 more ninjas and have them belong to the second dojo you created.
Create 3 more ninjas and have them belong to the third dojo you created.

Make sure you understand how to get all of the ninjas for any dojo (e.g. get all the ninjas for the first dojo, second dojo, etc).
    dojo1.nanjas.all #shows all ninjas in the declared dojo

How would you only retrieve the first_name of the ninjas that belong to the second dojo and order the result by created_at DESC order?
    Ninja.where(dojo: Dojo.find(1).select(:first_name).order(created_at: :desc))
    --OR--
    Ninja.where(dojo: Dojo.first).select(:first_name).order(created_at: :desc))

Delete the second dojo. How could you adjust your model so that it automatically removes all of the ninjas associated with that dojo?
    Dojo.find(2).destroy

    class Dojo < ApplicationRecord
        has_many :ninjas, dependent: :destroy
        validates :name, :city, :state, presence: true
        validates :name, :city, length: { maximum: 255 }
        validates :state, length: { is: 2 } 
    end