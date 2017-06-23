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

# Unit tests for Bfwd::AuditEntry
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuditEntry' do
  before do
    # run before each test
    @instance = Bfwd::AuditEntry.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuditEntry' do
    it 'should create an instance of AuditEntry' do
      expect(@instance).to be_instance_of(Bfwd::AuditEntry)
    end
  end
  describe 'test attribute "changed_by"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
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

  describe 'test attribute "entity"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Notification", "Organization", "OrganizationGateway", "Product", "User", "Subscription", "Profile", "ProductRatePlan", "Client", "Invoice", "PricingComponentValue", "Account", "PricingComponentValueChange", "PricingComponentTier", "PricingComponent", "PricingCalculation", "CouponDefinition", "CouponInstance", "CouponModifier", "CouponRule", "CouponBookDefinition", "CouponBook", "InvoiceLine", "Webhook", "SubscriptionCancellation", "NotificationSnapshot", "InvoicePayment", "InvoiceLinePayment", "Payment", "PaymentMethod", "PaymentMethodSubscriptionLink", "DunningLine", "CybersourceToken", "Card", "Alias", "PaypalSimplePaymentReconciliation", "FreePaymentReconciliation", "LocustworldPaymentReconciliation", "CouponInstanceExistingValue", "TaxLine", "TaxationStrategy", "TaxationLink", "Address", "AmendmentPriceNTime", "Authority", "UnitOfMeasure", "SearchResult", "Amendment", "AuditLog", "Password", "Username", "FixedTermDefinition", "FixedTerm", "Refund", "CreditNote", "Receipt", "AmendmentCompoundConstituent", "APIConfiguration", "StripeToken", "BraintreeToken", "BalancedToken", "PaypalToken", "AuthorizeNetToken", "SpreedlyToken", "GatewayRevenue", "AmendmentDiscardAmendment", "CancellationAmendment", "CompoundAmendment", "CompoundAmendmentConstituent", "FixedTermExpiryAmendment", "InvoiceNextExecutionAttemptAmendment", "PricingComponentValueAmendment", "BraintreeMerchantAccount", "WebhookSubscription", "Migration", "CassResult", "CassPaymentResult", "CassProductRatePlanResult", "CassChurnResult", "CassUpgradeResult", "SubscriptionCharge", "CassPaymentPProductResult", "ProductPaymentsArgs", "StripeACHToken", "UsageAmount", "UsageSession", "Usage", "UsagePeriod", "Period", "OfflinePayment", "CreditNotePayment", "CardVaultPayment", "FreePayment", "BraintreePayment", "BalancedPayment", "CybersourcePayment", "PaypalPayment", "PaypalSimplePayment", "LocustWorldPayment", "StripeOnlyPayment", "ProductPaymentsResult", "StripeACHPayment", "AuthorizeNetPayment", "CompoundUsageSession", "CompoundUsage", "UsageRoundingStrategies", "BillforwardManagedPaymentsResult", "PricingComponentValueMigrationChargeAmendmentMapping", "SubscriptionLTVResult", "AccountLTVResult", "ProductRatePlanPaymentsResult", "DebtsResult", "AccountPaymentsResult", "ComponentChange", "QuoteRequest", "Quote", "CouponCharge", "CouponInstanceInvoiceLink", "Coupon", "CouponDiscount", "CouponUniqueCodesRequest", "CouponUniqueCodesResponse", "GetCouponsResponse", "AddCouponCodeRequest", "AddCouponCodeResponse", "RemoveCouponFromSubscriptionRequest", "TokenizationPreAuth", "StripeTokenizationPreAuth", "BraintreeTokenizationPreAuth", "SpreedlyTokenizationPreAuth", "SagePayTokenizationPreAuth", "PayVisionTokenizationPreAuth", "TokenizationPreAuthRequest", "AuthCaptureRequest", "StripeACHBankAccountVerification", "PasswordReset", "PricingRequest", "AddTaxationStrategyRequest", "AddPaymentMethodRequest", "APIRequest", "SagePayToken", "SagePayNotificationRequest", "SagePayNotificationResponse", "SagePayOutstandingTransaction", "SagePayEnabledCardType", "TrustCommerceToken", "SagePayTransaction", "PricingComponentValueResponse", "MigrationResponse", "TimeResponse", "EntityTime", "Email", "AggregationLink", "BFPermission", "Role", "PermissionLink", "PayVisionToken", "PayVisionTransaction", "KashToken", "EmailProvider", "DataSynchronizationJob", "DataSynchronizationJobError", "DataSynchronizationConfiguration", "DataSynchronizationAppConfiguration", "AggregationChildrenResponse", "MetadataKeyValue", "Metadata", "AggregatingComponent", "PricingComponentMigrationValue", "InvoiceRecalculationAmendment", "IssueInvoiceAmendment", "EmailSubscription", "RevenueAttribution"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.entity = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "entity_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "audit_action"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Accept", "Active", "AwaitingPayment", "AwaitingRefund", "Cancelled", "Completed", "Created", "Error", "Expiring", "Expired", "Failed", "Migrated", "NeedsAmendments", "Paid", "Pending", "Provisioned", "Refunded", "Reject", "Trial", "Unknown", "Unpaid", "Updated", "Voided", "PaymentFailed"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.audit_action = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "field_changes"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "new_entity"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "state"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["New", "Processed"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.state = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "created"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

