require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CatagoriesController do

  # This should return the minimal set of attributes required to create a valid
  # Catagory. As you add validations to Catagory, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CatagoriesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all catagories as @catagories" do
      catagory = Catagory.create! valid_attributes
      get :index, {}, valid_session
      assigns(:catagories).should eq([catagory])
    end
  end

  describe "GET show" do
    it "assigns the requested catagory as @catagory" do
      catagory = Catagory.create! valid_attributes
      get :show, {:id => catagory.to_param}, valid_session
      assigns(:catagory).should eq(catagory)
    end
  end

  describe "GET new" do
    it "assigns a new catagory as @catagory" do
      get :new, {}, valid_session
      assigns(:catagory).should be_a_new(Catagory)
    end
  end

  describe "GET edit" do
    it "assigns the requested catagory as @catagory" do
      catagory = Catagory.create! valid_attributes
      get :edit, {:id => catagory.to_param}, valid_session
      assigns(:catagory).should eq(catagory)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Catagory" do
        expect {
          post :create, {:catagory => valid_attributes}, valid_session
        }.to change(Catagory, :count).by(1)
      end

      it "assigns a newly created catagory as @catagory" do
        post :create, {:catagory => valid_attributes}, valid_session
        assigns(:catagory).should be_a(Catagory)
        assigns(:catagory).should be_persisted
      end

      it "redirects to the created catagory" do
        post :create, {:catagory => valid_attributes}, valid_session
        response.should redirect_to(Catagory.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved catagory as @catagory" do
        # Trigger the behavior that occurs when invalid params are submitted
        Catagory.any_instance.stub(:save).and_return(false)
        post :create, {:catagory => {}}, valid_session
        assigns(:catagory).should be_a_new(Catagory)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Catagory.any_instance.stub(:save).and_return(false)
        post :create, {:catagory => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested catagory" do
        catagory = Catagory.create! valid_attributes
        # Assuming there are no other catagories in the database, this
        # specifies that the Catagory created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Catagory.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => catagory.to_param, :catagory => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested catagory as @catagory" do
        catagory = Catagory.create! valid_attributes
        put :update, {:id => catagory.to_param, :catagory => valid_attributes}, valid_session
        assigns(:catagory).should eq(catagory)
      end

      it "redirects to the catagory" do
        catagory = Catagory.create! valid_attributes
        put :update, {:id => catagory.to_param, :catagory => valid_attributes}, valid_session
        response.should redirect_to(catagory)
      end
    end

    describe "with invalid params" do
      it "assigns the catagory as @catagory" do
        catagory = Catagory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Catagory.any_instance.stub(:save).and_return(false)
        put :update, {:id => catagory.to_param, :catagory => {}}, valid_session
        assigns(:catagory).should eq(catagory)
      end

      it "re-renders the 'edit' template" do
        catagory = Catagory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Catagory.any_instance.stub(:save).and_return(false)
        put :update, {:id => catagory.to_param, :catagory => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested catagory" do
      catagory = Catagory.create! valid_attributes
      expect {
        delete :destroy, {:id => catagory.to_param}, valid_session
      }.to change(Catagory, :count).by(-1)
    end

    it "redirects to the catagories list" do
      catagory = Catagory.create! valid_attributes
      delete :destroy, {:id => catagory.to_param}, valid_session
      response.should redirect_to(catagories_url)
    end
  end

end
