# Bfwd::ResumeRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**resume** | **DateTime** | {\&quot;default\&quot;:\&quot;(Resume immediately)\&quot;,\&quot;description\&quot;:\&quot;Schedules the resumption to be actioned at some future time.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**dry_run** | **BOOLEAN** | {\&quot;default\&quot;:false,\&quot;description\&quot;:\&quot;Changes described in the response:&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;true&lt;/span&gt; &amp;mdash; Are not actually performed; your subscription remains unchanged, no billing events run, and no invoices are executed.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;false&lt;/span&gt; &amp;mdash; Are actually performed and committed.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] [default to false]


