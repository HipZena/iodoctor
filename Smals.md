## SampleStatusesController

#### Get singleton instance
The singleton instance of the ``` SampleStatusesController ``` class can be accessed from the API Client.
```csharp
// Configuration parameters and credentials
string oAuthToken = "oAuthToken";
string oAuthTokenSecret = "oAuthTokenSecret";
string oAuthClientId = "oAuthClientId";
string oAuthClientSecret = "oAuthClientSecret";

TwitterClient client = new TwitterClient(oAuthToken, oAuthTokenSecret, oAuthClientId, oAuthClientSecret);
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

sampleStatuses.DataArrivalEvent += SampleStatuses_DataArrivalEvent;
sampleStatuses.StreamClosedEvent += SampleStatuses_StreamClosedEvent;
await sampleStatuses.GetSampleStatusesAsync();

```

Stream events can be hooked as follows.
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





