# BillForward::APIQuoteResponseQuantity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pricing_component_name** | **String** | {\&quot;description\&quot;:\&quot;Name of the pricing component whose price was calculated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**pricing_component_type** | **String** | {\&quot;description\&quot;:\&quot;Charge type of the pricing component whose price was calculated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**pricing_component_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the pricing component whose price was calculated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**quantity** | **Integer** | {\&quot;description\&quot;:\&quot;Quantity of the pricing component whose price was calculated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**existing_quantity** | **Integer** | {\&quot;description\&quot;:\&quot;Previous quantity of the pricing component. Price is calculated with respect to a delta from this quantity.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**final_cost** | **Float** | {\&quot;description\&quot;:\&quot;The cost &amp;mdash; including tax, and with discounts (themselves including tax) applied &amp;mdash; contributed by consumption of this pricing component.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**final_cost_excluding_tax** | **Float** | {\&quot;description\&quot;:\&quot;The cost &amp;mdash; excluding tax, and with discounts (themselves excluding tax) applied &amp;mdash; contributed by consumption of this pricing component.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**cost** | **Float** | {\&quot;description\&quot;:\&quot;The cost &amp;mdash; including tax, but excluding discounts &amp;mdash; contributed by consumption of this pricing component.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**cost_excluding_tax** | **Float** | {\&quot;description\&quot;:\&quot;The cost &amp;mdash; excluding tax, and excluding discounts &amp;mdash; contributed by consumption of this pricing component.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**tax** | **Float** | {\&quot;description\&quot;:\&quot;The portion of this pricing component&#39;s cost which is comprised of tax.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**discount** | **Float** | {\&quot;description\&quot;:\&quot;The discount &amp;mdash; including tax &amp;mdash; applied to this pricing component.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**discount_excluding_tax** | **Float** | {\&quot;description\&quot;:\&quot;The discount &amp;mdash; excluding tax &amp;mdash; applied to this pricing component.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**unit_of_measure_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the &#39;Unit of Measure&#39; entity  &amp;mdash; in which this pricing component is measured.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**unit_of_measure_name** | **String** | {\&quot;description\&quot;:\&quot;Name of the &#39;Unit of Measure&#39; entity  &amp;mdash; in which this pricing component is measured.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**unit_of_measure_display** | **String** | {\&quot;description\&quot;:\&quot;Displayable units of the &#39;Unit of Measure&#39; entity &amp;mdash; in which this pricing component is measured.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**unit_of_measure** | **String** | {\&quot;description\&quot;:\&quot;The &#39;Unit of Measure&#39; entity used to measure this pricing component.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**applies_from** | **DateTime** | {\&quot;description\&quot;:\&quot;The date-time from which the pricing component&#39;s new value would apply.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**discounts** | [**Array&lt;CouponWrapperResponse&gt;**](CouponWrapperResponse.md) | {\&quot;description\&quot;:\&quot;A list of discounts applied in calculating the price of this pricing component.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 


