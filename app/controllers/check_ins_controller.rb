class CheckInsController < ApplicationController
  # GET /check_ins
  # GET /check_ins.xml
  def index
    @check_ins = CheckIn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @check_ins }
    end
  end

  # GET /check_ins/1
  # GET /check_ins/1.xml
  def show
    @check_in = CheckIn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @check_in }
    end
  end

  # GET /check_ins/new
  # GET /check_ins/new.xml
  def new
    @check_in = CheckIn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @check_in }
    end
  end

  # GET /check_ins/1/edit
  def edit
    @check_in = CheckIn.find(params[:id])
  end

  # POST /check_ins
  # POST /check_ins.xml
  def create
    @check_in = CheckIn.new(params[:check_in])

    respond_to do |format|
      if @check_in.save
        flash[:notice] = 'CheckIn was successfully created.'
        format.html { redirect_to(@check_in) }
        format.xml  { render :xml => @check_in, :status => :created, :location => @check_in }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @check_in.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /check_ins/1
  # PUT /check_ins/1.xml
  def update
    @check_in = CheckIn.find(params[:id])

    respond_to do |format|
      if @check_in.update_attributes(params[:check_in])
        flash[:notice] = 'CheckIn was successfully updated.'
        format.html { redirect_to(@check_in) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @check_in.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /check_ins/1
  # DELETE /check_ins/1.xml
  def destroy
    @check_in = CheckIn.find(params[:id])
    @check_in.destroy

    respond_to do |format|
      format.html { redirect_to(check_ins_url) }
      format.xml  { head :ok }
    end
  end
end
