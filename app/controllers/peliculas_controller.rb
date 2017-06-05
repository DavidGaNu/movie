class PeliculasController < ApplicationController
before_action :authenticate_user!, exept: [:index, :show]
	def index
		@peliculas = Pelicula.all
   	end
   
	def show
		@pelicula = Pelicula.find(params[:id])
		if @pelicula.name == 'Thor'
			@nom_de_peli = 1
		elsif @pelicula.name == 'cenicienta'
			@nom_de_peli = 2
		else
			@nom_de_peli = 3
		end
	end
	   
	def new
		@pelicula = Pelicula.new
	end
	   
	def create
		@pelicula = Pelicula.new(name: params[:pelicula][:name],
								stars: params[:pelicula][:stars],
								main_actor: params[:pelicula][:main_actor],
								year: params[:pelicula][:year])
		if @pelicula.save
			redirect_to peliculas_path, :notice => "Se ha guardado la peli!"
		else
			render 'new'	
		end
	end
	   
	def edit
		@pelicula = Pelicula.find(params[:id])
	end
	   
	def update
		@pelicula = Pelicula.find(params[:id])
 
		if @pelicula.update_attributes(name: params[:pelicula][:name],
								stars: params[:pelicula][:stars],
								main_actor: params[:pelicula][:main_actor],
								year: params[:pelicula][:year])

			redirect_to peliculas_path, :notice => 'éxito!'
		else
			render 'edit'
		end

	end
	   
	def destroy
		@pelicula = Pelicula.find(params[:id]).destroy
    	# @pelicula.destroy
    	redirect_to peliculas_path, :notice => "La teva pelicula ha sigut eliminada"

    	#render 'index'
	end

end
