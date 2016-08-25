# Bfwd::UpdatePricingComponentValueRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**change_mode** | **String** | {\&quot;default\&quot;:\&quot;Default\&quot;,\&quot;description\&quot;:\&quot;Whether the value change will apply immediately or at the period end. If no value is specified the pricing components behaviour on the rate-plan will be used. The following values are available: &lt;ul&gt;&lt;li&gt;Immediate: The change will be applied immediately by creating a new Charge against the subscription.&lt;/li&gt;&lt;li&gt;AtPeriodEnd: The change will be delayed to the billing period end through an amendment. Any Pending Update Amendment already existing will be Discarded.&lt;/li&gt;&lt;li&gt;Default: The pricing components behaviour on the rate-plan will be used.&lt;/li&gt;&lt;/ul&gt;\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;]} | [optional] 
**value** | **Integer** | The new value. | [optional] 
**logical_component_id** | **String** | The name or ID of the pricing component to update. | [optional] 


