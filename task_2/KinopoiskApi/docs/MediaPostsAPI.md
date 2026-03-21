# MediaPostsAPI

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1MediaPostsGet**](MediaPostsAPI.md#apiv1mediapostsget) | **GET** /api/v1/media_posts | получить медиа новости с сайта кинопоиск


# **apiV1MediaPostsGet**
```swift
    open class func apiV1MediaPostsGet(page: Int? = nil, completion: @escaping (_ data: MediaPostsResponse?, _ error: Error?) -> Void)
```

получить медиа новости с сайта кинопоиск

Одна страница может содержать до 20 элементов в items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let page = 987 // Int | номер страницы (optional) (default to 1)

// получить медиа новости с сайта кинопоиск
MediaPostsAPI.apiV1MediaPostsGet(page: page) { (response, error) in
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
 **page** | **Int** | номер страницы | [optional] [default to 1]

### Return type

[**MediaPostsResponse**](MediaPostsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

