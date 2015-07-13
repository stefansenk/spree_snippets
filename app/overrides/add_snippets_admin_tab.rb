Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'snippet_admin_configurations_menu',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/snippets_sidebar_menu'
)
