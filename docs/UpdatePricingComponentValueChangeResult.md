# BillForward::UpdatePricingComponentValueChangeResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pricing_component_id** | **String** | The ID of the updated Pricing Component. | [optional] 
**pricing_component_name** | **String** | The name of the updated Pricing Component. | [optional] 
**pricing_component_public_name** | **String** | The public name of the updated Pricing Component. | [optional] 
**new_value** | **Integer** | The value of the Pricing Component after the update. | [optional] 
**old_value** | **Integer** | The Pricing Component Value before the update. | [optional] 
**type** | **String** | The type of the result. | [optional] 
**subscription_id** | **String** | The ID of the updated Subscription. | [optional] 
**amount** | **Float** | The issued amount. | [optional] 
**charge_type** | **String** | This field state if the issued amount is a Debit or Credit. This field will be null if the amount is 0 (zero) | [optional] 
**charge** | [**SubscriptionCharge**](SubscriptionCharge.md) | If a debit or credit charge has been created in the process, this field will contain it. | [optional] 
**amendment** | [**Amendment**](Amendment.md) | If an amendment has been created in the prcess (ie. if the update has to be delayed to the ending billing period), this field will contain it. | [optional] 
**state** | **String** | {\&quot;description\&quot;:\&quot;The state of the update. &lt;ul&gt;&lt;li&gt;Succeeded: The change has been applied. This state only happens for immediate changes and if the generated invoice has been successfully paid.&lt;/li&gt;&lt;li&gt;Failed: The change has not been applied. This state only happens for immediate changes and if the generated invoice has not been successfully paid.&lt;/li&gt;&lt;li&gt;Pending: The changes has not been applied yet. An amendment has been created that will be triggered in the future applying the change. The resulting state can&#39;t be predicted at this time.&lt;/li&gt;&lt;/ul&gt;\&quot;} | [optional] 


