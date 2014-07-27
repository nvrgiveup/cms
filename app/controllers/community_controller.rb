class CommunityController < ApplicationController
  def index
    @merchantlist = Merchant.order("merch_lname")
  end
end
