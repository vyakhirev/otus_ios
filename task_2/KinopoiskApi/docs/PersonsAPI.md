# PersonsAPI

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1PersonsGet**](PersonsAPI.md#apiv1personsget) | **GET** /api/v1/persons | поиск актеров, режиссеров и т.д. по имени


# **apiV1PersonsGet**
```swift
    open class func apiV1PersonsGet(name: String, page: Int? = nil, completion: @escaping (_ data: PersonByNameResponse?, _ error: Error?) -> Void)
```

поиск актеров, режиссеров и т.д. по имени

Одна страница может содержать до 50 элементов в items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | имя человека
let page = 987 // Int | номер страницы (optional) (default to 1)

// поиск актеров, режиссеров и т.д. по имени
PersonsAPI.apiV1PersonsGet(name: name, page: page) { (response, error) in
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
 **name** | **String** | имя человека | 
 **page** | **Int** | номер страницы | [optional] [default to 1]

### Return type

[**PersonByNameResponse**](PersonByNameResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

