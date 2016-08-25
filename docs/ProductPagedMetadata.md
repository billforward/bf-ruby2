# Bfwd::ProductPagedMetadata

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_page** | **String** | {\&quot;description\&quot;:\&quot;Paging parameter. URL fragment that can be used to fetch next page of results.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | 
**current_page** | **Integer** | {\&quot;description\&quot;:\&quot;Paging parameter. 0-indexed. Describes which page (given a page size of &#x60;recordsRequested&#x60;) of the result set you are viewing.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | 
**current_offset** | **Integer** | {\&quot;description\&quot;:\&quot;Paging parameter. 0-indexed. Describes your current location within a pageable list of query results.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | 
**records_requested** | **Integer** | {\&quot;default\&quot;:10,\&quot;description\&quot;:\&quot;Paging parameter. Describes how many records you requested.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | 
**records_returned** | **Integer** | {\&quot;description\&quot;:\&quot;Describes how many records were returned by your query.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | 
**execution_time** | **Integer** | {\&quot;description\&quot;:\&quot;Number of milliseconds taken by API to calculate response.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | 
**results** | [**Array&lt;Product&gt;**](Product.md) | {\&quot;description\&quot;:\&quot;The results returned by your query.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | 


