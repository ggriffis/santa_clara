ActiveAdmin.register Business do
  permit_params :name, :contact_name, :contact_email, 
                deals_attributes: [:short_description, :full_description, :percent_discount, :_destroy]

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :contact_name
      f.input :contact_email
    end
    f.inputs "Deals" do
      f.has_many :deals do |d|
        d.input :short_description
        d.input :full_description
        d.input :percent_discount
        d.input :_destroy, :as => :boolean
      end
    f.actions
    end
  end
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
