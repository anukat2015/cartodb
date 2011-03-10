module NavigationHelpers
  API_HOST = "http://api.localhost.lan"

  def homepage
    "/"
  end

  def login_path
    "/login"
  end

  def logout_path
    "/logout"
  end

  def dashboard_path
    "/dashboard"
  end

  def superadmin_path
    "/superadmin"
  end

  def api_query_url
    "#{api_url_prefix}/"
  end

  def api_tables_url
    "#{api_url_prefix}/tables"
  end

  def api_table_url(table_identifier)
    "#{api_url_prefix}/tables/#{table_identifier}"
  end

  private

  def api_url_prefix
    "#{API_HOST}/#{CartoDB::API::VERSION_1}"
  end

end

RSpec.configuration.include NavigationHelpers, :type => :acceptance
