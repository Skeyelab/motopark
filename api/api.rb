class Api < Grape::API
  include PadrinoGrape

  get :last_spot do

    { id: Spot.last.id,
      latitude: Spot.last.latitude,
      longitude: Spot.last.longitude }
  end

  desc "Create a spot."
  params do
    requires :latitude, type: String, desc: "Latitude."
    requires :longitude, type: String, desc: "longitude."
  end
  post :create_spot do
    Spot.create!({
                   latitude: params[:latitude],
                   longitude: params[:longitude]
    })
  end


end
