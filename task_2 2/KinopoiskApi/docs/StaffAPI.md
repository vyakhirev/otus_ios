# StaffAPI

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1StaffGet**](StaffAPI.md#apiv1staffget) | **GET** /api/v1/staff | получить данные об актерах, режисерах и т.д. по kinopoisk film id
[**apiV1StaffIdGet**](StaffAPI.md#apiv1staffidget) | **GET** /api/v1/staff/{id} | получить данные о конкретном человеке по kinopoisk person id


# **apiV1StaffGet**
```swift
    open class func apiV1StaffGet(filmId: Int, completion: @escaping (_ data: [StaffResponse]?, _ error: Error?) -> Void)
```

получить данные об актерах, режисерах и т.д. по kinopoisk film id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filmId = 987 // Int | kinopoisk film id

// получить данные об актерах, режисерах и т.д. по kinopoisk film id
StaffAPI.apiV1StaffGet(filmId: filmId) { (response, error) in
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
 **filmId** | **Int** | kinopoisk film id | 

### Return type

[**[StaffResponse]**](StaffResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StaffIdGet**
```swift
    open class func apiV1StaffIdGet(id: Int, completion: @escaping (_ data: PersonResponse?, _ error: Error?) -> Void)
```

получить данные о конкретном человеке по kinopoisk person id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk person id

// получить данные о конкретном человеке по kinopoisk person id
StaffAPI.apiV1StaffIdGet(id: id) { (response, error) in
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
 **id** | **Int** | kinopoisk person id | 

### Return type

[**PersonResponse**](PersonResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

