# Peddler

[![Build Status][travis]][badge]

![Peddler][mussels]

**Peddler** is a full-featured Ruby interface to the [Amazon Marketplace Web Service (MWS) APIs][docs].

## Configuration

Require the library:

```ruby
require 'peddler'
```

Or require an individual API:

```ruby
require 'mws/orders'
```

Instantiate a client to a particular API with the ISO 3166-1 two-letter country code of the marketplace and your seller credentials:

```ruby
client = MWS::Orders::Client.new('GB', 'key', 'secret', 'merchant_id')
```

You may also set the credentials as environment variables in your shell:

```sh
export AWS_ACCESS_KEY_ID=key
export AWS_SECRET_ACCESS_KEY=secret
export MERCHANT_ID=merchant_id
```

Then, instantiate with the country code:

```ruby
client = MWS::Orders::Client.new('US')
```

When developing, you may set the `EXCON_DEBUG` environment variable to debug the HTTP exchange.

## Usage

### Feeds

[The Feeds API][feeds-api] lets you upload inventory and order data to Amazon. You can also use this API to get information about the processing of feeds.

[Read the client API methods.][feeds-client-api]

### Fulfillment Inbound Shipment

With [the Fulfillment Inbound Shipment API][fulfillment-inbound-shipment-api], you can create and update inbound shipments of inventory in the Amazon Fulfillment Network. You can also request lists of inbound shipments or inbound shipment items based on criteria that you specify.

While this API is not implemented yet, you may still use the raw client like so:

```ruby
client = MWS::FulfillmentInboundShipment::Client.new('GB')
```

Pull requests are welcome!

### Fulfillment Inventory

[The Fulfillment Inventory API][fulfillment-inventory-api] lets you see what is available in your inventory. It's a real-time reporting mechanism that returns your current or recently-changed inventory supply in the Amazon fulfillment network.

While this API is not implemented yet, you may still use the raw client like so:

```ruby
client = MWS::FulfillmentInventory::Client.new('GB')
```

Pull requests are welcome!

### Fulfillment Outbound Shipment

[The Fulfillment Outbound Shipment API][fulfillment-outbound-shipment-api] is designed to help you integrate Fulfillment by Amazon with any payment processing application or inventory management system currently in use.

While this API is not implemented yet, you may still use the raw client like so:

```ruby
client = MWS::FulfillmentOutboundShipment::Client.new('GB')
```

Pull requests are welcome!

### Off Amazon Payments

[The Off-Amazon Payments API][off-amazon-payments-api] helps you to process payments for purchases made by buyers using Amazon Payments on your website. This API enables you to programmatically retrieve shipping and payment information provided by the buyer from their Amazon account and to authorize, capture, and refund funds to enable a variety of payments scenarios.

While this API is not implemented yet, you may still use the raw client like so:

```ruby
client = MWS::OffAmazonPayments::Client.new('GB')
```

Pull requests are welcome!

### Orders

[The Orders API][orders-api] allows you to list orders created or updated during a time frame you specify or retrieve information about specific orders.

[Read the client API methods.][orders-client-api]

### Products

[The Products API][products-api] helps you get information to match your products to existing product listings on Amazon Marketplace websites and to make sourcing and pricing decisions for listing those products on Amazon Marketplace websites.

While this API is not implemented yet, you may still use the raw client like so:

```ruby
client = MWS::Products::Client.new('GB')
```

Pull requests are welcome!

### Recommendations

[The Recommendations API][recommendations-api] enables you to programmatically retrieve Amazon Selling Coach recommendations by recommendation category. A recommendation is an actionable, timely, and personalized opportunity to increase your sales and performance.

While this API is not implemented yet, you may still use the raw client like so:

```ruby
client = MWS::Recommendations::Client.new('GB')
```

Pull requests are welcome!

### Reports

[The Reports API][reports-api] lets you request reports about your inventory and orders.

[Read the client API methods.][reports-client-api]

### Sellers

[The Sellers API][sellers-api] lets sellers retrieve information about their seller account, such as the marketplaces they participate in.

[Read the client API methods.][sellers-client-api]

### Subscriptions

[The Subscriptions API][subscriptions-api] enables you to subscribe to receive notifications that are relevant to your business with Amazon. With the operations in the Subscriptions API section, you can register to receive important information from Amazon without having to poll the Amazon MWS service. Instead, the information is sent directly to you when an event occurs to which you are subscribed.

While this API is not implemented yet, you may still use the raw client like so:

```ruby
client = MWS::Subscriptions::Client.new('GB')
```

Pull requests are welcome!

[travis]: https://travis-ci.org/papercavalier/peddler.png
[badge]:https://travis-ci.org/papercavalier/peddler
[mussels]: http://f.cl.ly/items/0W3V0A1Z110Q0x461b3H/mussels.jpeg
[docs]: https://developer.amazonservices.com/gp/mws/docs.html
[feeds-api]: http://docs.developer.amazonservices.com/en_US/feeds/index.html
[reports-api]: http://docs.developer.amazonservices.com/en_US/reports/index.html
[fulfillment-inbound-shipment-api]: http://docs.developer.amazonservices.com/en_US/fba_inbound/index.html
[fulfillment-inventory-api]: http://docs.developer.amazonservices.com/en_US/fba_inventory/index.html
[fulfillment-outbound-shipment-api]: http://docs.developer.amazonservices.com/en_US/fba_outbound/index.html
[off-amazon-payments-api]: http://docs.developer.amazonservices.com/en_US/off_amazon_payments/index.html
[orders-api]: http://docs.developer.amazonservices.com/en_US/orders/index.html
[products-api]: http://docs.developer.amazonservices.com/en_US/products/index.html
[recommendations-api]: http://docs.developer.amazonservices.com/en_US/recommendations/index.html
[sellers-api]: http://docs.developer.amazonservices.com/en_US/sellers/index.html
[Subscriptions-api]: http://docs.developer.amazonservices.com/en_US/subscriptions/index.html
[feeds-client-api]: https://github.com/papercavalier/peddler/blob/master/lib/mws/feeds/client.rb
[orders-client-api]: https://github.com/papercavalier/peddler/blob/master/lib/mws/orders/client.rb
[reports-client-api]: https://github.com/papercavalier/peddler/blob/master/lib/mws/reports/client.rb
[sellers-client-api]: https://github.com/papercavalier/peddler/blob/master/lib/mws/sellers/client.rb
