# -*- encoding: utf-8 -*-
# stub: rails_admin 1.4.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_admin".freeze
  s.version = "1.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.11".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Erik Michaels-Ober".freeze, "Bogdan Gaza".freeze, "Petteri Kaapa".freeze, "Benoit Benezech".freeze, "Mitsuhiro Shibuya".freeze]
  s.date = "2019-03-25"
  s.description = "RailsAdmin is a Rails engine that provides an easy-to-use interface for managing your data.".freeze
  s.email = ["sferik@gmail.com".freeze, "bogdan@cadmio.org".freeze, "petteri.kaapa@gmail.com".freeze]
  s.files = ["Gemfile".freeze, "LICENSE.md".freeze, "README.md".freeze, "Rakefile".freeze, "app/assets/images/rails_admin".freeze, "app/assets/images/rails_admin/aristo".freeze, "app/assets/images/rails_admin/aristo/images".freeze, "app/assets/images/rails_admin/aristo/images/bg_fallback.png".freeze, "app/assets/images/rails_admin/aristo/images/icon_sprite.png".freeze, "app/assets/images/rails_admin/aristo/images/progress_bar.gif".freeze, "app/assets/images/rails_admin/aristo/images/slider_handles.png".freeze, "app/assets/images/rails_admin/aristo/images/ui-icons_222222_256x240.png".freeze, "app/assets/images/rails_admin/aristo/images/ui-icons_454545_256x240.png".freeze, "app/assets/images/rails_admin/bootstrap".freeze, "app/assets/images/rails_admin/bootstrap/glyphicons-halflings-white.png".freeze, "app/assets/images/rails_admin/bootstrap/glyphicons-halflings.png".freeze, "app/assets/images/rails_admin/bullet_black.png".freeze, "app/assets/images/rails_admin/bullet_white.png".freeze, "app/assets/images/rails_admin/calendar.png".freeze, "app/assets/images/rails_admin/clock.png".freeze, "app/assets/images/rails_admin/colorpicker".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_background.png".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_hex.png".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_hsb_b.png".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_hsb_h.png".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_hsb_s.png".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_indic.gif".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_overlay.png".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_rgb_b.png".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_rgb_g.png".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_rgb_r.png".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_select.gif".freeze, "app/assets/images/rails_admin/colorpicker/colorpicker_submit.png".freeze, "app/assets/images/rails_admin/colorpicker/custom_background.png".freeze, "app/assets/images/rails_admin/colorpicker/custom_hex.png".freeze, "app/assets/images/rails_admin/colorpicker/custom_hsb_b.png".freeze, "app/assets/images/rails_admin/colorpicker/custom_hsb_h.png".freeze, "app/assets/images/rails_admin/colorpicker/custom_hsb_s.png".freeze, "app/assets/images/rails_admin/colorpicker/custom_indic.gif".freeze, "app/assets/images/rails_admin/colorpicker/custom_rgb_b.png".freeze, "app/assets/images/rails_admin/colorpicker/custom_rgb_g.png".freeze, "app/assets/images/rails_admin/colorpicker/custom_rgb_r.png".freeze, "app/assets/images/rails_admin/colorpicker/custom_submit.png".freeze, "app/assets/images/rails_admin/colorpicker/select.png".freeze, "app/assets/images/rails_admin/colorpicker/select2.png".freeze, "app/assets/images/rails_admin/colorpicker/slider.png".freeze, "app/assets/images/rails_admin/logo.png".freeze, "app/assets/images/rails_admin/magnifier.png".freeze, "app/assets/images/rails_admin/multiselect".freeze, "app/assets/images/rails_admin/multiselect/icon_sprite.png".freeze, "app/assets/images/rails_admin/multiselect/ui-icon-circle-triangle-n-dark.png".freeze, "app/assets/images/rails_admin/multiselect/ui-icon-circle-triangle-n-light.png".freeze, "app/assets/images/rails_admin/multiselect/ui-icon-circle-triangle-s-dark.png".freeze, "app/assets/images/rails_admin/multiselect/ui-icon-circle-triangle-s-light.png".freeze, "app/assets/javascripts/rails_admin".freeze, "app/assets/javascripts/rails_admin/bootstrap".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-affix.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-alert.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-button.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-carousel.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-collapse.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-dropdown.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-modal.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-popover.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-scrollspy.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-tab.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-tooltip.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-transition.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap-typeahead.js".freeze, "app/assets/javascripts/rails_admin/bootstrap/bootstrap.js".freeze, "app/assets/javascripts/rails_admin/custom".freeze, "app/assets/javascripts/rails_admin/custom/ui.coffee".freeze, "app/assets/javascripts/rails_admin/jquery-ui.js.erb".freeze, "app/assets/javascripts/rails_admin/jquery.colorpicker.js".freeze, "app/assets/javascripts/rails_admin/jquery.pjax.js".freeze, "app/assets/javascripts/rails_admin/ra.filter-box.js".freeze, "app/assets/javascripts/rails_admin/ra.filtering-multiselect.js".freeze, "app/assets/javascripts/rails_admin/ra.filtering-select.js".freeze, "app/assets/javascripts/rails_admin/ra.i18n.coffee".freeze, "app/assets/javascripts/rails_admin/ra.nested-form-hooks.coffee".freeze, "app/assets/javascripts/rails_admin/ra.remote-form.js".freeze, "app/assets/javascripts/rails_admin/ra.widgets.coffee".freeze, "app/assets/javascripts/rails_admin/rails_admin.js".freeze, "app/assets/javascripts/rails_admin/ui.coffee".freeze, "app/assets/stylesheets/rails_admin".freeze, "app/assets/stylesheets/rails_admin/aristo".freeze, "app/assets/stylesheets/rails_admin/aristo/images".freeze, "app/assets/stylesheets/rails_admin/aristo/images/bg_fallback.png".freeze, "app/assets/stylesheets/rails_admin/aristo/images/icon_sprite.png".freeze, "app/assets/stylesheets/rails_admin/aristo/images/progress_bar.gif".freeze, "app/assets/stylesheets/rails_admin/aristo/images/slider_handles.png".freeze, "app/assets/stylesheets/rails_admin/aristo/images/ui-icons_222222_256x240.png".freeze, "app/assets/stylesheets/rails_admin/aristo/images/ui-icons_454545_256x240.png".freeze, "app/assets/stylesheets/rails_admin/aristo/jquery-ui-1.8.7.custom.scss".freeze, "app/assets/stylesheets/rails_admin/base".freeze, "app/assets/stylesheets/rails_admin/base/README.txt".freeze, "app/assets/stylesheets/rails_admin/base/font-awesome-4-compability.scss".freeze, "app/assets/stylesheets/rails_admin/base/mixins.scss".freeze, "app/assets/stylesheets/rails_admin/base/theming.scss".freeze, "app/assets/stylesheets/rails_admin/base/variables.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_alerts.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_badges.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_breadcrumbs.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_button-groups.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_buttons.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_carousel.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_close.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_code.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_component-animations.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_dropdowns.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_forms.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_glyphicons.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_grid.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_input-groups.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_jumbotron.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_labels.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_list-group.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_media.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_mixins.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_modals.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_navbar.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_navs.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_normalize.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_pager.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_pagination.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_panels.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_popovers.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_print.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_progress-bars.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_responsive-embed.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_responsive-utilities.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_scaffolding.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_tables.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_theme.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_thumbnails.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_tooltip.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_type.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_utilities.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_variables.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/_wells.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/bootstrap.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_alerts.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_background-variant.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_border-radius.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_buttons.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_center-block.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_clearfix.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_forms.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_gradients.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_grid-framework.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_grid.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_hide-text.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_image.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_labels.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_list-group.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_nav-divider.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_nav-vertical-align.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_opacity.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_pagination.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_panels.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_progress-bar.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_reset-filter.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_resize.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_responsive-visibility.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_size.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_tab-focus.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_table-row.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_text-emphasis.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_text-overflow.scss".freeze, "app/assets/stylesheets/rails_admin/bootstrap/mixins/_vendor-prefixes.scss".freeze, "app/assets/stylesheets/rails_admin/custom".freeze, "app/assets/stylesheets/rails_admin/custom/mixins.scss".freeze, "app/assets/stylesheets/rails_admin/custom/theming.scss".freeze, "app/assets/stylesheets/rails_admin/custom/variables.scss".freeze, "app/assets/stylesheets/rails_admin/jquery.colorpicker.scss".freeze, "app/assets/stylesheets/rails_admin/ra.filtering-multiselect.scss".freeze, "app/assets/stylesheets/rails_admin/ra.widgets.scss".freeze, "app/assets/stylesheets/rails_admin/rails_admin.scss.erb".freeze, "app/assets/stylesheets/rails_admin/themes".freeze, "app/assets/stylesheets/rails_admin/themes/cerulean".freeze, "app/assets/stylesheets/rails_admin/themes/cerulean/mixins.scss".freeze, "app/assets/stylesheets/rails_admin/themes/cerulean/theming.scss".freeze, "app/assets/stylesheets/rails_admin/themes/cerulean/variables.scss".freeze, "app/assets/stylesheets/rails_admin/themes/default".freeze, "app/assets/stylesheets/rails_admin/themes/default/mixins.scss".freeze, "app/assets/stylesheets/rails_admin/themes/default/theming.scss".freeze, "app/assets/stylesheets/rails_admin/themes/default/variables.scss".freeze, "app/controllers/rails_admin".freeze, "app/controllers/rails_admin/application_controller.rb".freeze, "app/controllers/rails_admin/main_controller.rb".freeze, "app/helpers/rails_admin".freeze, "app/helpers/rails_admin/application_helper.rb".freeze, "app/helpers/rails_admin/form_builder.rb".freeze, "app/helpers/rails_admin/main_helper.rb".freeze, "app/views/kaminari".freeze, "app/views/kaminari/ra-twitter-bootstrap".freeze, "app/views/kaminari/ra-twitter-bootstrap/_gap.html.haml".freeze, "app/views/kaminari/ra-twitter-bootstrap/_next_page.html.haml".freeze, "app/views/kaminari/ra-twitter-bootstrap/_page.html.haml".freeze, "app/views/kaminari/ra-twitter-bootstrap/_paginator.html.haml".freeze, "app/views/kaminari/ra-twitter-bootstrap/_prev_page.html.haml".freeze, "app/views/kaminari/ra-twitter-bootstrap/without_count".freeze, "app/views/kaminari/ra-twitter-bootstrap/without_count/_next_page.html.haml".freeze, "app/views/kaminari/ra-twitter-bootstrap/without_count/_paginator.html.haml".freeze, "app/views/kaminari/ra-twitter-bootstrap/without_count/_prev_page.html.haml".freeze, "app/views/layouts/rails_admin".freeze, "app/views/layouts/rails_admin/_navigation.html.haml".freeze, "app/views/layouts/rails_admin/_secondary_navigation.html.haml".freeze, "app/views/layouts/rails_admin/_sidebar_navigation.html.haml".freeze, "app/views/layouts/rails_admin/application.html.haml".freeze, "app/views/layouts/rails_admin/pjax.html.haml".freeze, "app/views/rails_admin".freeze, "app/views/rails_admin/main".freeze, "app/views/rails_admin/main/_dashboard_history.html.haml".freeze, "app/views/rails_admin/main/_delete_notice.html.haml".freeze, "app/views/rails_admin/main/_form_boolean.html.haml".freeze, "app/views/rails_admin/main/_form_ck_editor.html.haml".freeze, "app/views/rails_admin/main/_form_code_mirror.html.haml".freeze, "app/views/rails_admin/main/_form_colorpicker.html.haml".freeze, "app/views/rails_admin/main/_form_datetime.html.haml".freeze, "app/views/rails_admin/main/_form_enumeration.html.haml".freeze, "app/views/rails_admin/main/_form_field.html.haml".freeze, "app/views/rails_admin/main/_form_file_upload.html.haml".freeze, "app/views/rails_admin/main/_form_filtering_multiselect.html.haml".freeze, "app/views/rails_admin/main/_form_filtering_select.html.haml".freeze, "app/views/rails_admin/main/_form_froala.html.haml".freeze, "app/views/rails_admin/main/_form_multiple_file_upload.html.haml".freeze, "app/views/rails_admin/main/_form_nested_many.html.haml".freeze, "app/views/rails_admin/main/_form_nested_one.html.haml".freeze, "app/views/rails_admin/main/_form_polymorphic_association.html.haml".freeze, "app/views/rails_admin/main/_form_simple_mde.haml".freeze, "app/views/rails_admin/main/_form_text.html.haml".freeze, "app/views/rails_admin/main/_form_wysihtml5.html.haml".freeze, "app/views/rails_admin/main/_submit_buttons.html.haml".freeze, "app/views/rails_admin/main/bulk_delete.html.haml".freeze, "app/views/rails_admin/main/dashboard.html.haml".freeze, "app/views/rails_admin/main/delete.html.haml".freeze, "app/views/rails_admin/main/edit.html.haml".freeze, "app/views/rails_admin/main/export.html.haml".freeze, "app/views/rails_admin/main/history.html.haml".freeze, "app/views/rails_admin/main/index.html.haml".freeze, "app/views/rails_admin/main/new.html.haml".freeze, "app/views/rails_admin/main/show.html.haml".freeze, "config/initializers/active_record_extensions.rb".freeze, "config/initializers/devise_patch.rb".freeze, "config/initializers/haml.rb".freeze, "config/initializers/mongoid_extensions.rb".freeze, "config/locales/rails_admin.en.yml".freeze, "config/routes.rb".freeze, "lib/generators".freeze, "lib/generators/rails_admin".freeze, "lib/generators/rails_admin/install_generator.rb".freeze, "lib/generators/rails_admin/templates".freeze, "lib/generators/rails_admin/templates/initializer.erb".freeze, "lib/generators/rails_admin/utils.rb".freeze, "lib/rails_admin".freeze, "lib/rails_admin.rb".freeze, "lib/rails_admin/abstract_model.rb".freeze, "lib/rails_admin/adapters".freeze, "lib/rails_admin/adapters/active_record".freeze, "lib/rails_admin/adapters/active_record.rb".freeze, "lib/rails_admin/adapters/active_record/abstract_object.rb".freeze, "lib/rails_admin/adapters/active_record/association.rb".freeze, "lib/rails_admin/adapters/active_record/property.rb".freeze, "lib/rails_admin/adapters/mongoid".freeze, "lib/rails_admin/adapters/mongoid.rb".freeze, "lib/rails_admin/adapters/mongoid/abstract_object.rb".freeze, "lib/rails_admin/adapters/mongoid/association.rb".freeze, "lib/rails_admin/adapters/mongoid/bson.rb".freeze, "lib/rails_admin/adapters/mongoid/extension.rb".freeze, "lib/rails_admin/adapters/mongoid/property.rb".freeze, "lib/rails_admin/bootstrap-sass".freeze, "lib/rails_admin/bootstrap-sass.rb".freeze, "lib/rails_admin/bootstrap-sass/compass_functions.rb".freeze, "lib/rails_admin/bootstrap-sass/sass_functions.rb".freeze, "lib/rails_admin/config".freeze, "lib/rails_admin/config.rb".freeze, "lib/rails_admin/config/actions".freeze, "lib/rails_admin/config/actions.rb".freeze, "lib/rails_admin/config/actions/base.rb".freeze, "lib/rails_admin/config/actions/bulk_delete.rb".freeze, "lib/rails_admin/config/actions/dashboard.rb".freeze, "lib/rails_admin/config/actions/delete.rb".freeze, "lib/rails_admin/config/actions/edit.rb".freeze, "lib/rails_admin/config/actions/export.rb".freeze, "lib/rails_admin/config/actions/history_index.rb".freeze, "lib/rails_admin/config/actions/history_show.rb".freeze, "lib/rails_admin/config/actions/index.rb".freeze, "lib/rails_admin/config/actions/new.rb".freeze, "lib/rails_admin/config/actions/show.rb".freeze, "lib/rails_admin/config/actions/show_in_app.rb".freeze, "lib/rails_admin/config/configurable.rb".freeze, "lib/rails_admin/config/fields".freeze, "lib/rails_admin/config/fields.rb".freeze, "lib/rails_admin/config/fields/association.rb".freeze, "lib/rails_admin/config/fields/base.rb".freeze, "lib/rails_admin/config/fields/factories".freeze, "lib/rails_admin/config/fields/factories/active_storage.rb".freeze, "lib/rails_admin/config/fields/factories/association.rb".freeze, "lib/rails_admin/config/fields/factories/carrierwave.rb".freeze, "lib/rails_admin/config/fields/factories/devise.rb".freeze, "lib/rails_admin/config/fields/factories/dragonfly.rb".freeze, "lib/rails_admin/config/fields/factories/enum.rb".freeze, "lib/rails_admin/config/fields/factories/paperclip.rb".freeze, "lib/rails_admin/config/fields/factories/password.rb".freeze, "lib/rails_admin/config/fields/factories/refile.rb".freeze, "lib/rails_admin/config/fields/group.rb".freeze, "lib/rails_admin/config/fields/types".freeze, "lib/rails_admin/config/fields/types.rb".freeze, "lib/rails_admin/config/fields/types/active_record_enum.rb".freeze, "lib/rails_admin/config/fields/types/active_storage.rb".freeze, "lib/rails_admin/config/fields/types/all.rb".freeze, "lib/rails_admin/config/fields/types/belongs_to_association.rb".freeze, "lib/rails_admin/config/fields/types/boolean.rb".freeze, "lib/rails_admin/config/fields/types/bson_object_id.rb".freeze, "lib/rails_admin/config/fields/types/carrierwave.rb".freeze, "lib/rails_admin/config/fields/types/ck_editor.rb".freeze, "lib/rails_admin/config/fields/types/code_mirror.rb".freeze, "lib/rails_admin/config/fields/types/color.rb".freeze, "lib/rails_admin/config/fields/types/date.rb".freeze, "lib/rails_admin/config/fields/types/datetime.rb".freeze, "lib/rails_admin/config/fields/types/decimal.rb".freeze, "lib/rails_admin/config/fields/types/dragonfly.rb".freeze, "lib/rails_admin/config/fields/types/enum.rb".freeze, "lib/rails_admin/config/fields/types/file_upload.rb".freeze, "lib/rails_admin/config/fields/types/float.rb".freeze, "lib/rails_admin/config/fields/types/froala.rb".freeze, "lib/rails_admin/config/fields/types/has_and_belongs_to_many_association.rb".freeze, "lib/rails_admin/config/fields/types/has_many_association.rb".freeze, "lib/rails_admin/config/fields/types/has_one_association.rb".freeze, "lib/rails_admin/config/fields/types/hidden.rb".freeze, "lib/rails_admin/config/fields/types/inet.rb".freeze, "lib/rails_admin/config/fields/types/integer.rb".freeze, "lib/rails_admin/config/fields/types/json.rb".freeze, "lib/rails_admin/config/fields/types/multiple_active_storage.rb".freeze, "lib/rails_admin/config/fields/types/multiple_carrierwave.rb".freeze, "lib/rails_admin/config/fields/types/multiple_file_upload.rb".freeze, "lib/rails_admin/config/fields/types/paperclip.rb".freeze, "lib/rails_admin/config/fields/types/password.rb".freeze, "lib/rails_admin/config/fields/types/polymorphic_association.rb".freeze, "lib/rails_admin/config/fields/types/refile.rb".freeze, "lib/rails_admin/config/fields/types/serialized.rb".freeze, "lib/rails_admin/config/fields/types/simple_mde.rb".freeze, "lib/rails_admin/config/fields/types/string.rb".freeze, "lib/rails_admin/config/fields/types/text.rb".freeze, "lib/rails_admin/config/fields/types/time.rb".freeze, "lib/rails_admin/config/fields/types/timestamp.rb".freeze, "lib/rails_admin/config/fields/types/uuid.rb".freeze, "lib/rails_admin/config/fields/types/wysihtml5.rb".freeze, "lib/rails_admin/config/groupable.rb".freeze, "lib/rails_admin/config/has_description.rb".freeze, "lib/rails_admin/config/has_fields.rb".freeze, "lib/rails_admin/config/has_groups.rb".freeze, "lib/rails_admin/config/hideable.rb".freeze, "lib/rails_admin/config/inspectable.rb".freeze, "lib/rails_admin/config/lazy_model.rb".freeze, "lib/rails_admin/config/model.rb".freeze, "lib/rails_admin/config/proxyable".freeze, "lib/rails_admin/config/proxyable.rb".freeze, "lib/rails_admin/config/proxyable/proxy.rb".freeze, "lib/rails_admin/config/sections".freeze, "lib/rails_admin/config/sections.rb".freeze, "lib/rails_admin/config/sections/base.rb".freeze, "lib/rails_admin/config/sections/create.rb".freeze, "lib/rails_admin/config/sections/edit.rb".freeze, "lib/rails_admin/config/sections/export.rb".freeze, "lib/rails_admin/config/sections/list.rb".freeze, "lib/rails_admin/config/sections/modal.rb".freeze, "lib/rails_admin/config/sections/nested.rb".freeze, "lib/rails_admin/config/sections/show.rb".freeze, "lib/rails_admin/config/sections/update.rb".freeze, "lib/rails_admin/engine.rb".freeze, "lib/rails_admin/extension.rb".freeze, "lib/rails_admin/extensions".freeze, "lib/rails_admin/extensions/cancan".freeze, "lib/rails_admin/extensions/cancan.rb".freeze, "lib/rails_admin/extensions/cancan/authorization_adapter.rb".freeze, "lib/rails_admin/extensions/cancancan".freeze, "lib/rails_admin/extensions/cancancan.rb".freeze, "lib/rails_admin/extensions/cancancan/authorization_adapter.rb".freeze, "lib/rails_admin/extensions/history".freeze, "lib/rails_admin/extensions/history.rb".freeze, "lib/rails_admin/extensions/history/auditing_adapter.rb".freeze, "lib/rails_admin/extensions/history/history.rb".freeze, "lib/rails_admin/extensions/paper_trail".freeze, "lib/rails_admin/extensions/paper_trail.rb".freeze, "lib/rails_admin/extensions/paper_trail/auditing_adapter.rb".freeze, "lib/rails_admin/extensions/pundit".freeze, "lib/rails_admin/extensions/pundit.rb".freeze, "lib/rails_admin/extensions/pundit/authorization_adapter.rb".freeze, "lib/rails_admin/support".freeze, "lib/rails_admin/support/csv_converter.rb".freeze, "lib/rails_admin/support/datetime.rb".freeze, "lib/rails_admin/support/hash_helper.rb".freeze, "lib/rails_admin/support/i18n.rb".freeze, "lib/rails_admin/version.rb".freeze, "lib/tasks/rails_admin.rake".freeze, "vendor/assets/javascripts/rails_admin".freeze, "vendor/assets/javascripts/rails_admin/bootstrap-datetimepicker.js".freeze, "vendor/assets/javascripts/rails_admin/moment-with-locales.js".freeze, "vendor/assets/stylesheets/rails_admin".freeze, "vendor/assets/stylesheets/rails_admin/_bootstrap-datetimepicker.scss".freeze, "vendor/assets/stylesheets/rails_admin/bootstrap-datetimepicker-build.scss".freeze]
  s.homepage = "https://github.com/sferik/rails_admin".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.7.6.2".freeze
  s.summary = "Admin for Rails".freeze

  s.installed_by_version = "2.7.6.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>.freeze, ["~> 3.1"])
      s.add_runtime_dependency(%q<coffee-rails>.freeze, ["~> 4.0"])
      s.add_runtime_dependency(%q<font-awesome-rails>.freeze, ["< 5", ">= 3.0"])
      s.add_runtime_dependency(%q<haml>.freeze, ["< 6", ">= 4.0"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, ["< 5", ">= 3.0"])
      s.add_runtime_dependency(%q<jquery-ui-rails>.freeze, ["< 7", ">= 5.0"])
      s.add_runtime_dependency(%q<kaminari>.freeze, ["< 2.0", ">= 0.14"])
      s.add_runtime_dependency(%q<nested_form>.freeze, ["~> 0.3"])
      s.add_runtime_dependency(%q<rack-pjax>.freeze, [">= 0.7"])
      s.add_runtime_dependency(%q<rails>.freeze, ["< 6", ">= 4.0"])
      s.add_runtime_dependency(%q<remotipart>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<sass-rails>.freeze, ["< 6", ">= 4.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<builder>.freeze, ["~> 3.1"])
      s.add_dependency(%q<coffee-rails>.freeze, ["~> 4.0"])
      s.add_dependency(%q<font-awesome-rails>.freeze, ["< 5", ">= 3.0"])
      s.add_dependency(%q<haml>.freeze, ["< 6", ">= 4.0"])
      s.add_dependency(%q<jquery-rails>.freeze, ["< 5", ">= 3.0"])
      s.add_dependency(%q<jquery-ui-rails>.freeze, ["< 7", ">= 5.0"])
      s.add_dependency(%q<kaminari>.freeze, ["< 2.0", ">= 0.14"])
      s.add_dependency(%q<nested_form>.freeze, ["~> 0.3"])
      s.add_dependency(%q<rack-pjax>.freeze, [">= 0.7"])
      s.add_dependency(%q<rails>.freeze, ["< 6", ">= 4.0"])
      s.add_dependency(%q<remotipart>.freeze, ["~> 1.3"])
      s.add_dependency(%q<sass-rails>.freeze, ["< 6", ">= 4.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<builder>.freeze, ["~> 3.1"])
    s.add_dependency(%q<coffee-rails>.freeze, ["~> 4.0"])
    s.add_dependency(%q<font-awesome-rails>.freeze, ["< 5", ">= 3.0"])
    s.add_dependency(%q<haml>.freeze, ["< 6", ">= 4.0"])
    s.add_dependency(%q<jquery-rails>.freeze, ["< 5", ">= 3.0"])
    s.add_dependency(%q<jquery-ui-rails>.freeze, ["< 7", ">= 5.0"])
    s.add_dependency(%q<kaminari>.freeze, ["< 2.0", ">= 0.14"])
    s.add_dependency(%q<nested_form>.freeze, ["~> 0.3"])
    s.add_dependency(%q<rack-pjax>.freeze, [">= 0.7"])
    s.add_dependency(%q<rails>.freeze, ["< 6", ">= 4.0"])
    s.add_dependency(%q<remotipart>.freeze, ["~> 1.3"])
    s.add_dependency(%q<sass-rails>.freeze, ["< 6", ">= 4.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
  end
end