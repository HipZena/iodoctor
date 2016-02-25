## Build Instructions

The generated code uses a few NuGet Packages e.g., Newtonsoft.Json, UniRest,
and Microsoft Base Class Library. The reference to these packages is already
added as in the packages.config file. If the automatic NuGet package restore
is enabled, these dependencies will be installed automatically. Therefore,
you will need internet access for build.
     
    1. Open the solution (Twitter.sln) file.
    2. Invoke the build process using `F6` key or using the `Build` menu as shown below.

![Building SDK using Visual Studio](http://apidocs.io/illustration/cs?step=buildSDK&workspaceName=Twitter&projectName=Twitter.PCL)

## Initialization

#### Initialize API Client
The API client can be initialized as follows.

```csharp
// Configuration parameters and credentials
string oAuthToken = "oAuthToken"; // The OAuth token to be set before API calls
string oAuthTokenSecret = "oAuthTokenSecret"; // The OAuth token secret to be set before API calls
string oAuthClientId = "oAuthClientId"; // The OAuth client id to be set before API calls
string oAuthClientSecret = "oAuthClientSecret"; // The OAuth client secret to be set before API calls

TwitterClient client = new TwitterClient(oAuthToken, oAuthTokenSecret, oAuthClientId, oAuthClientSecret);
```

## SampleStatusesController

#### Get singleton instance
The singleton instance of the ``` SampleStatusesController ``` class can be accessed from the API Client.
```csharp
ISampleStatusesController sampleStatuses = client.SampleStatuses;
```

### GetSampleStatusesAsync

> *Tags:*  ``` Streaming ``` 

> TODO: Add a method description

```csharp
Task GetSampleStatusesAsync()
```

#### Example Usage:
```csharp

// Hook events before opening the stream
sampleStatuses.DataArrivalEvent += SampleStatuses_DataArrivalEvent;
sampleStatuses.StreamClosedEvent += SampleStatuses_StreamClosedEvent;

await sampleStatuses.GetSampleStatusesAsync();

```

Stream event handlers can be implemented as follows.
```csharp
/// <summary>
/// Data arrival event handler
/// </summary>
/// <param name="source">Instance of the streaming controller</param>
/// <param name="data">Deserialised data returned from the stream</param>
private void SampleStatuses_DataArrivalEvent(Twitter.PCL.Controllers.BaseStreamHandler<dynamic> source, dynamic data)
{
    // TODO: Add implememtation here
    throw new NotImplementedException();
}

/// <summary>
/// Stream closed event handler
/// </summary>
/// <param name="source">Instance of the streaming controller</param>
private void SampleStatuses_StreamClosedEvent(Twitter.PCL.Controllers.BaseStreamHandler<dynamic> source)
{
    // TODO: Add implememtation here
    throw new NotImplementedException();
}
```
