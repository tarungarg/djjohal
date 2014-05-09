class SingersController < ApplicationController

  before_filter :singer_record, :only => [:show, :edit, :destroy, :update]
  # GET /singers
  # GET /singers.xml
  def index
    @singers = Singer.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /singers/1
  # GET /singers/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /singers/new
  # GET /singers/new.xml
  def new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /singers/1/edit
  def edit
  end

  # POST /singers
  # POST /singers.xml
  def create
    @singer = Singer.new(params[:singer])

    respond_to do |format|
      if @singer.save
        format.html { redirect_to singers_path }
      else
        flash[:notice] = "Enter the name"
        format.html { redirect_to singers_path }
      end
    end
  end

  # PUT /singers/1
  # PUT /singers/1.xml
  def update
    respond_to do |format|
      if @singer.update_attributes(params[:singer])
        flash[:notice] = 'Singer was successfully updated.'
        format.html { redirect_to(@singer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @singer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /singers/1
  # DELETE /singers/1.xml
  def destroy
    @singer.destroy

    respond_to do |format|
      format.html { redirect_to(singers_url) }
    end
  end

  private 

  def singer_record
    @singer = Singer.find(params[:id])
  end
end
