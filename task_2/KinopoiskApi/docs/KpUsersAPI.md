# KpUsersAPI

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1KpUsersIdVotesGet**](KpUsersAPI.md#apiv1kpusersidvotesget) | **GET** /api/v1/kp_users/{id}/votes | получить данные об оценках пользователя


# **apiV1KpUsersIdVotesGet**
```swift
    open class func apiV1KpUsersIdVotesGet(id: Int, page: Int? = nil, completion: @escaping (_ data: KinopoiskUserVoteResponse?, _ error: Error?) -> Void)
```

получить данные об оценках пользователя

Одна страница может содержать до 20 элементов в items. Доступны не все оценки пользователя, а примерно 1500 последних

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | id пользователя на сайте кинопоиск
let page = 987 // Int | номер страницы (optional) (default to 1)

// получить данные об оценках пользователя
KpUsersAPI.apiV1KpUsersIdVotesGet(id: id, page: page) { (response, error) in
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
 **id** | **Int** | id пользователя на сайте кинопоиск | 
 **page** | **Int** | номер страницы | [optional] [default to 1]

### Return type

[**KinopoiskUserVoteResponse**](KinopoiskUserVoteResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

