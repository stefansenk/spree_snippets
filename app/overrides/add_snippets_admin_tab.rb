if Spree.version.to_f < 4.0
 Deface::Override.new(
   virtual_path: 'spree/layouts/admin',
   name: 'snippet_admin_configurations_menu',
   insert_bottom: '#main-sidebar',
   partial: 'spree/admin/shared/snippets_sidebar_menu'
 )
else
 Deface::Override.new(
   virtual_path: 'spree/admin/shared/_main_menu',
   name: 'snippet_admin_configurations_menu',
   insert_bottom: 'nav',
   partial: 'spree/admin/shared/snippets_sidebar_menu'
 )
end
