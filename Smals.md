## ProductsController

#### Get singleton instance
The singleton instance of the ``` ProductsController ``` class can be accessed from the API Client.
```csharp

UberClient client = new UberClient();
IProductsController products = client.Products;
```

### GetProductsAsync

> The Products endpoint returns information about the Uber products offered at a given location. The response includes the display name and other details about each product, and lists the products in the proper display order.
> 
> Some Products, such as experiments or promotions such as UberPOOL and UberFRESH, will not be returned by this endpoint.
> 

```csharp
Task<ProductsResponse2> GetProductsAsync(
                int latitude,
                int longitude)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| latitude |  ``` Required ```  | Latitude component of location. |
| longitude |  ``` Required ```  | Longitude component of location. |



#### Example Usage:
```csharp
int latitude = 218;
int longitude = 218;

ProductsResponse2 result = await products.GetProductsAsync(latitude, longitude);

```





## EstimatesController

#### Get singleton instance
The singleton instance of the ``` EstimatesController ``` class can be accessed from the API Client.
```csharp

UberClient client = new UberClient();
IEstimatesController estimates = client.Estimates;
```

### GetEstimatesPriceAsync

> The Price Estimates endpoint returns an estimated price range for each product offered at a given location. The price estimate is provided as a formatted string with the full price range and the localized currency symbol.
> 
> The response also includes low and high estimates, and the ISO 4217 currency code for situations requiring currency conversion. When surge is active for a particular product, its surge_multiplier will be greater than 1, but the price estimate already factors in this multiplier.
> 

```csharp
Task<EstimatesPriceResponse> GetEstimatesPriceAsync(
                string endLatitude,
                string endLongitude,
                string startLatitude,
                string startLongitude)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| endLatitude |  ``` Required ```  | Latitude component of end location. |
| endLongitude |  ``` Required ```  | Longitude component of end location. |
| startLatitude |  ``` Required ```  | Latitude component of start location. |
| startLongitude |  ``` Required ```  | Longitude component of start location. |



#### Example Usage:
```csharp
string endLatitude = "end_latitude";
string endLongitude = "end_longitude";
string startLatitude = "start_latitude";
string startLongitude = "start_longitude";

EstimatesPriceResponse result = await estimates.GetEstimatesPriceAsync(endLatitude, endLongitude, startLatitude, startLongitude);

```





### GetEstimatesTimeAsync

> The Time Estimates endpoint returns ETAs for all products offered at a given location, with the responses expressed as integers in seconds. We recommend that this endpoint be called every minute to provide the most accurate, up-to-date ETAs.

```csharp
Task<EstimatesTimeResponse> GetEstimatesTimeAsync(
                int startLatitude,
                int startLongitude,
                string customerUuid = null,
                string productId = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| startLatitude |  ``` Required ```  | Latitude component. |
| startLongitude |  ``` Required ```  | Longitude component. |
| customerUuid |  ``` Optional ```  | Unique customer identifier to be used for experience customization. |
| productId |  ``` Optional ```  | Unique identifier representing a specific product for a given latitude & longitude. |



#### Example Usage:
```csharp
int startLatitude = 218;
int startLongitude = 218;
string customerUuid = "customer_uuid ";
string productId = "product_id ";

EstimatesTimeResponse result = await estimates.GetEstimatesTimeAsync(startLatitude, startLongitude, customerUuid, productId);

```





## PromotionsController

#### Get singleton instance
The singleton instance of the ``` PromotionsController ``` class can be accessed from the API Client.
```csharp

UberClient client = new UberClient();
IPromotionsController promotions = client.Promotions;
```

### GetPromotionsAsync

> The Promotions endpoint returns information about the promotion that will be available to a new user based on their activity's location. These promotions do not apply for existing users.

```csharp
Task<PromotionsResponse> GetPromotionsAsync(
                string endLatitude,
                string endLongitude,
                string startLatitude,
                string startLongitude)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| endLatitude |  ``` Required ```  | Latitude component of end location. |
| endLongitude |  ``` Required ```  | Longitude component of end location. |
| startLatitude |  ``` Required ```  | Latitude component of start location. |
| startLongitude |  ``` Required ```  | Longitude component of start location. |



#### Example Usage:
```csharp
string endLatitude = "end_latitude";
string endLongitude = "end_longitude";
string startLatitude = "start_latitude";
string startLongitude = "start_longitude";

PromotionsResponse result = await promotions.GetPromotionsAsync(endLatitude, endLongitude, startLatitude, startLongitude);

```





## MeController

#### Get singleton instance
The singleton instance of the ``` MeController ``` class can be accessed from the API Client.
```csharp

UberClient client = new UberClient();
IMeController me = client.Me;
```

### GetMeAsync

> The User Profile endpoint returns information about the Uber user that has authorized with the application.

```csharp
Task<MeResponse> GetMeAsync()
```

#### Example Usage:
```csharp

MeResponse result = await me.GetMeAsync();

```





## RequestsController

#### Get singleton instance
The singleton instance of the ``` RequestsController ``` class can be accessed from the API Client.
```csharp

UberClient client = new UberClient();
IRequestsController requests = client.Requests;
```

### GetRequestsReceiptByRequestIdAsync

> Get the receipt information of the completed request.

```csharp
Task<RequestsReceiptResponse> GetRequestsReceiptByRequestIdAsync(
                string requestId)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| requestId |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
string requestId = "request_id";

RequestsReceiptResponse result = await requests.GetRequestsReceiptByRequestIdAsync(requestId);

```





### GetRequestsMapByRequestIdAsync

> Get a map with a visual representation of a Request.

```csharp
Task<RequestsMapResponse> GetRequestsMapByRequestIdAsync(
                string requestId)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| requestId |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
string requestId = "request_id";

RequestsMapResponse result = await requests.GetRequestsMapByRequestIdAsync(requestId);

```





### GetRequestsByRequestIdAsync

> Get the real time status of an ongoing trip that was created using the Ride Request endpoint.

```csharp
Task<RequestsResponse> GetRequestsByRequestIdAsync(
                string requestId)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| requestId |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
string requestId = "request_id";

RequestsResponse result = await requests.GetRequestsByRequestIdAsync(requestId);

```





### DeleteRequestsByRequestIdAsync

> Cancel an ongoing Request on behalf of a rider.

```csharp
Task DeleteRequestsByRequestIdAsync(
                string requestId)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| requestId |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
string requestId = "request_id";

await requests.DeleteRequestsByRequestIdAsync(requestId);

```





### CreateRequestsEstimateAsync

> The Request Estimate endpoint allows a ride to be estimated given the desired product, start, and end locations. If the end location is not provided, only the pickup ETA and details of surge pricing information are provided. If the pickup ETA is null, there are no cars available, but an estimate may still be given to the user.
> 
> You can use this endpoint to determine if surge pricing is in effect. Do this before attempting to make a request so that you can preemptively have a user confirm surge by sending them to the surge_confirmation_href provided in the response.
> 

```csharp
Task<RequestsEstimateResponse> CreateRequestsEstimateAsync(
                string productId,
                int startLatitude,
                int startLongitude,
                int? endLatitude = null,
                int? endLongitude = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| productId |  ``` Required ```  | The unique ID of the product being requested. |
| startLatitude |  ``` Required ```  | The beginning or "pickup" latitude. |
| startLongitude |  ``` Required ```  | The beginning or "pickup" longitude. |
| endLatitude |  ``` Optional ```  | The final or destination latitude. If not included, only the pickup ETA and details of surge pricing will be included. |
| endLongitude |  ``` Optional ```  | The final or destination longitude. If not included, only the pickup ETA and details of surge pricing will be included. |



#### Example Usage:
```csharp
string productId = "product_id";
int startLatitude = 218;
int startLongitude = 218;
int? endLatitude = 218;
int? endLongitude = 218;

RequestsEstimateResponse result = await requests.CreateRequestsEstimateAsync(productId, startLatitude, startLongitude, endLatitude, endLongitude);

```





### CreateRequestsAsync

> The Request endpoint allows a ride to be requested on behalf of an Uber user given their desired product, start, and end locations.

```csharp
Task<RequestsResponse> CreateRequestsAsync(
                string endLatitude,
                string endLongitude,
                string productId,
                string startLatitude,
                string startLongitude,
                string surgeConfirmationId = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| endLatitude |  ``` Required ```  | Latitude component of end location. |
| endLongitude |  ``` Required ```  | Longitude component of end location. |
| productId |  ``` Required ```  | The unique ID of the product being requested. |
| startLatitude |  ``` Required ```  | Latitude component of start location. |
| startLongitude |  ``` Required ```  | Longitude component of start location. |
| surgeConfirmationId |  ``` Optional ```  | The unique identifier of the surge session for a user. Required when returned from a 409 Conflict response on previous POST attempt. |



#### Example Usage:
```csharp
string endLatitude = "end_latitude";
string endLongitude = "end_longitude";
string productId = "product_id";
string startLatitude = "start_latitude";
string startLongitude = "start_longitude";
string surgeConfirmationId = "surge_confirmation_id";

RequestsResponse result = await requests.CreateRequestsAsync(endLatitude, endLongitude, productId, startLatitude, startLongitude, surgeConfirmationId);

```



#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 209 | TODO: Add error message |





## ProductsByProductIdController

#### Get singleton instance
The singleton instance of the ``` ProductsByProductIdController ``` class can be accessed from the API Client.
```csharp

UberClient client = new UberClient();
IProductsByProductIdController productsByProductId = client.ProductsByProductId;
```

### GetProductsByProductIdAsync

> *Tags:*  ``` Streaming ``` 

> Returns information about the Uber product.

```csharp
Task GetProductsByProductIdAsync(
                string productId)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| productId |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
string productId = "product_id";

productsByProductId.DataArrivalEvent += ProductsByProductId_DataArrivalEvent;
productsByProductId.StreamClosedEvent += ProductsByProductId_StreamClosedEvent;
ProductsResponse result = await productsByProductId.GetProductsByProductIdAsync(productId);

```

Stream events can be hooked as follows.
```csharp
/// <summary>
/// Data arrival event handler
/// </summary>
/// <param name="source">Instance of the streaming controller</param>
/// <param name="data">Deserialised data returned from the stream</param>
private void ProductsByProductId_DataArrivalEvent(Uber.PCL.Controllers.BaseStreamHandler<ProductsResponse> source, ProductsResponse data)
{
    // TODO: Add implememtation here
    throw new NotImplementedException();
}

/// <summary>
/// Stream closed event handler
/// </summary>
/// <param name="source">Instance of the streaming controller</param>
private void ProductsByProductId_StreamClosedEvent(Uber.PCL.Controllers.BaseStreamHandler<ProductsResponse> source)
{
    // TODO: Add implememtation here
    throw new NotImplementedException();
}
```





