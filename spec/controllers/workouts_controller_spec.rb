require 'spec_helper'

describe WorkoutsController do

  def mock_workout(stubs={})
    @mock_workout ||= mock_model(Workout, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all workouts as @workouts" do
      Workout.stub(:all) { [mock_workout] }
      get :index
      assigns(:workouts).should eq([mock_workout])
    end
  end

  describe "GET show" do
    it "assigns the requested workout as @workout" do
      Workout.stub(:find).with("37") { mock_workout }
      get :show, :id => "37"
      assigns(:workout).should be(mock_workout)
    end
  end

  describe "GET new" do
    it "assigns a new workout as @workout" do
      Workout.stub(:new) { mock_workout }
      get :new
      assigns(:workout).should be(mock_workout)
    end
  end

  describe "GET edit" do
    it "assigns the requested workout as @workout" do
      Workout.stub(:find).with("37") { mock_workout }
      get :edit, :id => "37"
      assigns(:workout).should be(mock_workout)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created workout as @workout" do
        Workout.stub(:new).with({'these' => 'params'}) { mock_workout(:save => true) }
        post :create, :workout => {'these' => 'params'}
        assigns(:workout).should be(mock_workout)
      end

      it "redirects to the created workout" do
        Workout.stub(:new) { mock_workout(:save => true) }
        post :create, :workout => {}
        response.should redirect_to(workout_url(mock_workout))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved workout as @workout" do
        Workout.stub(:new).with({'these' => 'params'}) { mock_workout(:save => false) }
        post :create, :workout => {'these' => 'params'}
        assigns(:workout).should be(mock_workout)
      end

      it "re-renders the 'new' template" do
        Workout.stub(:new) { mock_workout(:save => false) }
        post :create, :workout => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested workout" do
        Workout.should_receive(:find).with("37") { mock_workout }
        mock_workout.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :workout => {'these' => 'params'}
      end

      it "assigns the requested workout as @workout" do
        Workout.stub(:find) { mock_workout(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:workout).should be(mock_workout)
      end

      it "redirects to the workout" do
        Workout.stub(:find) { mock_workout(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(workout_url(mock_workout))
      end
    end

    describe "with invalid params" do
      it "assigns the workout as @workout" do
        Workout.stub(:find) { mock_workout(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:workout).should be(mock_workout)
      end

      it "re-renders the 'edit' template" do
        Workout.stub(:find) { mock_workout(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested workout" do
      Workout.should_receive(:find).with("37") { mock_workout }
      mock_workout.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the workouts list" do
      Workout.stub(:find) { mock_workout(:destroy => true) }
      delete :destroy, :id => "1"
      response.should redirect_to(workouts_url)
    end
  end

end
