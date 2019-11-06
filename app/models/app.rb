class App < ApplicationRecord
 validates_presence_of :name
 validates_uniqueness_of :token
 has_many :chats

end
