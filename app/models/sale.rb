class Sale < ActiveRecord::Base

  belongs_to :merchant
  has_one :saleterminal
  belongs_to :salesrep
  
end
