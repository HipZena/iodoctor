## EstimatesController

#### Get singleton instance
The singleton instance of the ``` EstimatesController ``` class can be accessed from the API Client.
```csharp
SmalsClient client = new SmalsClient();
IEstimatesController estimates = client.Estimates;
```

### GetEstimatesPriceAsync

> The Price Estimates endpoint returns an estimated price range
> for each product offered at a given location. The price estimate is
> provided as a formatted string with the full price range and the localized
> currency symbol.<br><br>The response also includes low and high estimates,
> and the [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217) currency code for
> situations requiring currency conversion. When surge is active for a particular
> product, its surge_multiplier will be greater than 1, but the price estimate
> already factors in this multiplier.
> 

```csharp
Task<List<PriceEstimate>> GetEstimatesPriceAsync(
                double endLatitude,
                double endLongitude,
                double startLatitude,
                double startLongitude)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| endLatitude |  ``` Required ```  | Latitude component of end location. || endLongitude |  ``` Required ```  | Longitude component of end location. || startLatitude |  ``` Required ```  | Latitude component of start location. || startLongitude |  ``` Required ```  | Longitude component of start location. |


#### Usage:
```csharp
double endLatitude = 10.1;
double endLongitude = 10.1;
double startLatitude = 10.1;
double startLongitude = 10.1;

List<PriceEstimate> result = await estimates.GetEstimatesPriceAsync(endLatitude, endLongitude, startLatitude, startLongitude);

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 500 | Unexpected error |




### GetEstimatesTimeAsync

> The Time Estimates endpoint returns ETAs for all products offered at a given location, with the responses expressed as integers in seconds. We recommend that this endpoint be called every minute to provide the most accurate, up-to-date ETAs.

```csharp
Task<List<Product>> GetEstimatesTimeAsync(
                double startLatitude,
                double startLongitude,
                Guid? customerUuid = null,
                string productId = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| startLatitude |  ``` Required ```  | Latitude component of start location. || startLongitude |  ``` Required ```  | Longitude component of start location. || customerUuid |  ``` Optional ```  | Unique customer identifier to be used for experience customization. || productId |  ``` Optional ```  | Unique identifier representing a specific product for a given latitude & longitude. |


#### Usage:
```csharp
double startLatitude = 10.1;
double startLongitude = 10.1;
Guid? customerUuid = Guid.NewGuid();
string productId = "some string";

List<Product> result = await estimates.GetEstimatesTimeAsync(startLatitude, startLongitude, customerUuid, productId);

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 500 | Unexpected error |




## UserController

#### Get singleton instance
The singleton instance of the ``` UserController ``` class can be accessed from the API Client.
```csharp
SmalsClient client = new SmalsClient();
IUserController user = client.User;
```

### GetHistoryAsync

> The User Activity endpoint returns data about a user's lifetime activity with Uber. The response will include pickup locations and times, dropoff locations and times, the distance of past requests, and information about which products were requested.<br><br>The history array in the response will have a maximum length based on the limit parameter. The response value count may exceed limit, therefore subsequent API requests may be necessary.

```csharp
Task<Activities> GetHistoryAsync(
                int? limit = null,
                int? offset = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| limit |  ``` Optional ```  | Number of items to retrieve. Default is 5, maximum is 100. || offset |  ``` Optional ```  | Offset the list of returned results by this amount. Default is zero. |


#### Usage:
```csharp
int? limit = 99;
int? offset = 99;

Activities result = await user.GetHistoryAsync(limit, offset);

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 500 | Unexpected error |




### GetMeAsync

> The User Profile endpoint returns information about the Uber user that has authorized with the application.

```csharp
Task<Profile> GetMeAsync()
```

#### Usage:
```csharp

Profile result = await user.GetMeAsync();

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 500 | Unexpected error |




## ProductsController

#### Get singleton instance
The singleton instance of the ``` ProductsController ``` class can be accessed from the API Client.
```csharp
SmalsClient client = new SmalsClient();
IProductsController products = client.Products;
```

### GetProductsAsync

> The Products endpoint returns information about the *Uber* products
> offered at a given location. The response includes the display name
> and other details about each product, and lists the products in the
> proper display order.
> 

```csharp
Task<List<Product>> GetProductsAsync(
                double latitude,
                double longitude)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| latitude |  ``` Required ```  | Latitude component of location. || longitude |  ``` Required ```  | Longitude component of location. |


#### Usage:
```csharp
double latitude = 10.1;
double longitude = 10.1;

List<Product> result = await products.GetProductsAsync(latitude, longitude);

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 500 | Unexpected error |




