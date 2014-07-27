class HomeController < ApplicationController
  def index
   @promotionlist = Promotion.where("promo_startdate <=? AND promo_enddate >=?", Date.today, Date.today)
   @time = Time.now
  end
  
  def processing101
  
  end
  
  def terminaloptions
  
  end

  def about
 
  end

  def contact
  end
  
  def weekend
    @day = Time.now
    @to_saturday = 6 - @day.wday
  end
  
  def conditionsofuse
  
  end
  
  def privacypolicy
  
  end
  
  def announcements 
  
  end
  
  def support
  
  end
  
  def sitemap
  
  end
  
  def search
    @results=0
    if !params[:merchname].nil?
  	  @results=1
  	  @merch="%#{params[:merchname]}%"
  	  @merchlist = Merchant.where("merch_lname like ?",@merch)
    end
  end
end
