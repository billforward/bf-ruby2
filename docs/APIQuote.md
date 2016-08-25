# Bfwd::APIQuote

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**subtotal** | **Float** | {\&quot;description\&quot;:\&quot;The cost &amp;mdash; including tax, but excluding discounts &amp;mdash; of all items described in the quote.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**subtotal_excluding_tax** | **Float** | {\&quot;description\&quot;:\&quot;The cost &amp;mdash; excluding tax, and excluding discounts &amp;mdash; of all items described in the quote.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**total** | **Float** | {\&quot;description\&quot;:\&quot;The cost &amp;mdash; including tax, and with discounts (themselves including tax) applied &amp;mdash; of all items described in the quote.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**total_excluding_tax** | **Float** | {\&quot;description\&quot;:\&quot;The cost &amp;mdash; excluding tax, and with discounts (themselves excluding tax) applied &amp;mdash; of all items described in the quote.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**tax** | **Float** | {\&quot;description\&quot;:\&quot;The portion of this quote&#39;s cost which is comprised of tax.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**discount** | **Float** | {\&quot;description\&quot;:\&quot;Total amount deducted from price via discounts &amp;mdash; includes any tax upon the discounts themselves.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**discount_excluding_tax** | **Float** | {\&quot;description\&quot;:\&quot;Total amount deducted from price via discounts &amp;mdash; excludes any tax upon the discounts themselves.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**currency** | **String** | {\&quot;description\&quot;:\&quot;The currency of any quoted prices &amp;mdash; as specified by a three-character ISO 4217 currency code (i.e. USD).\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**product_name** | **String** | {\&quot;description\&quot;:\&quot;Name of the product for which a price quote is requested.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**public_product_name** | **String** | {\&quot;description\&quot;:\&quot;Public name of the product for which a price quote is requested.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**product_rate_plan_name** | **String** | {\&quot;description\&quot;:\&quot;Name of the rate plan (of some product) for which a price quote is requested.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**public_product_rate_plan_name** | **String** | {\&quot;description\&quot;:\&quot;Public name of the rate plan (of some product) for which a price quote is requested.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**product_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the product for which a price quote is requested.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**product_rate_plan_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the rate plan (of some product) for which a price quote is requested.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**subscription_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the subscription for which a price quote is requested.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**account_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the account for which a price quote is requested.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**quantities** | [**Array&lt;APIQuoteResponseQuantity&gt;**](APIQuoteResponseQuantity.md) | {\&quot;description\&quot;:\&quot;A list of calculated prices for each pricing component described in the quote request.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**discounts** | [**Array&lt;CouponWrapperResponse&gt;**](CouponWrapperResponse.md) | {\&quot;description\&quot;:\&quot;A list of discounts applied in calculating the quote.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**quote_for** | **String** | {\&quot;default\&quot;:\&quot;RecurringPeriod\&quot;,\&quot;description\&quot;:\&quot;Subscription scenario with which the quote is concerned.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**period_start** | **DateTime** | {\&quot;default\&quot;:\&quot;(Time at which quote is requested)\&quot;,\&quot;description\&quot;:\&quot;The start date-time of the interval for which a price quote is requested.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | 
**period_end** | **DateTime** | {\&quot;default\&quot;:\&quot;(End of period described in &#x60;periodStart&#x60;)\&quot;,\&quot;description\&quot;:\&quot;The end date-time of the interval for which a price quote is requested.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | 
**total_periods** | **Float** | {\&quot;default\&quot;:\&quot;ZERO\&quot;,\&quot;description\&quot;:\&quot;\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**proration_enabled** | **BOOLEAN** | {\&quot;default\&quot;:true,\&quot;description\&quot;:\&quot;Whether consumption for fractions/multiples of periods is calculated as a fraction/multiple of the cost of consumption for a whole period.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] [default to false]
**uplift** | **Float** | {\&quot;description\&quot;:\&quot;\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**coupon_codes** | **Array&lt;String&gt;** | {\&quot;description\&quot;:\&quot;A list of coupon codes to consider in calculating the quote.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**organization_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the organization in whose name the quote was generated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**same_product_period** | **BOOLEAN** | {\&quot;description\&quot;:\&quot;If migration quote whether or not the rate plans have the same duration\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] [default to false]


