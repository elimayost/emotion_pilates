class WorkoutsController < ApplicationController

  before_filter :authenticate_user!

  # GET /workouts
  # GET /workouts.xml
  def index
    @workouts = Workout.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workouts }
    end
  end

  # GET /workouts/1
  # GET /workouts/1.xml
  def show
    @workout = Workout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workout }
    end
  end

  # GET /workouts/new
  # GET /workouts/new.xml
  def new
    @workout = Workout.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workout }
    end
  end

  # GET /workouts/1/edit
  def edit
    @workout = Workout.find(params[:id])
  end

  # POST /workouts
  # POST /workouts.xml
  def create
    @workout = Workout.new(params[:workout])

    respond_to do |format|
      if @workout.save
        format.html { redirect_to(@workout, :notice => 'Workout was successfully created.') }
        format.xml  { render :xml => @workout, :status => :created, :location => @workout }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workouts/1
  # PUT /workouts/1.xml
  def update
    @workout = Workout.find(params[:id])

    respond_to do |format|
      if @workout.update_attributes(params[:workout])
        format.html { redirect_to(@workout, :notice => 'Workout was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.xml
  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy

    respond_to do |format|
      format.html { redirect_to(workouts_url, :notice => 'Workout was successfully deleted.') }
      format.xml  { head :ok }
    end
  end

  # Unattach MP3 attachement
  def unattach_intro
    @workout = Workout.find(params[:id])
    @workout.update_attribute(:mp3_intro, nil)
  end

  def unattach_part_one
    @workout = Workout.find(params[:id])
    @workout.update_attribute(:mp3_part_one, nil)
  end

  def unattach_part_two
    @workout = Workout.find(params[:id])
    @workout.update_attribute(:mp3_part_two, nil)
  end

  def unattach_part_three
    @workout = Workout.find(params[:id])
    @workout.update_attribute(:mp3_part_three, nil)
  end

  def unattach_unguided
    @workout = Workout.find(params[:id])
    @workout.update_attribute(:mp3_unguided, nil)
  end

end

