
class SyncPagesController < ApplicationController
  # GET /sync_pages
  # GET /sync_pages.json
  before_filter :authorize
  def index
    @sync_pages = SyncPage.all
    @user = User.find(session[:user_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sync_pages }
    end
  end

  # GET /sync_pages/1
  # GET /sync_pages/1.json
  def show
    @sync_page = SyncPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sync_page }
    end
  end

  # GET /sync_pages/new
  # GET /sync_pages/new.json
  def new
    @sync_page = SyncPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sync_page }
    end
  end

  # GET /sync_pages/1/edit
  def edit
    @sync_page = SyncPage.find(params[:id])
  end

  # POST /sync_pages
  # POST /sync_pages.json
  def create
    @sync_page = SyncPage.new(params[:sync_page])
    @page = 2
    @user = User.find(session[:user_id])
    if (params[:current_page])
      @page = params[:current_page]
      @user.current_page = @page
    end

    respond_to do |format|
      if @sync_page.save
        format.html { redirect_to @sync_page, notice: 'Sync page was successfully created.' }
        format.json { render json: @sync_page, status: :created, location: @sync_page }
      else
        format.html { render action: "new" }
        format.json { render json: @sync_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sync_pages/1
  # PUT /sync_pages/1.json
  def update
    @sync_page = SyncPage.find(params[:id])

    respond_to do |format|
      if @sync_page.update_attributes(params[:sync_page])
        format.html { redirect_to @sync_page, notice: 'Sync page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sync_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sync_pages/1
  # DELETE /sync_pages/1.json
  def destroy
    @sync_page = SyncPage.find(params[:id])
    @sync_page.destroy

    respond_to do |format|
      format.html { redirect_to sync_pages_url }
      format.json { head :no_content }
    end
  end
end
