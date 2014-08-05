class Worker < ActiveRecord::Base
 def create
    Worker.create(worker_params)
  end

  private

  def worker_params
    params.require(:worker).permit(:name, :telephone, :availability, :avcomment)
  end
  
  has_many :rates
end

