module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def flash_class_for flash_type
    { success: 'flash-success', error: 'flash-error', alert: 'flash-alert', notice: 'flash-info' }[flash_type.to_sym] || flash_type.to_s
  end
end
