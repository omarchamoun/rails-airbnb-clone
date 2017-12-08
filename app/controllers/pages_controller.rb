class PagesController < ApplicationController
    helper_method :resource_name, :resource, :devise_mapping, :resource_class

  def home
    @flats = Flat.all
    @markers = Gmaps4rails.build_markers(@flats) do |flat, marker|
        marker.lat flat.latitude
        marker.lng flat.longitude
        marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
  end

  def edit_profile
    @user = current_user
  end

#   ## methods for modal
#   def resource_name
#     :registration
#   end

#   def resource
#     @resource ||= Registration.new
#   end

#   def resource_class
#     Registration
#   end

#   def devise_mapping
#     @devise_mapping ||= Devise.mappings[:registration]
#   end
# ##

end
