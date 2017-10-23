class VersesController < ApplicationController

	def index
		@verses = Verse.all
	end

	def show
		@verse= Verse.find(params[:id])
	end

	def new
		@verse=Verse.new
	end

	def create
	verse= Verse.new(verse_params)
		if verse.save
			redirect_to verses_path
		else 
			render :new
		end 
	end 
		private def verse_params
		params.require(:verse).permit(:content)
	end

	def edit
		  @verse = Verse.find(params[:id])
	end

	def update
    verse = Verse.find(params[:id])

    if verse.update(verse_params)
      redirect_to verse_params
    else
      render :edit
    end
  end

  def destroy
    Verse.find(params[:id]).destroy
    redirect_to verses_path
  end

  private def verse_params
    params.require(:verse).permit(:content, :id)
  end
end
