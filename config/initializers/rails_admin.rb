RailsAdmin.config do |config|

  #############  Authorization  (not necessary for now) #############

  # config.authorize_with :cancan
  # config.attr_accessible_role do
  #   :admin
  # end

  #####################  Global configuration  ######################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['SB Rails', 'Admin']

  # Number of default rows per-page:
  config.default_items_per_page = 50

  # Exclude specific models (keep the others):
  # config.excluded_models = []

  # Include specific models (exclude the others):
  # config.included_models = []

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Label methods for model instances:
  # config.label_methods << :description # Default is [:name, :title]

  #####################  Actions configuration  #####################

  config.actions do
    # root actions
    dashboard                     # mandatory
    # collection actions
    index                         # mandatory
    new
    export
    bulk_delete
    # member actions
    show
    edit
    delete
    history_show
    show_in_app
  end

  ######################  Model configuration  ######################

  # config.model User do
  #   list do
  #     include_all_fields
  #   end

  #   show do
  #     include_all_fields
  #   end

  #   edit do
  #     include_all_fields
  #   end
  # end

  ################  Gems Integration configuration  ################

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

end
