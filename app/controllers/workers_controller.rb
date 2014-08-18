#encoding: utf-8
class WorkersController < ApplicationController
  before_action :set_worker, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_admin!, only: [:home, :index, :show ,:about , :contact]
  
def home
  
end
def about
  
end
def contact
 
end
def steps
  
end
  # GET /workers
  # GET /workers.json
  def index
    @workers = Worker.includes(:rates).sort{|x,y| x.total_average <=> y.total_average}.reverse
  end

  # GET /workers/1
  # GET /workers/1.json
  def show
    @total_average = @worker.total_average
  end

  # GET /workers/new
  def new
    @worker = Worker.new
    @worker.rates.build
    
  end

  # GET /workers/1/edit
  def edit
  end
 

  # POST /workers
  # POST /workers.json
  def create
    @worker = Worker.new(worker_params)

    respond_to do |format|
      if @worker.save
        format.html { redirect_to @worker, notice: 'تم اضافة الفني بنجاح' }
        format.json { render :show, status: :created, location: @worker }
      else
        format.html { render :new }
        format.json { render json: @worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workers/1
  # PATCH/PUT /workers/1.json
  def update
    respond_to do |format|
      if @worker.update(worker_params)
        format.html { redirect_to @worker, notice: 'تم تعديل بيانات الفني بنجاح' }
        format.json { render :show, status: :ok, location: @worker }
      else
        format.html { render :edit }
        format.json { render json: @worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workers/1
  # DELETE /workers/1.json
  def destroy
    @worker.destroy
    respond_to do |format|
      format.html { redirect_to workers_url, notice: 'تمت ازالة الفني بنجاح ' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worker
      @worker = Worker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worker_params
      params.require(:worker).permit(:name, :telephone, :availability, :totalavg, :avcomment, :region, :worker_type,
      :rates_attributes => [:price, :cleanliness, :dealing, :quality, :punctuality, :comment])
    end
    
end
