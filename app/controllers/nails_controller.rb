class NailsController < ApplicationController
  def index
    @nails = Nail.all
  end

  def new
    @brands = Brand.all
    @nail = Nail.new
  end
  
  def edit
    @nail = Nail.find(params[:id])
  end

  def update
    @nail = Nail.find(params[:id])

    if @nail.update(nail_params)
      redirect_to nails_path
    else
      render :edit, status: :unprocessable_identity
    end
  end

  def create
    @brands = Brand.all
    @nail = Nail.create(nail_params)

    if @nail.save
      redirect_to nails_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @nail = Nail.find(params[:id])

    @nail.destroy

    redirect_to nails_path, status: :see_other
  end

  private
    def nail_params
      params.require(:nail).permit(:brand_id, :code, :color, :amount)
    end
end
