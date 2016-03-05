## How to Build

The generated code uses a few NuGet Packages e.g., Newtonsoft.Json, UniRest,
and Microsoft Base Class Library. The reference to these packages is already
added as in the packages.config file. If the automatic NuGet package restore
is enabled, these dependencies will be installed automatically. Therefore,
you will need internet access for build.
     
    1. Open the solution (SaritasaBMEAPI.sln) file.
    2. Invoke the build process using `F6` key or using the `Build` menu as shown below.

![Building SDK using Visual Studio](http://apidocs.io/illustration/cs?step=buildSDK&workspaceName=SaritasaBMEAPI&projectName=SaritasaBMEAPI.PCL)

## How to Use

The following section explains how to use the SaritasaBMEAPI library in a new console project.     
    
#### 1. Starting a new project
For starting a new project, right click on the current solution from the *solution explorer* and choose  ``` Add -> New Project ```.

![Add a new project in the existing solution using Visual Studio](http://apidocs.io/illustration/cs?step=addProject&workspaceName=SaritasaBMEAPI&projectName=SaritasaBMEAPI.PCL)

Next, choose "Console Application", provide a ``` TestConsoleProject ``` as the project name and click ``` OK ```.

![Create a new console project using Visual Studio](http://apidocs.io/illustration/cs?step=createProject&workspaceName=SaritasaBMEAPI&projectName=SaritasaBMEAPI.PCL)


#### 2. Set as startup project
The new console project is the entry point for the eventual execution. This requires us to set the ``` TestConsoleProject ``` as the start-up project. To do this, right-click on the  ``` TestConsoleProject ``` and choose  ``` Set as StartUp Project ``` form the context menu.

![Set the new cosole project as the start up project](http://apidocs.io/illustration/cs?step=setStartup&workspaceName=SaritasaBMEAPI&projectName=SaritasaBMEAPI.PCL)


#### 3. Add reference of the library project
In order to use the SaritasaBMEAPI library in the new project, first we must add a projet reference to the ``` TestConsoleProject ```. First, right click on the ``` References ``` node in the *solution explorer* and click ``` Add Reference... ```.

![Open references of the TestConsoleProject](http://apidocs.io/illustration/cs?step=addReference&workspaceName=SaritasaBMEAPI&projectName=SaritasaBMEAPI.PCL)

Next, a window will be displayed where we must set the ``` checkbox ``` on ``` SaritasaBMEAPI.PCL ``` and click ``` OK ```. By doing this, we have added a reference of the ```SaritasaBMEAPI.PCL``` project into the new ``` TestConsoleProject ```.

![Add a reference to the TestConsoleProject](http://apidocs.io/illustration/cs?step=createReference&workspaceName=SaritasaBMEAPI&projectName=SaritasaBMEAPI.PCL)


#### 4. Write sample code
Once the ``` TestConsoleProject ``` is created, a file named ``` Program.cs ``` will be visible in the *solution explorer* with an empty ``` Main ``` method. This is the entry point for the execution of the entire solution.
Here, you can add code to initialize the client library and acquire the instance of a *Controller* class. Sample code to initialize the client library and using controller methods is given in the subsequent sections.

![Add a reference to the TestConsoleProject](http://apidocs.io/illustration/cs?step=addCode&workspaceName=SaritasaBMEAPI&projectName=SaritasaBMEAPI.PCL)

## Authentication

The SaritasaBMEAPI library uses Custom Header authentication type. In order to setup authentication, you need the following information.

| Parameter | Description |
|-----------|-------------|
| Authorization | Value sent as an http header value || User-Timezone | Value sent as an http header value |

## Initialization

#### Initialize API Client
The API client can be initialized as follows.

```csharp
// Configuration parameters and credentials
string baseUrl = "baseUrl";
string userTimezone = "userTimezone";
string authorization = "authorization";

SaritasaBMEAPIClient client = new SaritasaBMEAPIClient(baseUrl, userTimezone, authorization);
```

## AuthenticationController

#### Get singleton instance
The singleton instance of the ``` AuthenticationController ``` class can be accessed from the API Client.
```csharp
IAuthenticationController authentication = client.Authentication;
```

### LoginAsync

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or login user by providing username and password paylow

```csharp
Task<User> LoginAsync(
                string email,
                string password)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | TODO: Add a parameter description |
| password |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
string email = "email";
string password = "password";

User result = await authentication.LoginAsync(email, password);

```





### ProfileUpdateFullAsync

> This endpoints is responsible f or FULL update of the user’s prof ile. One nuance - if you try to change email address through PUT or PATCH endpoint the system won’t change it, you need to do POST /auth/email/ endpoint instead

```csharp
Task<User> ProfileUpdateFullAsync(
                User user)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| user |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
var user = new User();

User result = await authentication.ProfileUpdateFullAsync(user);

```





### ProfileUpdatePartialAsync

> This endpoints is responsible f or partial update of prof ile of the logged in user. One nuance - if you try to change email address through PUT or PATCH endpoint the system won’t change it, you need to do POST /auth/email/ endpoint instead. You can supply here only f ields that got changed instead of FULL body of the entity (as in PUT method)

```csharp
Task<User> ProfileUpdatePartialAsync(
                User user)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| user |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
var user = new User();

User result = await authentication.ProfileUpdatePartialAsync(user);

```





### RegisterAsync

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or registering a new account

```csharp
Task<User> RegisterAsync(
                User user)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| user |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
var user = new User();

User result = await authentication.RegisterAsync(user);

```





### ProfileAsync

> This endpoints is responsible f or detailed prof ile inf ormation of the logged in user

```csharp
Task<User> ProfileAsync()
```

#### Example Usage:
```csharp

User result = await authentication.ProfileAsync();

```





### ChangeEmailAsync

> This endpoints is responsible f or changing email of the user

```csharp
Task<string> ChangeEmailAsync(
                string currentPassword,
                string newEmail)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| currentPassword |  ``` Required ```  | TODO: Add a parameter description |
| newEmail |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
string currentPassword = "current_password";
string newEmail = "new_email";

string result = await authentication.ChangeEmailAsync(currentPassword, newEmail);

```





### ChangePasswordAsync

> This endpoints is responsible for changing user's password

```csharp
Task<string> ChangePasswordAsync(
                string currentPassword,
                string newPassword)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| currentPassword |  ``` Required ```  | TODO: Add a parameter description |
| newPassword |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
string currentPassword = "current_password";
string newPassword = "new_password";

string result = await authentication.ChangePasswordAsync(currentPassword, newPassword);

```





### ResetPasswordAsync

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or sending email with unique link to reset the password. Should be used on forgot password screen of the app

```csharp
Task<string> ResetPasswordAsync(
                object email)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  ``` Dynamic ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
object email = new object();

string result = await authentication.ResetPasswordAsync(email);

```





### LogoutAsync

> This endpoints is responsible to logout action of the app.

```csharp
Task<string> LogoutAsync()
```

#### Example Usage:
```csharp

string result = await authentication.LogoutAsync();

```





## TasksController

#### Get singleton instance
The singleton instance of the ``` TasksController ``` class can be accessed from the API Client.
```csharp
ITasksController tasks = client.Tasks;
```

### SearchTasksAsync

> *Tags:*  ``` Skips Authentication ``` 

> TODO: Add a method description

```csharp
Task<TasksResponse> SearchTasksAsync(
                Dictionary<string, object> queryParameters = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```csharp
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


TasksResponse result = await tasks.SearchTasksAsync(queryParams);

```





### MyTasksAsync

> TODO: Add a method description

```csharp
Task<TasksResponse> MyTasksAsync(
                Dictionary<string, object> queryParameters = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```csharp
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


TasksResponse result = await tasks.MyTasksAsync(queryParams);

```





### CreateTaskAsync

> This endpoints is responsible f or adding a new task to the system

```csharp
Task<Task> CreateTaskAsync(
                TaskRequest task)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| task |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
var task = new TaskRequest();

Task result = await tasks.CreateTaskAsync(task);

```





### TaskAsync

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible for getting details about given task

```csharp
Task<Task> TaskAsync(
                int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
int taskID = 18;

Task result = await tasks.TaskAsync(taskID);

```





### UpdateTaskFullAsync

> This endpoints is responsible for updating task details. Only admin or poster of the task can call this method

```csharp
Task<Task> UpdateTaskFullAsync(
                TaskRequest task,
                int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| task |  ``` Required ```  | TODO: Add a parameter description |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
var task = new TaskRequest();
int taskID = 18;

Task result = await tasks.UpdateTaskFullAsync(task, taskID);

```





### TaskUpdatePartialAsync

> This endpoints is responsible for partial update of task resource

```csharp
Task<Task> TaskUpdatePartialAsync(
                TaskRequest task,
                int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| task |  ``` Required ```  | TODO: Add a parameter description |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
var task = new TaskRequest();
int taskID = 18;

Task result = await tasks.TaskUpdatePartialAsync(task, taskID);

```





### DeleteTaskAsync

> This endpoints is responsible for deleting the resource, use it to cancel the task. The record will not be physically deleted, but will be marked in db with status=X

```csharp
Task<Task> DeleteTaskAsync(
                int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
int taskID = 18;

Task result = await tasks.DeleteTaskAsync(taskID);

```





## WorkflowController

#### Get singleton instance
The singleton instance of the ``` WorkflowController ``` class can be accessed from the API Client.
```csharp
IWorkflowController workflow = client.Workflow;
```

### TaskApplyAsync

> This endpoints is responsible f or the user to apply to the task. Poster can’t apply to his own task. Only 3 taskers are allowed per task.

```csharp
Task<Tasker> TaskApplyAsync(
                int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
int taskID = 18;

Tasker result = await workflow.TaskApplyAsync(taskID);

```





### TaskApproveAsync

> This endpoints is responsible f or approving one of available taskers and assigning the task to that user.

```csharp
Task<Tasker> TaskApproveAsync(
                int taskID,
                object userParams)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| userParams |  ``` Required ```  ``` Dynamic ```  | Dictionary. Must contain 'user' field - ID of the user to approve and award the task. Should be in taskers list of the task |



#### Example Usage:
```csharp
int taskID = 18;
object userParams = new object();

Tasker result = await workflow.TaskApproveAsync(taskID, userParams);

```





### TaskDoneAsync

> This endpoints is responsible f or submitting task to Done status, this endpoint should be called by assigned tasker of the Task

```csharp
Task<Task> TaskDoneAsync(
                int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
int taskID = 18;

Task result = await workflow.TaskDoneAsync(taskID);

```





### TaskCompleteAsync

> This endpoints is responsible f or sending task to Completed status and should be called by poster of the task

```csharp
Task<Task> TaskCompleteAsync(
                int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
int taskID = 18;

Task result = await workflow.TaskCompleteAsync(taskID);

```





### TaskDisputeAsync

> This endpoints is responsible f or sending task to dispute status. It can be done by only poster or tasker of the task.

```csharp
Task<Task> TaskDisputeAsync(
                object disputeParams,
                int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| disputeParams |  ``` Required ```  ``` Dynamic ```  | Dictionary. Must contain 'dispute' field - message to explain why it’s moved to dispute |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
object disputeParams = new object();
int taskID = 18;

Task result = await workflow.TaskDisputeAsync(disputeParams, taskID);

```





### TaskViolationAsync

> This endpoints is responsible f or marking any task with violation f lag.

```csharp
Task<ViolationModel> TaskViolationAsync(
                int taskID,
                ViolationModel violation)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| violation |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
int taskID = 18;
var violation = new ViolationModel();

ViolationModel result = await workflow.TaskViolationAsync(taskID, violation);

```





### TaskReopenAsync

> This endpoints is responsible f or reopening the task by Poster, once it got DONE status as a result of POST /tasks/ID/done call.

```csharp
Task<dynamic> TaskReopenAsync(
                object descriptionParams,
                int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| descriptionParams |  ``` Required ```  ``` Dynamic ```  | Dictionary. Must contain 'description' field - detailed explanation why it’s being reopened |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
object descriptionParams = new object();
int taskID = 18;

dynamic result = await workflow.TaskReopenAsync(descriptionParams, taskID);

```





### TaskWithdrawAsync

> This endpoints is responsible for quitting the task and should be called by assigned Tasker of the task If you're not approved (*but applied) - this will remove the user from applied list of taskers

```csharp
Task<string> TaskWithdrawAsync(
                int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
int taskID = 18;

string result = await workflow.TaskWithdrawAsync(taskID);

```





## CategoriesController

#### Get singleton instance
The singleton instance of the ``` CategoriesController ``` class can be accessed from the API Client.
```csharp
ICategoriesController categories = client.Categories;
```

### CategoriesAsync

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or getting list of categories

```csharp
Task<CategoriesResponse> CategoriesAsync(
                Dictionary<string, object> queryParameters = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```csharp
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


CategoriesResponse result = await categories.CategoriesAsync(queryParams);

```





### TagsAsync

> *Tags:*  ``` Skips Authentication ``` 

> TODO: Add a method description

```csharp
Task<TagsResponse> TagsAsync(
                Dictionary<string, object> queryParameters = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```csharp
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


TagsResponse result = await categories.TagsAsync(queryParams);

```





## UsersController

#### Get singleton instance
The singleton instance of the ``` UsersController ``` class can be accessed from the API Client.
```csharp
IUsersController users = client.Users;
```

### UsersAsync

> 1. limit :=_int_ (pagination records per request)  2. offset :=_int_ (pagination skip records)  3. ordering := [date_joined] (fields to sort by results)  4. search :=_str_ (search by keyword through fields: skills, fist_name, last_name)  5. filter fields 	 6. gender := _str_ (filter by gender, F/M)

```csharp
Task<UsersResponse> UsersAsync(
                Dictionary<string, object> queryParameters = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```csharp
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


UsersResponse result = await users.UsersAsync(queryParams);

```





### UserAsync

> This endpoints is responsible for profile's detailed information

```csharp
Task<User> UserAsync(
                int userID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| userID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
int userID = 18;

User result = await users.UserAsync(userID);

```





## ImagesController

#### Get singleton instance
The singleton instance of the ``` ImagesController ``` class can be accessed from the API Client.
```csharp
IImagesController images = client.Images;
```

### ImagesAsync

> This endpoints is responsible for getting list of images for the task

```csharp
Task<ImagesResponse> ImagesAsync(
                int taskID,
                Dictionary<string, object> queryParameters = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```csharp
int taskID = 18;
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


ImagesResponse result = await images.ImagesAsync(taskID, queryParams);

```





### AddImageAsync

> This endpoints is responsible for adding images to the task, only poster or tasker of the task can add images. You can add images as soon as task is one of O/P/R [status](#statuses). If task is in different status (and therefore non updateable) the endpoint will generate error

```csharp
Task<ImageCreated> AddImageAsync(
                int taskID,
                FileStreamInfo upload)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| upload |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
int taskID = 18;
FileStreamInfo upload = null;

ImageCreated result = await images.AddImageAsync(taskID, upload);

```





### DeleteImageAsync

> This endpoints is responsible for deleting given image (secondary ID) from the task

```csharp
Task<string> DeleteImageAsync(
                int imageID,
                int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| imageID |  ``` Required ```  | TODO: Add a parameter description |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
int imageID = 18;
int taskID = 18;

string result = await images.DeleteImageAsync(imageID, taskID);

```





## DevicesController

#### Get singleton instance
The singleton instance of the ``` DevicesController ``` class can be accessed from the API Client.
```csharp
IDevicesController devices = client.Devices;
```

### RegisterDeviceAsync

> This endpoints is responsible for adding new mobile device token

```csharp
Task<APNSDevice> RegisterDeviceAsync(
                APNSDevice info)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| info |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```csharp
var info = new APNSDevice();

APNSDevice result = await devices.RegisterDeviceAsync(info);

```





