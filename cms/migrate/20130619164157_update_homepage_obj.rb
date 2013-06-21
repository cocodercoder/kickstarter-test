class UpdateHomepageObj < ::RailsConnector::Migration
  def up
    create_login_page_obj
    create_reset_password_page_obj
    update_homepage_obj_class
    update_homepage_obj
  end

  def create_login_page_obj
    login_obj = create_obj(
      _path: "/website/en/_configuration/login",
      _obj_class: "LoginPage",
      headline: 'Login',
      show_in_navigation: 'Yes'
    )
  end

  def create_reset_password_page_obj
    login_obj = create_obj(
      _path: "/website/en/_configuration/login/reset-password",
      _obj_class: "ResetPasswordPage",
      headline: 'Reset Password',
      show_in_navigation: 'Yes'
    )
  end

  def update_homepage_obj_class
    attributes = get_obj_class('Homepage')['attributes']

    login_page_link_attributes = {
      name: 'login_page_link',
      type: :linklist,
      title: 'Login Page',
      max_size: 1,
    }

    attributes << login_page_link_attributes

    update_obj_class('Homepage', attributes: attributes)
  end

  def update_homepage_obj
    update_obj(
      Obj.find_by_path("/website/en").id,
      login_page_link: [{ url: "/website/en/_configuration/login" }],
    )
  end
end