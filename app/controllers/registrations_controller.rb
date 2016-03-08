class RegistrationsController < Devise::RegistrationsController  
  clear_respond_to 
  
  def new
    build_resource({})
    set_minimum_password_length
    respond_to do |format| 
      # format.html
      format.js { render layout: false }
    end
  end

  def create
    build_resource(sign_up_params)

    respond_to do |format|
      if resource.save
        sign_up(resource_name, resource)
        format.js {}
        # format.html { after_sign_up_path_for(resource) }
      else
        clean_up_passwords resource
        set_minimum_password_length
        format.js { render status: :unprocessable_entity }
        # format.html { render 'new' }
      end
    end
  end
end