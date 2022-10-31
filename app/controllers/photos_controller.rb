# POST /photos.json

class AccountVerificationDocumentsController < ApplicationController
  def create
    @photo Photo.new(photo_params)
    respond_to do |format|
      if @photo.save
      else
        format.html {render :new}
        format.json {render json: @photo.errors, status: :unprocessable_entity}
      end
    end
  end
  # PATCH/PUT /photos/1
  #PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html {redirect_to @photo, notice: 'Photo was successfully updated'}
        format.json {render :show, status: :ok, location: @photo}
      else
        format.html { render :edit }
        format.json render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html {redirect_to photos_url, notice: 'Photo was successfully destroyed.' }
      format.json {head :no_content}
    end
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set photo
    @photo Photo.find(params[:id])
  end
  #Only allow a list of trusted parameters through.
  def photo_params
    params.require(:photo).permit(:title, :image)
  end
end 
