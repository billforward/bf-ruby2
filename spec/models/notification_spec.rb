=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Bfwd::Notification
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Notification' do
  before do
    # run before each test
    @instance = Bfwd::Notification.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Notification' do
    it 'should create an instance of Notification' do
      expect(@instance).to be_instance_of(Bfwd::Notification)
    end
  end
  describe 'test attribute "created"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "changed_by"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "updated"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "domain"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Notification", "Organization", "OrganizationGateway", "Product", "User", "Subscription", "Profile", "ProductRatePlan", "Client", "Invoice", "PricingComponentValue", "Account", "PricingComponentValueChange", "PricingComponentTier", "PricingComponent", "PricingCalculation", "Coupon", "CouponDiscount", "CouponDefinition", "CouponInstance", "CouponModifier", "CouponRule", "CouponBookDefinition", "CouponBook", "InvoiceLine", "Webhook", "WebhookSubscription", "SubscriptionCancellation", "NotificationSnapshot", "InvoicePayment", "Payment", "PaymentMethod", "PaymentMethodSubscriptionLink", "DunningLine", "CybersourceToken", "Card", "Alias", "PaypalSimplePaymentReconciliation", "FreePaymentReconciliation", "LocustworldPaymentReconciliation", "CouponInstanceExistingValue", "TaxLine", "TaxationStrategy", "TaxationLink", "Address", "AmendmentPriceNTime", "Authority", "UnitOfMeasure", "SearchResult", "Amendment", "AuditLog", "Password", "Username", "FixedTermDefinition", "FixedTerm", "Refund", "CreditNote", "Receipt", "AmendmentCompoundConstituent", "APIConfiguration", "StripeToken", "BraintreeToken", "BalancedToken", "AuthorizeNetToken", "PaypalToken", "SpreedlyToken", "SagePayToken", "TrustCommerceToken", "PayVisionToken", "SagePayOutstandingTransaction", "SagePayEnabledCardType", "SagePayTransaction", "GatewayRevenue", "Migration", "AdhocSubscription", "SubscriptionCharge", "ComponentChange", "Verification", "UsageRoundingStrategies", "PricingComponentValueMigrationChargeAmendmentMapping", "AmendmentDiscardAmendment", "EntityTime", "AggregatingComponent", "PricingComponentMigrationValue", "MetadataKeyValue", "Metadata", "AggregationLink", "BFPermission", "Role", "PermissionLink", "PayVisionTransaction", "KashToken", "DataSynchronizationJob", "DataSynchronizationJobError", "DataSynchronizationConfiguration", "DataSynchronizationAppConfiguration", "AggregationChildrenResponse", "InvoiceLinePayment", "EmailSubscription", "EmailProvider", "TimeResponse", "Email", "RevenueAttribution", "Unknown"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.domain = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "action"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Accept", "Active", "AwaitingPayment", "AwaitingRefund", "Cancelled", "Completed", "Created", "Error", "Expiring", "Expired", "Failed", "Migrated", "NeedsAmendments", "Paid", "Pending", "Provisioned", "Refunded", "Reject", "Trial", "Unknown", "Unpaid", "Updated", "Voided", "PaymentFailed"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.action = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "organization_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "webhook_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "entity_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "destination_url"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "format"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["JSON", "XML"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.format = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "ack_enabled"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "entity"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "changes"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "last_send_attempt"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "next_send_attempt"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "final_send_attempt"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total_send_attempts"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "state"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Unsent", "Sending", "Sent"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.state = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "acked"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

