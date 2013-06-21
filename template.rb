gem 'infopark_rails_connector'
gem 'infopark_cloud_connector'
gem 'therubyracer', :require => "v8"

generate('rails_connector:install', '--force')
generate('jquery:install', '--force')

remove_file 'public/index.html'
gsub_file("app/views/layouts/application.html.erb", %r{<%= yield %>}, %{
    <%= yield %>
    <%= render :partial => 'search/mini_panel' %> |
    <%= link_to 'Login', user_path(:action => 'login') %>
})

# WebCRM
gsub_file('config/initializers/rails_connector.rb', '# :crm,', ' :crm,')
remove_file 'config/initializers/crm_connector.rb'
create_file 'config/initializers/crm_connector.rb', %{
require 'infopark_crm_connector'

custom_cloud_config = YAML.load_file(Rails.root.join(*%w[config custom_cloud.yml]))

Infopark::Crm.configure do |config|
  config.url = custom_cloud_config['crm']['url']
  config.login = custom_cloud_config['crm']['login']
  config.api_key = custom_cloud_config['crm']['api_key']
  config.http_host = custom_cloud_config['crm']['http_host']
  # config.live_server_groups_callback = lambda { |contact|
  #   case contact.account.name
  #   when 'My Company'
  #     %w(internal)
  #   else
  #     []
  #   end
  # }
end

RailsConnector::Configuration.use_recaptcha_on_user_registration = false
}