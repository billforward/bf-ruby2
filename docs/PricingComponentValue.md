# BillForward::PricingComponentValue

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | 
**version_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**pricing_component_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**pricing_component_name** | **String** | { \&quot;description\&quot; : \&quot;Name of the pricing-component associated with the pricing-component-value.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**subscription_id** | **String** | { \&quot;description\&quot; : \&quot;Value can be left null if setting the pricing component value on the subscription directly.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;, \&quot;POST\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**value** | **Integer** | { \&quot;description\&quot; : \&quot;Quantity of a particular pricing component the subscription should have. For example if you have a pricing component for widgets, where $5/widget/month and you set the value to 10 then the customer will be charged $50 ($5 x 10) monthly.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**applies_from** | **DateTime** | { \&quot;description\&quot; : \&quot;&lt;p&gt;The appliesFrom can be left null. If appliesFrom is set, it indicates when a value came into effect.&lt;/p&gt;\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**applies_till** | **DateTime** | { \&quot;description\&quot; : \&quot;&lt;p&gt;For &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;setup&lt;/span&gt;, &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;subscription&lt;/span&gt;, and &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;arrears&lt;/span&gt; pricing components if appliesTill is specificed the value will be used whilst the time has not been reached. If appliesTill is null the pricing component value will be used until a new value is added. When a new value is added appliesTill will be set to the time the new value will take effect.&lt;/p&gt;&lt;p&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;usage&lt;/span&gt; pricing applies to the previous billing period as it is charged in-arrears. When adding usage a new pricing component value should be added with appliesTill set to the end of the usages billing period. For example a monthly subscription results in an invoice being generated on the 1&lt;sup&gt;st&lt;/sup&gt; of March, the previous months usage period ended on the same date. A usage value should be added to the subscription with the appliesTill set to the invoices periodStart, the 1&lt;sup&gt;st&lt;/sup&gt; of March.&lt;/p&gt;\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**pending_change** | [**PendingComponentValueChange**](PendingComponentValueChange.md) |  | [optional] 


