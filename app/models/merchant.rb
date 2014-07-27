class Merchant < ActiveRecord::Base
validates :merch_lname, presence: true
validates :merch_fname, presence: true
validates :merch_email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
validates :merch_zip, numericality: true

has_many :sale, dependent:  :destroy
has_many :lease, dependent:  :destroy
has_many :current

  def name
    merch_lname + "," + merch_fname
  end
end
