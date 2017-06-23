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

# Unit tests for Bfwd::TimerAmendment
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TimerAmendment' do
  before do
    # run before each test
    @instance = Bfwd::TimerAmendment.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TimerAmendment' do
    it 'should create an instance of TimerAmendment' do
      expect(@instance).to be_instance_of(Bfwd::TimerAmendment)
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

  describe 'test attribute "type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["InvoiceOutstandingChargesAmendment", "IssueInvoiceAmendment", "PricingComponentValueAmendment", "InvoiceRecalculationAmendment", "CancellationAmendment", "InvoiceNextExecutionAttemptAmendment", "FixedTermExpiryAmendment", "EndTrialAmendment", "ProductRatePlanMigrationAmendment", "AmendmentDiscardAmendment", "UpdateComponentValueAmendment", "ServiceEndAmendment", "ResumeSubscriptionAmendment", "CreateSubscriptionChargeAmendment", "TimerAmendment"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "organization_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "subscription_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "amendment_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["InvoiceNextExecutionAttempt", "Cancellation", "PricingComponentValue", "AmendmentDiscard", "Compound", "FixedTermExpiry", "InvoiceRecalculation", "EndTrial", "InvoiceOutstandingCharges", "IssueInvoice", "ProductRatePlanMigration", "UpdateComponentValue", "ServiceEnd", "ResumeSubscription", "CreateSubscriptionCharge", "Timer"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.amendment_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "actioning_time"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "actioned_time"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "state"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Pending", "Succeeded", "Failed", "Discarded"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.state = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "deleted"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "entity_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "entity"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Notification", "Organization", "OrganizationGateway", "Product", "User", "Subscription", "Profile", "ProductRatePlan", "Client", "Invoice", "PricingComponentValue", "Account", "PricingComponentValueChange", "PricingComponentTier", "PricingComponent", "PricingCalculation", "CouponDefinition", "CouponInstance", "CouponModifier", "CouponRule", "CouponBookDefinition", "CouponBook", "InvoiceLine", "Webhook", "SubscriptionCancellation", "NotificationSnapshot", "InvoicePayment", "InvoiceLinePayment", "Payment", "PaymentMethod", "PaymentMethodSubscriptionLink", "DunningLine", "CybersourceToken", "Card", "Alias", "PaypalSimplePaymentReconciliation", "FreePaymentReconciliation", "LocustworldPaymentReconciliation", "CouponInstanceExistingValue", "TaxLine", "TaxationStrategy", "TaxationLink", "Address", "AmendmentPriceNTime", "Authority", "UnitOfMeasure", "SearchResult", "Amendment", "AuditLog", "Password", "Username", "FixedTermDefinition", "FixedTerm", "Refund", "CreditNote", "Receipt", "AmendmentCompoundConstituent", "APIConfiguration", "StripeToken", "BraintreeToken", "BalancedToken", "PaypalToken", "AuthorizeNetToken", "SpreedlyToken", "GatewayRevenue", "AmendmentDiscardAmendment", "CancellationAmendment", "CompoundAmendment", "CompoundAmendmentConstituent", "FixedTermExpiryAmendment", "InvoiceNextExecutionAttemptAmendment", "PricingComponentValueAmendment", "BraintreeMerchantAccount", "WebhookSubscription", "Migration", "CassResult", "CassPaymentResult", "CassProductRatePlanResult", "CassChurnResult", "CassUpgradeResult", "SubscriptionCharge", "CassPaymentPProductResult", "ProductPaymentsArgs", "StripeACHToken", "UsageAmount", "UsageSession", "Usage", "UsagePeriod", "Period", "OfflinePayment", "CreditNotePayment", "CardVaultPayment", "FreePayment", "BraintreePayment", "BalancedPayment", "CybersourcePayment", "PaypalPayment", "PaypalSimplePayment", "LocustWorldPayment", "StripeOnlyPayment", "ProductPaymentsResult", "StripeACHPayment", "AuthorizeNetPayment", "CompoundUsageSession", "CompoundUsage", "UsageRoundingStrategies", "BillforwardManagedPaymentsResult", "PricingComponentValueMigrationChargeAmendmentMapping", "SubscriptionLTVResult", "AccountLTVResult", "ProductRatePlanPaymentsResult", "DebtsResult", "AccountPaymentsResult", "ComponentChange", "QuoteRequest", "Quote", "CouponCharge", "CouponInstanceInvoiceLink", "Coupon", "CouponDiscount", "CouponUniqueCodesRequest", "CouponUniqueCodesResponse", "GetCouponsResponse", "AddCouponCodeRequest", "AddCouponCodeResponse", "RemoveCouponFromSubscriptionRequest", "TokenizationPreAuth", "StripeTokenizationPreAuth", "BraintreeTokenizationPreAuth", "SpreedlyTokenizationPreAuth", "SagePayTokenizationPreAuth", "PayVisionTokenizationPreAuth", "TokenizationPreAuthRequest", "AuthCaptureRequest", "StripeACHBankAccountVerification", "PasswordReset", "PricingRequest", "AddTaxationStrategyRequest", "AddPaymentMethodRequest", "APIRequest", "SagePayToken", "SagePayNotificationRequest", "SagePayNotificationResponse", "SagePayOutstandingTransaction", "SagePayEnabledCardType", "TrustCommerceToken", "SagePayTransaction", "PricingComponentValueResponse", "MigrationResponse", "TimeResponse", "EntityTime", "Email", "AggregationLink", "BFPermission", "Role", "PermissionLink", "PayVisionToken", "PayVisionTransaction", "KashToken", "EmailProvider", "DataSynchronizationJob", "DataSynchronizationJobError", "DataSynchronizationConfiguration", "DataSynchronizationAppConfiguration", "AggregationChildrenResponse", "MetadataKeyValue", "Metadata", "AggregatingComponent", "PricingComponentMigrationValue", "InvoiceRecalculationAmendment", "IssueInvoiceAmendment", "EmailSubscription", "RevenueAttribution"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.entity = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "offset_direction"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Before", "After"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.offset_direction = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "offset_period"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Minutes", "Hours", "Days"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.offset_period = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "offset_duration"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "original_event_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "timer_event"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TrialExpiry", "SubscriptionExpiry", "PeriodEnd"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.timer_event = value }.not_to raise_error
       #end
    end
  end

end

