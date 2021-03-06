class GalleriesController < ApplicationController
  load_and_authorize_resource
  # GET /galleries
  # GET /galleries.json
  def index
    @galleries = Gallery.all
    @title = "Photo Galleries"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @galleries }
    end
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
    @gallery = Gallery.find(params[:id])
    @title = "Photo Gallery"

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gallery }
    end
  end

  # GET /galleries/new
  # GET /galleries/new.json
  def new
    @gallery = Gallery.new
    @gallery.galleryphotos.build
    @title = "New Gallery"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gallery }
    end
  end

  # GET /galleries/1/edit
  def edit
    @gallery = Gallery.find(params[:id])
    @gallery.galleryphotos.build 
    @title = "Edit Gallery"
  end

  # POST /galleries
  # POST /galleries.json
  def create
    @gallery = Gallery.new(gallery_params)
    @title = "Create Gallery"

    respond_to do |format|
      if @gallery.save
        if params[:photos]
          params[:photos].each { |image|
            @gallery.galleryphotos.create(photo: image)
        }
	end
        format.html { redirect_to @gallery, notice: 'Gallery was successfully created.' }
        format.json { render json: @gallery, status: :created, location: @gallery }
      else
        format.html { render action: "new" }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /galleries/1
  # PUT /galleries/1.json
  def update
    @gallery = Gallery.find(params[:id])
    @title = "Update Gallery"

    respond_to do |format|
      if @gallery.update(gallery_params)
        if params[:photos]
          params[:photos].each { |image|
            @gallery.galleryphotos.create(photo: image)
        }
	end
        format.html { redirect_to @gallery, notice: 'Gallery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    @title = "Destroy Gallery"

    respond_to do |format|
      format.html { redirect_to galleries_url }
      format.json { head :no_content }
    end
  end

  private
   def gallery_params
     params.require(:gallery).permit(:id, :title, :description, galleryphotos_attributes: [:id, :gallery_id, :photo_file_name, :photo_content_type, :photo_file_size, :photo_description, :photo, :_destroy ])
   end
end
