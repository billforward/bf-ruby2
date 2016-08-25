# Bfwd::QuoteRequestValue

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pricing_component** | **String** | {\&quot;description\&quot;:\&quot;Name or ID of the pricing component involved in some price quote.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | 
**quantity** | **Integer** | {\&quot;description\&quot;:\&quot;Quantity consumed of the pricing component involved in some price quote.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | 
**existing_quantity** | **Integer** | {\&quot;description\&quot;:\&quot;Pre-existing value of pricing component from which the customer is transitioning. Provide this when calculating (for example) upgrade costs.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**percentage_discount** | **Float** | {\&quot;description\&quot;:\&quot;The discount percentage applied to this pricing component.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 


