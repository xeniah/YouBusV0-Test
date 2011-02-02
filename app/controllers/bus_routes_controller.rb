class BusRoutesController < ApplicationController
  # GET /bus_routes
  # GET /bus_routes.xml
  def index
    @bus_routes = BusRoute.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bus_routes }
    end
  end

  # GET /bus_routes/1
  # GET /bus_routes/1.xml
  def show
    @bus_route = BusRoute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bus_route }
    end
  end

  # GET /bus_routes/new
  # GET /bus_routes/new.xml
  def new
    @bus_route = BusRoute.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bus_route }
    end
  end

  # GET /bus_routes/1/edit
  def edit
    @bus_route = BusRoute.find(params[:id])
  end

  # POST /bus_routes
  # POST /bus_routes.xml
  def create
    @bus_route = BusRoute.new(params[:bus_route])

    respond_to do |format|
      if @bus_route.save
        flash[:notice] = 'BusRoute was successfully created.'
        format.html { redirect_to(@bus_route) }
        format.xml  { render :xml => @bus_route, :status => :created, :location => @bus_route }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bus_route.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bus_routes/1
  # PUT /bus_routes/1.xml
  def update
    @bus_route = BusRoute.find(params[:id])

    respond_to do |format|
      if @bus_route.update_attributes(params[:bus_route])
        flash[:notice] = 'BusRoute was successfully updated.'
        format.html { redirect_to(@bus_route) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bus_route.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_routes/1
  # DELETE /bus_routes/1.xml
  def destroy
    @bus_route = BusRoute.find(params[:id])
    @bus_route.destroy

    respond_to do |format|
      format.html { redirect_to(bus_routes_url) }
      format.xml  { head :ok }
    end
  end
end
