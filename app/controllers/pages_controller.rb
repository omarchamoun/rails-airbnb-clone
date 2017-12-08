class PagesController < ApplicationController
  def home
    @flats = Flat.all
    @markers = Gmaps4rails.build_markers(@flats) do |flat, marker|
        marker.lat flat.latitude
        marker.lng flat.longitude
        marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
  end
end
