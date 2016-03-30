class ArtistProfilesController < ApplicationController
  
  before_action :au_user, except: [:show]
  before_action :set_artist_profile, only: [:show, :edit, :update, :destroy]


  # GET /artist_profiles
  # GET /artist_profiles.json
  def index
    @artist_profiles = ArtistProfile.all
  end

  # GET /artist_profiles/1
  # GET /artist_profiles/1.json
  def show
  end

  # GET /artist_profiles/new
  def new
    @artist_profile = ArtistProfile.new
  end

  # GET /artist_profiles/1/edit
  def edit
  end

  # POST /artist_profiles
  # POST /artist_profiles.json
  def create
    @artist_profile = ArtistProfile.new(artist_profile_params)

    respond_to do |format|
      if @artist_profile.save
        format.html { redirect_to @artist_profile, notice: 'Artist profile was successfully created.' }
        format.json { render :show, status: :created, location: @artist_profile }
      else
        format.html { render :new }
        format.json { render json: @artist_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_profiles/1
  # PATCH/PUT /artist_profiles/1.json
  def update
    respond_to do |format|
      if @artist_profile.update(artist_profile_params)
        format.html { redirect_to @artist_profile, notice: 'Artist profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist_profile }
      else
        format.html { render :edit }
        format.json { render json: @artist_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_profiles/1
  # DELETE /artist_profiles/1.json
  def destroy
    @artist_profile.destroy
    respond_to do |format|
      format.html { redirect_to "/admin/artists", notice: 'Artist profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_profile
      @artist_profile = ArtistProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_profile_params
      params.require(:artist_profile).permit(:a_name, :a_skills, :a_top_workshops, :a_img, :a_brief, :a_xtra, :a_dob, :a_edu)
    end

    def au_user
      if !spree_current_user
        redirect_to spree.login_path
      end
    end
end
