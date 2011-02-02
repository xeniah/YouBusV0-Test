class RouteStopsController < ApplicationController
  # GET /route_stops
  # GET /route_stops.xml
  def index
    @route_stops = RouteStop.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @route_stops }
    end
  end

  # GET /route_stops/1
  # GET /route_stops/1.xml
  def show
    @route_stop = RouteStop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @route_stop }
    end
  end

  # GET /route_stops/new
  # GET /route_stops/new.xml
  def new
    @route_stop = RouteStop.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @route_stop }
    end
  end

  # GET /route_stops/1/edit
  def edit
    @route_stop = RouteStop.find(params[:id])
  end

  # POST /route_stops
  # POST /route_stops.xml
  def create
    @route_stop = RouteStop.new(params[:route_stop])

    respond_to do |format|
      if @route_stop.save
        flash[:notice] = 'RouteStop was successfully created.'
        format.html { redirect_to(@route_stop) }
        format.xml  { render :xml => @route_stop, :status => :created, :location => @route_stop }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @route_stop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /route_stops/1
  # PUT /route_stops/1.xml
  def update
    @route_stop = RouteStop.find(params[:id])

    respond_to do |format|
      if @route_stop.update_attributes(params[:route_stop])
        flash[:notice] = 'RouteStop was successfully updated.'
        format.html { redirect_to(@route_stop) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @route_stop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /route_stops/1
  # DELETE /route_stops/1.xml
  def destroy
    @route_stop = RouteStop.find(params[:id])
    @route_stop.destroy

    respond_to do |format|
      format.html { redirect_to(route_stops_url) }
      format.xml  { head :ok }
    end
  end
end
