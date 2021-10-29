Rails.application.configure do
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=172800'
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.quiet = true
  config.assets.raise_runtime_errors = true
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  config.consider_all_requests_local = true
  config.force_ssl = false
  config.active_storage.service = :cloudinary
  config.paperclip_defaults = {
    storage: :s3,
    s3_credentials: {
      bucket: ENV.fetch('S3_BUCKET_NAME'),
      s3_host_name: 's3-sa-east-1.amazonaws.com',
      access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
      secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
      s3_region: ENV.fetch('AWS_REGION'),
    }
  }
end
