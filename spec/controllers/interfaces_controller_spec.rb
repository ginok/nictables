require 'rails_helper'

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

RSpec.describe InterfacesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Interface. As you add validations to Interface, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { address: "192.168.1.1", name: "WebAP#1のフロントアドレス" }
  }

  let(:invalid_attributes) {
    { address: "256.0.0.1" }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InterfacesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all interfaces as @interfaces" do
      interface = Interface.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:interfaces)).to eq([interface])
    end
  end

  describe "GET show" do
    it "assigns the requested interface as @interface" do
      interface = Interface.create! valid_attributes
      get :show, {:id => interface.to_param}, valid_session
      expect(assigns(:interface)).to eq(interface)
    end
  end

  describe "GET new" do
    it "assigns a new interface as @interface" do
      get :new, {}, valid_session
      expect(assigns(:interface)).to be_a_new(Interface)
    end
  end

  describe "GET edit" do
    it "assigns the requested interface as @interface" do
      interface = Interface.create! valid_attributes
      get :edit, {:id => interface.to_param}, valid_session
      expect(assigns(:interface)).to eq(interface)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Interface" do
        expect {
          post :create, {:interface => valid_attributes}, valid_session
        }.to change(Interface, :count).by(1)
      end

      it "assigns a newly created interface as @interface" do
        post :create, {:interface => valid_attributes}, valid_session
        expect(assigns(:interface)).to be_a(Interface)
        expect(assigns(:interface)).to be_persisted
      end

      it "redirects to the created interface" do
        post :create, {:interface => valid_attributes}, valid_session
        expect(response).to redirect_to(Interface.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved interface as @interface" do
        post :create, {:interface => invalid_attributes}, valid_session
        expect(assigns(:interface)).to be_a_new(Interface)
      end

      it "re-renders the 'new' template" do
        post :create, {:interface => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        { address: "10.1.0.3", name: "WASABIのフロントVIP" }
      }

      it "updates the requested interface" do
        interface = Interface.create! valid_attributes
        put :update, {:id => interface.to_param, :interface => new_attributes}, valid_session
        interface.reload
        expect(interface.address).to eq(new_attributes[:address])
        expect(interface.name).to eq(new_attributes[:name])
      end

      it "assigns the requested interface as @interface" do
        interface = Interface.create! valid_attributes
        put :update, {:id => interface.to_param, :interface => valid_attributes}, valid_session
        expect(assigns(:interface)).to eq(interface)
      end

      it "redirects to the interface" do
        interface = Interface.create! valid_attributes
        put :update, {:id => interface.to_param, :interface => valid_attributes}, valid_session
        expect(response).to redirect_to(interface)
      end
    end

    describe "with invalid params" do
      it "assigns the interface as @interface" do
        interface = Interface.create! valid_attributes
        put :update, {:id => interface.to_param, :interface => invalid_attributes}, valid_session
        expect(assigns(:interface)).to eq(interface)
      end

      it "re-renders the 'edit' template" do
        interface = Interface.create! valid_attributes
        put :update, {:id => interface.to_param, :interface => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested interface" do
      interface = Interface.create! valid_attributes
      expect {
        delete :destroy, {:id => interface.to_param}, valid_session
      }.to change(Interface, :count).by(-1)
    end

    it "redirects to the interfaces list" do
      interface = Interface.create! valid_attributes
      delete :destroy, {:id => interface.to_param}, valid_session
      expect(response).to redirect_to(interfaces_url)
    end
  end

end
