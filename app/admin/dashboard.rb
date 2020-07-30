ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end

    columns do
      column do
        panel "Rates" do
          ul do
            Rate.last(5).map do |r|
              li link_to(r.description, admin_rate_path(r))
            end
          end
        end
      end
      column do
        panel "Package" do
          ul do 
            Package.all.map do |p|
              li link_to(p.name, admin_package_path(p))
            end
          end
        end
      end

      # columns do
      #   column class: "test"  do
      #     panel "Recent Pictures" do
      #       ul do
      #         Gallery.all.map do |g|
      #           g.title
      #           g.images.last(3).map do |i|
      #             img i.variant(combine_options: {auto_orient: true, gravity: 'center' }), class:"card-img"
      #           end
      #         end
      #       end
      #     end
      #   end
      # end

    end
  end # content
end
