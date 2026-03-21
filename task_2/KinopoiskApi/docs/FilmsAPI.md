# FilmsAPI

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV21FilmsIdSequelsAndPrequelsGet**](FilmsAPI.md#apiv21filmsidsequelsandprequelsget) | **GET** /api/v2.1/films/{id}/sequels_and_prequels | получить сиквелы и приквелы для фильма по kinopoisk film id
[**apiV21FilmsSearchByKeywordGet**](FilmsAPI.md#apiv21filmssearchbykeywordget) | **GET** /api/v2.1/films/search-by-keyword | получить список фильмов по ключевым словам
[**apiV22FilmsCollectionsGet**](FilmsAPI.md#apiv22filmscollectionsget) | **GET** /api/v2.2/films/collections | получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/
[**apiV22FilmsFiltersGet**](FilmsAPI.md#apiv22filmsfiltersget) | **GET** /api/v2.2/films/filters | получить id стран и жанров для использования в /api/v2.2/films
[**apiV22FilmsGet**](FilmsAPI.md#apiv22filmsget) | **GET** /api/v2.2/films | получить список фильмов по различным фильтрам
[**apiV22FilmsIdAwardsGet**](FilmsAPI.md#apiv22filmsidawardsget) | **GET** /api/v2.2/films/{id}/awards | получить данные о наградах фильма по kinopoisk film id
[**apiV22FilmsIdBoxOfficeGet**](FilmsAPI.md#apiv22filmsidboxofficeget) | **GET** /api/v2.2/films/{id}/box_office | получить данные о бюджете и сборах фильма по kinopoisk film id
[**apiV22FilmsIdDistributionsGet**](FilmsAPI.md#apiv22filmsiddistributionsget) | **GET** /api/v2.2/films/{id}/distributions | получить данные о прокате фильма по kinopoisk film id
[**apiV22FilmsIdExternalSourcesGet**](FilmsAPI.md#apiv22filmsidexternalsourcesget) | **GET** /api/v2.2/films/{id}/external_sources | получить список сайтов, где можно посмотреть фильм по kinopoisk film id
[**apiV22FilmsIdFactsGet**](FilmsAPI.md#apiv22filmsidfactsget) | **GET** /api/v2.2/films/{id}/facts | получить данные о фактах и ошибках в фильме по kinopoisk film id
[**apiV22FilmsIdGet**](FilmsAPI.md#apiv22filmsidget) | **GET** /api/v2.2/films/{id} | получить данные о фильме по kinopoisk id
[**apiV22FilmsIdImagesGet**](FilmsAPI.md#apiv22filmsidimagesget) | **GET** /api/v2.2/films/{id}/images | получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id
[**apiV22FilmsIdRelationsGet**](FilmsAPI.md#apiv22filmsidrelationsget) | **GET** /api/v2.2/films/{id}/relations | получить список связанных фильмов по kinopoisk film id
[**apiV22FilmsIdReviewsGet**](FilmsAPI.md#apiv22filmsidreviewsget) | **GET** /api/v2.2/films/{id}/reviews | получить список рецензии зрителей по kinopoisk film id
[**apiV22FilmsIdSeasonsGet**](FilmsAPI.md#apiv22filmsidseasonsget) | **GET** /api/v2.2/films/{id}/seasons | получить данные о сезонах для сериала по kinopoisk film id
[**apiV22FilmsIdSimilarsGet**](FilmsAPI.md#apiv22filmsidsimilarsget) | **GET** /api/v2.2/films/{id}/similars | получить список похожих фильмов по kinopoisk film id
[**apiV22FilmsIdVideosGet**](FilmsAPI.md#apiv22filmsidvideosget) | **GET** /api/v2.2/films/{id}/videos | получить трейлеры,тизеры,видео для фильма по kinopoisk film id
[**apiV22FilmsPremieresGet**](FilmsAPI.md#apiv22filmspremieresget) | **GET** /api/v2.2/films/premieres | получить список кинопремьер


# **apiV21FilmsIdSequelsAndPrequelsGet**
```swift
    open class func apiV21FilmsIdSequelsAndPrequelsGet(id: Int, completion: @escaping (_ data: [FilmSequelsAndPrequelsResponse]?, _ error: Error?) -> Void)
```

получить сиквелы и приквелы для фильма по kinopoisk film id

tbd

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id

// получить сиквелы и приквелы для фильма по kinopoisk film id
FilmsAPI.apiV21FilmsIdSequelsAndPrequelsGet(id: id) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 

### Return type

[**[FilmSequelsAndPrequelsResponse]**](FilmSequelsAndPrequelsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV21FilmsSearchByKeywordGet**
```swift
    open class func apiV21FilmsSearchByKeywordGet(keyword: String, page: Int? = nil, completion: @escaping (_ data: FilmSearchResponse?, _ error: Error?) -> Void)
```

получить список фильмов по ключевым словам

Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let keyword = "keyword_example" // String | ключивые слова для поиска
let page = 987 // Int | номер страницы (optional) (default to 1)

// получить список фильмов по ключевым словам
FilmsAPI.apiV21FilmsSearchByKeywordGet(keyword: keyword, page: page) { (response, error) in
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
 **keyword** | **String** | ключивые слова для поиска | 
 **page** | **Int** | номер страницы | [optional] [default to 1]

### Return type

[**FilmSearchResponse**](FilmSearchResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsCollectionsGet**
```swift
    open class func apiV22FilmsCollectionsGet(type: ModelType_apiV22FilmsCollectionsGet? = nil, page: Int? = nil, completion: @escaping (_ data: FilmCollectionResponse?, _ error: Error?) -> Void)
```

получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/

Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = "type_example" // String | тип топа или коллекции (optional) (default to .topPopularAll)
let page = 987 // Int | номер страницы (optional) (default to 1)

// получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/
FilmsAPI.apiV22FilmsCollectionsGet(type: type, page: page) { (response, error) in
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
 **type** | **String** | тип топа или коллекции | [optional] [default to .topPopularAll]
 **page** | **Int** | номер страницы | [optional] [default to 1]

### Return type

[**FilmCollectionResponse**](FilmCollectionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsFiltersGet**
```swift
    open class func apiV22FilmsFiltersGet(completion: @escaping (_ data: FiltersResponse?, _ error: Error?) -> Void)
```

получить id стран и жанров для использования в /api/v2.2/films

Возвращает список id стран и жанров, которые могут быть использованы в /api/v2.2/films

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// получить id стран и жанров для использования в /api/v2.2/films
FilmsAPI.apiV22FilmsFiltersGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**FiltersResponse**](FiltersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsGet**
```swift
    open class func apiV22FilmsGet(countries: [Int]? = nil, genres: [Int]? = nil, order: Order_apiV22FilmsGet? = nil, type: ModelType_apiV22FilmsGet? = nil, ratingFrom: Double? = nil, ratingTo: Double? = nil, yearFrom: Int? = nil, yearTo: Int? = nil, imdbId: String? = nil, keyword: String? = nil, page: Int? = nil, completion: @escaping (_ data: FilmSearchByFiltersResponse?, _ error: Error?) -> Void)
```

получить список фильмов по различным фильтрам

Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов. Данный эндпоинт не возращает более 400 фильмов. <i>Используй /api/v2.2/films/filters чтобы получить id стран и жанров.</i>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let countries = [123] // [Int] | список id стран разделенные запятой. Например <i>countries=1,2,3</i>. На данный момент можно указать не более одной страны. (optional)
let genres = [123] // [Int] | список id жанров разделенные запятой. Например <i>genres=1,2,3</i>. На данный момент можно указать не более одного жанра. (optional)
let order = "order_example" // String | сортировка (optional) (default to .rating)
let type = "type_example" // String | тип фильма (optional) (default to .all)
let ratingFrom = 987 // Double | минимальный рейтинг (optional) (default to 0)
let ratingTo = 987 // Double | максимальный рейтинг (optional) (default to 10)
let yearFrom = 987 // Int | минимальный год (optional) (default to 1000)
let yearTo = 987 // Int | максимальный год (optional) (default to 3000)
let imdbId = "imdbId_example" // String | imdb id (optional)
let keyword = "keyword_example" // String | ключевое слово, которое встречается в названии фильма (optional)
let page = 987 // Int | номер страницы (optional) (default to 1)

// получить список фильмов по различным фильтрам
FilmsAPI.apiV22FilmsGet(countries: countries, genres: genres, order: order, type: type, ratingFrom: ratingFrom, ratingTo: ratingTo, yearFrom: yearFrom, yearTo: yearTo, imdbId: imdbId, keyword: keyword, page: page) { (response, error) in
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
 **countries** | [**[Int]**](Int.md) | список id стран разделенные запятой. Например &lt;i&gt;countries&#x3D;1,2,3&lt;/i&gt;. На данный момент можно указать не более одной страны. | [optional] 
 **genres** | [**[Int]**](Int.md) | список id жанров разделенные запятой. Например &lt;i&gt;genres&#x3D;1,2,3&lt;/i&gt;. На данный момент можно указать не более одного жанра. | [optional] 
 **order** | **String** | сортировка | [optional] [default to .rating]
 **type** | **String** | тип фильма | [optional] [default to .all]
 **ratingFrom** | **Double** | минимальный рейтинг | [optional] [default to 0]
 **ratingTo** | **Double** | максимальный рейтинг | [optional] [default to 10]
 **yearFrom** | **Int** | минимальный год | [optional] [default to 1000]
 **yearTo** | **Int** | максимальный год | [optional] [default to 3000]
 **imdbId** | **String** | imdb id | [optional] 
 **keyword** | **String** | ключевое слово, которое встречается в названии фильма | [optional] 
 **page** | **Int** | номер страницы | [optional] [default to 1]

### Return type

[**FilmSearchByFiltersResponse**](FilmSearchByFiltersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdAwardsGet**
```swift
    open class func apiV22FilmsIdAwardsGet(id: Int, completion: @escaping (_ data: AwardResponse?, _ error: Error?) -> Void)
```

получить данные о наградах фильма по kinopoisk film id

Данный эндпоинт возвращает данные о наградах и премиях фильма.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id

// получить данные о наградах фильма по kinopoisk film id
FilmsAPI.apiV22FilmsIdAwardsGet(id: id) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 

### Return type

[**AwardResponse**](AwardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdBoxOfficeGet**
```swift
    open class func apiV22FilmsIdBoxOfficeGet(id: Int, completion: @escaping (_ data: BoxOfficeResponse?, _ error: Error?) -> Void)
```

получить данные о бюджете и сборах фильма по kinopoisk film id

Данный эндпоинт возвращает данные о бюджете и сборах.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id

// получить данные о бюджете и сборах фильма по kinopoisk film id
FilmsAPI.apiV22FilmsIdBoxOfficeGet(id: id) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 

### Return type

[**BoxOfficeResponse**](BoxOfficeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdDistributionsGet**
```swift
    open class func apiV22FilmsIdDistributionsGet(id: Int, completion: @escaping (_ data: DistributionResponse?, _ error: Error?) -> Void)
```

получить данные о прокате фильма по kinopoisk film id

Данный эндпоинт возвращает данные о прокате в разных странах.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id

// получить данные о прокате фильма по kinopoisk film id
FilmsAPI.apiV22FilmsIdDistributionsGet(id: id) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 

### Return type

[**DistributionResponse**](DistributionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdExternalSourcesGet**
```swift
    open class func apiV22FilmsIdExternalSourcesGet(id: Int, page: Int? = nil, completion: @escaping (_ data: ExternalSourceResponse?, _ error: Error?) -> Void)
```

получить список сайтов, где можно посмотреть фильм по kinopoisk film id

Возвращает список сайтов с пагинацией. Каждая страница содержит не более чем 20 рецензий.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id
let page = 987 // Int | номер страницы (optional) (default to 1)

// получить список сайтов, где можно посмотреть фильм по kinopoisk film id
FilmsAPI.apiV22FilmsIdExternalSourcesGet(id: id, page: page) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 
 **page** | **Int** | номер страницы | [optional] [default to 1]

### Return type

[**ExternalSourceResponse**](ExternalSourceResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdFactsGet**
```swift
    open class func apiV22FilmsIdFactsGet(id: Int, completion: @escaping (_ data: FactResponse?, _ error: Error?) -> Void)
```

получить данные о фактах и ошибках в фильме по kinopoisk film id

Данный эндпоинт возвращает список фактов и ошибок в фильме. <br> type - <b>FACT</b>, обозначает интересный факт о фильме. <br> type - <b>BLOOPER</b>, обозначает ошибку в фильме.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id

// получить данные о фактах и ошибках в фильме по kinopoisk film id
FilmsAPI.apiV22FilmsIdFactsGet(id: id) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 

### Return type

[**FactResponse**](FactResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdGet**
```swift
    open class func apiV22FilmsIdGet(id: Int, completion: @escaping (_ data: Film?, _ error: Error?) -> Void)
```

получить данные о фильме по kinopoisk id

Данный эндпоинт возвращает базовые данные о фильме. Поле <b>lastSync</b> показывает дату последнего обновления данных.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id

// получить данные о фильме по kinopoisk id
FilmsAPI.apiV22FilmsIdGet(id: id) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 

### Return type

[**Film**](Film.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdImagesGet**
```swift
    open class func apiV22FilmsIdImagesGet(id: Int, type: ModelType_apiV22FilmsIdImagesGet? = nil, page: Int? = nil, completion: @escaping (_ data: ImageResponse?, _ error: Error?) -> Void)
```

получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id

Данный эндпоинт возвращает изображения связанные с фильмом с пагинацией. Каждая страница содержит <b>не более чем 20 фильмов</b>.</br> Доступные изображения:</br> <ul> <li>STILL - кадры</li> <li>SHOOTING - изображения со съемок</li> <li>POSTER - постеры</li> <li>FAN_ART - фан-арты</li> <li>PROMO - промо</li> <li>CONCEPT - концепт-арты</li> <li>WALLPAPER - обои</li> <li>COVER - обложки</li> <li>SCREENSHOT - скриншоты</li> </ul> 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id
let type = "type_example" // String | тип изображения (optional) (default to .still)
let page = 987 // Int | номер страницы (optional) (default to 1)

// получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id
FilmsAPI.apiV22FilmsIdImagesGet(id: id, type: type, page: page) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 
 **type** | **String** | тип изображения | [optional] [default to .still]
 **page** | **Int** | номер страницы | [optional] [default to 1]

### Return type

[**ImageResponse**](ImageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdRelationsGet**
```swift
    open class func apiV22FilmsIdRelationsGet(id: Int, completion: @escaping (_ data: RelatedFilmResponse?, _ error: Error?) -> Void)
```

получить список связанных фильмов по kinopoisk film id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id

// получить список связанных фильмов по kinopoisk film id
FilmsAPI.apiV22FilmsIdRelationsGet(id: id) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 

### Return type

[**RelatedFilmResponse**](RelatedFilmResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdReviewsGet**
```swift
    open class func apiV22FilmsIdReviewsGet(id: Int, page: Int? = nil, order: Order_apiV22FilmsIdReviewsGet? = nil, completion: @escaping (_ data: ReviewResponse?, _ error: Error?) -> Void)
```

получить список рецензии зрителей по kinopoisk film id

Возвращает список рецензии зрителей с пагинацией. Каждая страница содержит не более чем 20 рецензий.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id
let page = 987 // Int | номер страницы (optional) (default to 1)
let order = "order_example" // String | тип сортировки (optional) (default to .dateDesc)

// получить список рецензии зрителей по kinopoisk film id
FilmsAPI.apiV22FilmsIdReviewsGet(id: id, page: page, order: order) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 
 **page** | **Int** | номер страницы | [optional] [default to 1]
 **order** | **String** | тип сортировки | [optional] [default to .dateDesc]

### Return type

[**ReviewResponse**](ReviewResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdSeasonsGet**
```swift
    open class func apiV22FilmsIdSeasonsGet(id: Int, completion: @escaping (_ data: SeasonResponse?, _ error: Error?) -> Void)
```

получить данные о сезонах для сериала по kinopoisk film id

Данный эндпоинт возвращает данные о сезонах для сериала.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id

// получить данные о сезонах для сериала по kinopoisk film id
FilmsAPI.apiV22FilmsIdSeasonsGet(id: id) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 

### Return type

[**SeasonResponse**](SeasonResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdSimilarsGet**
```swift
    open class func apiV22FilmsIdSimilarsGet(id: Int, completion: @escaping (_ data: SimilarFilmResponse?, _ error: Error?) -> Void)
```

получить список похожих фильмов по kinopoisk film id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id

// получить список похожих фильмов по kinopoisk film id
FilmsAPI.apiV22FilmsIdSimilarsGet(id: id) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 

### Return type

[**SimilarFilmResponse**](SimilarFilmResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdVideosGet**
```swift
    open class func apiV22FilmsIdVideosGet(id: Int, completion: @escaping (_ data: VideoResponse?, _ error: Error?) -> Void)
```

получить трейлеры,тизеры,видео для фильма по kinopoisk film id

Данный эндпоинт возвращает трейлеры,тизеры,видео для фильма по kinopoisk film id. В данный момент доступно три site:  <br/> <ul><li>YOUTUBE - в этом случае <b>url</b> это просто ссылка на youtube видео.</li><li>YANDEX_DISK - в этом случае <b>url</b> это ссылка на yandex disk.</li><li>KINOPOISK_WIDGET - в этом случае <b>url</b> это ссылка на кинопоиск виджет. <b>Видео доступно только с РФ ip</b>. Например https://widgets.kinopoisk.ru/discovery/trailer/123573?onlyPlayer=1&autoplay=1&cover=1. Если вы хотите вставить этот виджет на вашу страницу, вы можете сделать следующее:  <br/><br/>&lt;script src=&quot;https://unpkg.com/@ungap/custom-elements-builtin&quot;&gt;&lt;/script&gt;<br/>&lt;script type=&quot;module&quot; src=&quot;https://unpkg.com/x-frame-bypass&quot;&gt;&lt;/script&gt;<br/>&lt;iframe is=&quot;x-frame-bypass&quot; src=&quot;https://widgets.kinopoisk.ru/discovery/trailer/167560?onlyPlayer=1&amp;autoplay=1&amp;cover=1&quot; width=&quot;500&quot; height=&quot;500&quot;&gt;&lt;/iframe&gt;</li></ul>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | kinopoisk film id

// получить трейлеры,тизеры,видео для фильма по kinopoisk film id
FilmsAPI.apiV22FilmsIdVideosGet(id: id) { (response, error) in
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
 **id** | **Int** | kinopoisk film id | 

### Return type

[**VideoResponse**](VideoResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsPremieresGet**
```swift
    open class func apiV22FilmsPremieresGet(year: Int, month: Month_apiV22FilmsPremieresGet, completion: @escaping (_ data: PremiereResponse?, _ error: Error?) -> Void)
```

получить список кинопремьер

Данный эндпоинт возвращает список кинопремьер. Например https://www.kinopoisk.ru/premiere/

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let year = 987 // Int | год релиза
let month = "month_example" // String | месяц релиза

// получить список кинопремьер
FilmsAPI.apiV22FilmsPremieresGet(year: year, month: month) { (response, error) in
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
 **year** | **Int** | год релиза | 
 **month** | **String** | месяц релиза | 

### Return type

[**PremiereResponse**](PremiereResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

