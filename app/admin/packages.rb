ActiveAdmin.register Package do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :time_frame
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :time_frame]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :name, :time_frame, rates_attributes: [:id, :price, :description,:_destroy]

  form do |f|
    f.inputs 'Details' do
      f.input :name
      f.input :time_frame
    end
    f.inputs 'Content' do
      f.has_many :rates,
                heading: 'Rates',
                new_record: 'Add Rate',
                allow_destroy: true do |b|
        b.input :description
        b.input :price
      end
    end
    f.actions
  end

end
