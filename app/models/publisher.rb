class Publisher < ActiveRecord::Base
    has_many :books
    has_many :authors
    validates :name,presence:true,length:{minimum:3}
end
