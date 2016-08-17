# BillForward::BFError

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_type** | **String** | {\&quot;description\&quot;:\&quot;Enum categorizing the nature of the error.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | [optional] 
**error_message** | **String** | {\&quot;description\&quot;:\&quot;Human-readable description of the reason for the error.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | [optional] 
**error_code** | **Integer** | {\&quot;description\&quot;:\&quot;Code describing the nature of the error. Currently unused; prefer &#x60;errorType&#x60;.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | [optional] 
**error_parameters** | **Array&lt;String&gt;** | {\&quot;description\&quot;:\&quot;List of erroneous parameters found in your input (if applicable).\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | [optional] 


