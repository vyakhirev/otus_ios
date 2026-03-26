# ApiKeysAPI

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ApiKeysApiKeyGet**](ApiKeysAPI.md#apiv1apikeysapikeyget) | **GET** /api/v1/api_keys/{apiKey} | получить данные об api key


# **apiV1ApiKeysApiKeyGet**
```swift
    open class func apiV1ApiKeysApiKeyGet(apiKey: String, completion: @escaping (_ data: ApiKeyResponse?, _ error: Error?) -> Void)
```

получить данные об api key

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let apiKey = "apiKey_example" // String | api key

// получить данные об api key
ApiKeysAPI.apiV1ApiKeysApiKeyGet(apiKey: apiKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiKey** | **String** | api key | 

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

