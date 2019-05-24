require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3", :database => "dffile"

class Duck < ActiveRecord::Base
  validate do
    errors.add(:base, "Illegal duck name.") unless name[0] == 'D'
  end
end

my_duck = Duck.new
my_duck.name = "Donald"
p my_duck.valid?