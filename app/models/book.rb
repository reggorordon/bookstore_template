class Book < ActiveRecord::Base
    belongs_to :catagory
    belongs_to :author
    belongs_to :publisher
end
