# class Spree::Gateway::Mercadopago < Spree::Gateway
#   def provider_class
#     Spree::Gateway::Mercadopago
#   end
#   def payment_source_class
#     Spree::CreditCard
#   end

#   def method_type
#     'mercadopago'
#   end

#   def purchase(amount, transaction_details, options = {})
#     #client_id = '5956324815003378'
#     #client_secret = 'lv95HPgHFnE6hrVPI8jkiV6r5Aoye0Nv'  
#     #mp_client = MercadoPago::Client.new(client_id, client_secret)
#     #mp_client.sandbox_mode(true)
#     ActiveMerchant::Billing::Response.new(true, 'success', {}, {})
#   end
# end