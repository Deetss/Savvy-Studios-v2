ActiveAdmin.register Gallery do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, images: []
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    inputs 'Details' do
      input :title
      input :description
      li "Created at #{f.object.created_at}" unless f.object.new_record?
    end
    actions
    inputs do
      input :images, as: :file, input_html: { multiple: true, accept: "image/png, image/gif, image/jpeg" }
    end
    if f.object.images.any?
      render "image_sorting", {can_delete: true}
    end
    para "Press cancel to return to the list without saving."
    actions
  end
  

  show do 
    h3 "Drag and Drop to sort"
    render 'image_sorting', { gallery: gallery }
  end

  controller do
    defaults :finder => :find_by_slug
  end
  
end
