# # Configure Spree Preferences
# #
# # Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
# #       If you would like users to be able to update a setting with the Admin it should NOT be set here.
# #
# # Note: If a preference is set here it will be stored within the cache & database upon initialization.
# #       Just removing an entry from this initializer will not make the preference value go away.
# #       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
# #
# # In order to initialize a setting do:
# # config.setting_name = 'new value'
# Spree.config do |config|
#   # Example:
#   # Uncomment to stop tracking inventory levels in the application
#   # config.track_inventory_levels = false
#   attachment_config = {

#   s3_credentials: {
#     access_key_id:     "AKIAJNKSQPCJ6QPMPAUQ",
#     secret_access_key: "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",
#     bucket:            "anzelstore"
#   },

#   storage:        :s3,
#   s3_headers:     { "Cache-Control" => "max-age=31557600" },
#   s3_protocol:    "https",
#   bucket:         "anzelstore",
#   url:            ":s3_domain_url",

#   styles: {
#       mini:     "48x48>",
#       small:    "100x100>",
#       product:  "240x240>",
#       large:    "600x600>"
#   },

#   path:           "/:class/:id/:style/:basename.:extension",
#   default_url:    "/:class/:id/:style/:basename.:extension",
#   default_style:  "product"
# }

# attachment_config.each do |key, value|
#   Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
# end
# end

# Spree.user_class = "Spree::User"




#--------------------------------------
# Spree.config do |config|
#    # Example:
#    # Uncomment to override the default site name.
#   #  config.site_name = "Gazella Running Costumes"
#   #  config.logo = "store/rungazella.png"

#   #S3 configuration
#   if Rails.env.production? then
#        #production. Store images on S3.
#        # development will default to local storage
#       attachment_config = {
#       s3_credentials: {
#         access_key_id: "AKIAJNKSQPCJ6QPMPAUQ",
#         secret_access_key: "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",
#         bucket: "anzelstore",
#       },


#       storage:        :s3,
#       s3_headers:     { "Cache-Control" => "max-age=31557600" },
#       s3_protocol:    "https",
#       bucket:         "anzelstore",

      
#       default_url:   "/:class/:attachment/:id/:style/:basename.:extension",
#       default_style: "product",
#       }

#       attachment_config.each do |key, value|
#            Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
#       end
#   end
# Spree.user_class = "Spree::User"
# end

#--------------------------------------------
spree.config do |config|
  attachment_config={
  s3_credentials: {
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  bucket: ENV['ENV_BUCKET_NAME']
  },
  storage:     :s3,
  s3_headers:  {"Cache-Control"=>"max-age=31557600"},
  s3_protocol: "https",
  bucket:      ENV['S3_BUCKET_NAME'],
  url:         "url",
  styles:      {
                 mini:   "48x48>",
                 small:  "100x100>",
                 product:"240x240>",
                 large:  "600x600>"
               },
  path:        "/spree/:class/:id/:style/:basename.:extension",
  default_url: "/spree/products/:id/:style/:basename.:extension",
  default_style: "product",
  }
  attachment_config.each do |key,value|
  Spree::Image.attachment_defnitions[:attachment][key.to_sym]=value
  end
end













