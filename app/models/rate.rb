class Rate < ActiveRecord::Base
   def create
    Rate.create(rate_params)
  end

  private

  def rate_params
    params.require(:rate).permit(:quality, :cleanliness, :dealing, :price, :punctuality, :Review)
  end
  
  belongs_to :worker
end
