class DefaultSchedulesController < ApplicationController
  # GET /default_schedules
  # GET /default_schedules.xml
  def index
    @default_schedules = DefaultSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @default_schedules }
    end
  end

  # GET /default_schedules/1
  # GET /default_schedules/1.xml
  def show
    @default_schedule = DefaultSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @default_schedule }
    end
  end

  # GET /default_schedules/new
  # GET /default_schedules/new.xml
  def new
    @default_schedule = DefaultSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @default_schedule }
    end
  end

  # GET /default_schedules/1/edit
  def edit
    @default_schedule = DefaultSchedule.find(params[:id])
  end

  # POST /default_schedules
  # POST /default_schedules.xml
  def create
    @default_schedule = DefaultSchedule.new(params[:default_schedule])

    respond_to do |format|
      if @default_schedule.save
        flash[:notice] = 'DefaultSchedule was successfully created.'
        format.html { redirect_to(@default_schedule) }
        format.xml  { render :xml => @default_schedule, :status => :created, :location => @default_schedule }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @default_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /default_schedules/1
  # PUT /default_schedules/1.xml
  def update
    @default_schedule = DefaultSchedule.find(params[:id])

    respond_to do |format|
      if @default_schedule.update_attributes(params[:default_schedule])
        flash[:notice] = 'DefaultSchedule was successfully updated.'
        format.html { redirect_to(@default_schedule) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @default_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /default_schedules/1
  # DELETE /default_schedules/1.xml
  def destroy
    @default_schedule = DefaultSchedule.find(params[:id])
    @default_schedule.destroy

    respond_to do |format|
      format.html { redirect_to(default_schedules_url) }
      format.xml  { head :ok }
    end
  end
end
