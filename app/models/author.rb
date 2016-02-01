class Author < ActiveRecord::Base
    has_many :books
    validates :first_name,presence:true
    validates :last_name,presence:true,length:{minimum:2}

end
