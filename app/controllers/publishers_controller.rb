class PublishersController < ApplicationController
  def new
	  @page_title ='Agregar nueva Editorial'
	  @publisher = Publisher.new
  end

  def create
	  @publisher = Publisher.new(publisher_params)
	  if @publisher.save
		  flash[:notice] = "Editorial creada"
		  redirect_to publishers_path
	  else
		  render 'new'
	  end
  end

  def update
	  @publisher = Publisher.find(params[:id])
	  @publisher.update(publisher_params)
	  flash[:notice] = 'Editorial Actualizado'
	  redirect_to publishers_path
  end

  def edit
	  @publisher = Publisher.find(params[:id])
  end

  def destroy
	  @publisher = Publish.find(params[:id])
	  @publisher.destroy
	  flash[:notice] = 'Editorial Borrado'
	  redirect_to publishers_path
  end

  def index
	  @publishers = Publisher.all
  end

  def show
  end
	private
	def publisher_params
		params.require(:publisher).permit(:name)
	end
end
