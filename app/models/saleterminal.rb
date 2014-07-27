class Saleterminal < ActiveRecord::Base

has_one :sale
has_one :lease
has_one :merchant
has_one :salesrep
has_one :manufacturer

end
