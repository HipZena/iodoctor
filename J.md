# Getting Started
# Class Reference
## <a name="list_of_controllers"></a>List of Controllers

* [AuthenticationController](#authentication_controller)
* [TasksController](#tasks_controller)
* [WorkflowController](#workflow_controller)
* [CategoriesController](#categories_controller)
* [UsersController](#users_controller)
* [ImagesController](#images_controller)
* [DevicesController](#devices_controller)

## <a name="authentication_controller"></a>AuthenticationController

#### Get controller instance
The instance of the ``` AuthenticationController ``` class can be created using the constructor.
```java
AuthenticationController authentication = new AuthenticationController();
```

### <a name="login_async"></a>loginAsync

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or login user by providing username and password paylow

```java
void loginAsync(
            final String email,
            final String password,
            final APICallBack<User> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | TODO: Add a parameter description |
| password |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
String email = "email";
String password = "password";

User result = await authentication.loginAsync(email, password);

```





### <a name="profile_update_full_async"></a>profileUpdateFullAsync

> This endpoints is responsible f or FULL update of the user’s prof ile. One nuance - if you try to change email address through PUT or PATCH endpoint the system won’t change it, you need to do POST /auth/email/ endpoint instead

```java
void profileUpdateFullAsync(
            final User user,
            final APICallBack<User> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| user |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
var user = new User();

User result = await authentication.profileUpdateFullAsync(user);

```





### <a name="profile_update_partial_async"></a>profileUpdatePartialAsync

> This endpoints is responsible f or partial update of prof ile of the logged in user. One nuance - if you try to change email address through PUT or PATCH endpoint the system won’t change it, you need to do POST /auth/email/ endpoint instead. You can supply here only f ields that got changed instead of FULL body of the entity (as in PUT method)

```java
void profileUpdatePartialAsync(
            final User user,
            final APICallBack<User> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| user |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
var user = new User();

User result = await authentication.profileUpdatePartialAsync(user);

```





### <a name="register_async"></a>registerAsync

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or registering a new account

```java
void registerAsync(
            final User user,
            final APICallBack<User> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| user |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
var user = new User();

User result = await authentication.registerAsync(user);

```





### <a name="profile_async"></a>profileAsync

> This endpoints is responsible f or detailed prof ile inf ormation of the logged in user

```java
void profileAsync(
            final APICallBack<User> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|



#### Example Usage:
```java

User result = await authentication.profileAsync();

```





### <a name="change_email_async"></a>changeEmailAsync

> This endpoints is responsible f or changing email of the user

```java
void changeEmailAsync(
            final String currentPassword,
            final String newEmail,
            final APICallBack<String> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| currentPassword |  ``` Required ```  | TODO: Add a parameter description |
| newEmail |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
String currentPassword = "current_password";
String newEmail = "new_email";

String result = await authentication.changeEmailAsync(currentPassword, newEmail);

```





### <a name="change_password_async"></a>changePasswordAsync

> This endpoints is responsible for changing user's password

```java
void changePasswordAsync(
            final String currentPassword,
            final String newPassword,
            final APICallBack<String> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| currentPassword |  ``` Required ```  | TODO: Add a parameter description |
| newPassword |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
String currentPassword = "current_password";
String newPassword = "new_password";

String result = await authentication.changePasswordAsync(currentPassword, newPassword);

```





### <a name="reset_password_async"></a>resetPasswordAsync

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or sending email with unique link to reset the password. Should be used on forgot password screen of the app

```java
void resetPasswordAsync(
            final Object email,
            final APICallBack<String> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  ``` Dynamic ```  | TODO: Add a parameter description |



#### Example Usage:
```java
Object email = new object();

String result = await authentication.resetPasswordAsync(email);

```





### <a name="logout_async"></a>logoutAsync

> This endpoints is responsible to logout action of the app.

```java
void logoutAsync(
            final APICallBack<String> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|



#### Example Usage:
```java

String result = await authentication.logoutAsync();

```





[Back to List of Controllers](#list_of_controllers)
## <a name="tasks_controller"></a>TasksController

#### Get controller instance
The instance of the ``` TasksController ``` class can be created using the constructor.
```java
TasksController tasks = new TasksController();
```

### <a name="search_tasks_async"></a>searchTasksAsync

> *Tags:*  ``` Skips Authentication ``` 

> TODO: Add a method description

```java
void searchTasksAsync(
            Map<String, Object> queryParameters,
            final APICallBack<TasksResponse> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


TasksResponse result = await tasks.searchTasksAsync(queryParams);

```





### <a name="my_tasks_async"></a>myTasksAsync

> TODO: Add a method description

```java
void myTasksAsync(
            Map<String, Object> queryParameters,
            final APICallBack<TasksResponse> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


TasksResponse result = await tasks.myTasksAsync(queryParams);

```





### <a name="create_task_async"></a>createTaskAsync

> This endpoints is responsible f or adding a new task to the system

```java
void createTaskAsync(
            final TaskRequest task,
            final APICallBack<Task> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| task |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
var task = new TaskRequest();

Task result = await tasks.createTaskAsync(task);

```





### <a name="task_async"></a>taskAsync

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible for getting details about given task

```java
void taskAsync(
            final int taskID,
            final APICallBack<Task> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
int taskID = 130;

Task result = await tasks.taskAsync(taskID);

```





### <a name="update_task_full_async"></a>updateTaskFullAsync

> This endpoints is responsible for updating task details. Only admin or poster of the task can call this method

```java
void updateTaskFullAsync(
            final TaskRequest task,
            final int taskID,
            final APICallBack<Task> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| task |  ``` Required ```  | TODO: Add a parameter description |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
var task = new TaskRequest();
int taskID = 130;

Task result = await tasks.updateTaskFullAsync(task, taskID);

```





### <a name="task_update_partial_async"></a>taskUpdatePartialAsync

> This endpoints is responsible for partial update of task resource

```java
void taskUpdatePartialAsync(
            final TaskRequest task,
            final int taskID,
            final APICallBack<Task> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| task |  ``` Required ```  | TODO: Add a parameter description |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
var task = new TaskRequest();
int taskID = 130;

Task result = await tasks.taskUpdatePartialAsync(task, taskID);

```





### <a name="delete_task_async"></a>deleteTaskAsync

> This endpoints is responsible for deleting the resource, use it to cancel the task. The record will not be physically deleted, but will be marked in db with status=X

```java
void deleteTaskAsync(
            final int taskID,
            final APICallBack<Task> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
int taskID = 130;

Task result = await tasks.deleteTaskAsync(taskID);

```





[Back to List of Controllers](#list_of_controllers)
## <a name="workflow_controller"></a>WorkflowController

#### Get controller instance
The instance of the ``` WorkflowController ``` class can be created using the constructor.
```java
WorkflowController workflow = new WorkflowController();
```

### <a name="task_apply_async"></a>taskApplyAsync

> This endpoints is responsible f or the user to apply to the task. Poster can’t apply to his own task. Only 3 taskers are allowed per task.

```java
void taskApplyAsync(
            final int taskID,
            final APICallBack<Tasker> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
int taskID = 130;

Tasker result = await workflow.taskApplyAsync(taskID);

```





### <a name="task_approve_async"></a>taskApproveAsync

> This endpoints is responsible f or approving one of available taskers and assigning the task to that user.

```java
void taskApproveAsync(
            final int taskID,
            final Object userParams,
            final APICallBack<Tasker> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| userParams |  ``` Required ```  ``` Dynamic ```  | Dictionary. Must contain 'user' field - ID of the user to approve and award the task. Should be in taskers list of the task |



#### Example Usage:
```java
int taskID = 130;
Object userParams = new object();

Tasker result = await workflow.taskApproveAsync(taskID, userParams);

```





### <a name="task_done_async"></a>taskDoneAsync

> This endpoints is responsible f or submitting task to Done status, this endpoint should be called by assigned tasker of the Task

```java
void taskDoneAsync(
            final int taskID,
            final APICallBack<Task> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
int taskID = 130;

Task result = await workflow.taskDoneAsync(taskID);

```





### <a name="task_complete_async"></a>taskCompleteAsync

> This endpoints is responsible f or sending task to Completed status and should be called by poster of the task

```java
void taskCompleteAsync(
            final int taskID,
            final APICallBack<Task> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
int taskID = 130;

Task result = await workflow.taskCompleteAsync(taskID);

```





### <a name="task_dispute_async"></a>taskDisputeAsync

> This endpoints is responsible f or sending task to dispute status. It can be done by only poster or tasker of the task.

```java
void taskDisputeAsync(
            final Object disputeParams,
            final int taskID,
            final APICallBack<Task> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| disputeParams |  ``` Required ```  ``` Dynamic ```  | Dictionary. Must contain 'dispute' field - message to explain why it’s moved to dispute |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
Object disputeParams = new object();
int taskID = 130;

Task result = await workflow.taskDisputeAsync(disputeParams, taskID);

```





### <a name="task_violation_async"></a>taskViolationAsync

> This endpoints is responsible f or marking any task with violation f lag.

```java
void taskViolationAsync(
            final int taskID,
            final ViolationModel violation,
            final APICallBack<ViolationModel> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| violation |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
int taskID = 130;
var violation = new ViolationModel();

ViolationModel result = await workflow.taskViolationAsync(taskID, violation);

```





### <a name="task_reopen_async"></a>taskReopenAsync

> This endpoints is responsible f or reopening the task by Poster, once it got DONE status as a result of POST /tasks/ID/done call.

```java
void taskReopenAsync(
            final Object descriptionParams,
            final int taskID,
            final APICallBack<LinkedHashMap<String, Object>> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| descriptionParams |  ``` Required ```  ``` Dynamic ```  | Dictionary. Must contain 'description' field - detailed explanation why it’s being reopened |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
Object descriptionParams = new object();
int taskID = 130;

LinkedHashMap<String, Object> result = await workflow.taskReopenAsync(descriptionParams, taskID);

```





### <a name="task_withdraw_async"></a>taskWithdrawAsync

> This endpoints is responsible for quitting the task and should be called by assigned Tasker of the task If you're not approved (*but applied) - this will remove the user from applied list of taskers

```java
void taskWithdrawAsync(
            final int taskID,
            final APICallBack<String> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
int taskID = 130;

String result = await workflow.taskWithdrawAsync(taskID);

```





[Back to List of Controllers](#list_of_controllers)
## <a name="categories_controller"></a>CategoriesController

#### Get controller instance
The instance of the ``` CategoriesController ``` class can be created using the constructor.
```java
CategoriesController categories = new CategoriesController();
```

### <a name="categories_async"></a>categoriesAsync

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or getting list of categories

```java
void categoriesAsync(
            Map<String, Object> queryParameters,
            final APICallBack<CategoriesResponse> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


CategoriesResponse result = await categories.categoriesAsync(queryParams);

```





### <a name="tags_async"></a>tagsAsync

> *Tags:*  ``` Skips Authentication ``` 

> TODO: Add a method description

```java
void tagsAsync(
            Map<String, Object> queryParameters,
            final APICallBack<TagsResponse> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


TagsResponse result = await categories.tagsAsync(queryParams);

```





[Back to List of Controllers](#list_of_controllers)
## <a name="users_controller"></a>UsersController

#### Get controller instance
The instance of the ``` UsersController ``` class can be created using the constructor.
```java
UsersController users = new UsersController();
```

### <a name="users_async"></a>usersAsync

> 1. limit :=_int_ (pagination records per request)  2. offset :=_int_ (pagination skip records)  3. ordering := [date_joined] (fields to sort by results)  4. search :=_str_ (search by keyword through fields: skills, fist_name, last_name)  5. filter fields 	 6. gender := _str_ (filter by gender, F/M)

```java
void usersAsync(
            Map<String, Object> queryParameters,
            final APICallBack<UsersResponse> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


UsersResponse result = await users.usersAsync(queryParams);

```





### <a name="user_async"></a>userAsync

> This endpoints is responsible for profile's detailed information

```java
void userAsync(
            final int userID,
            final APICallBack<User> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| userID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
int userID = 130;

User result = await users.userAsync(userID);

```





[Back to List of Controllers](#list_of_controllers)
## <a name="images_controller"></a>ImagesController

#### Get controller instance
The instance of the ``` ImagesController ``` class can be created using the constructor.
```java
ImagesController images = new ImagesController();
```

### <a name="images_async"></a>imagesAsync

> This endpoints is responsible for getting list of images for the task

```java
void imagesAsync(
            final int taskID,
            Map<String, Object> queryParameters,
            final APICallBack<ImagesResponse> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
int taskID = 130;
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


ImagesResponse result = await images.imagesAsync(taskID, queryParams);

```





### <a name="add_image_async"></a>addImageAsync

> This endpoints is responsible for adding images to the task, only poster or tasker of the task can add images. You can add images as soon as task is one of O/P/R [status](#statuses). If task is in different status (and therefore non updateable) the endpoint will generate error

```java
void addImageAsync(
            final int taskID,
            final File upload,
            final APICallBack<ImageCreated> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| upload |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
int taskID = 130;
File upload = null;

ImageCreated result = await images.addImageAsync(taskID, upload);

```





### <a name="delete_image_async"></a>deleteImageAsync

> This endpoints is responsible for deleting given image (secondary ID) from the task

```java
void deleteImageAsync(
            final int imageID,
            final int taskID,
            final APICallBack<String> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| imageID |  ``` Required ```  | TODO: Add a parameter description |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
int imageID = 130;
int taskID = 130;

String result = await images.deleteImageAsync(imageID, taskID);

```





[Back to List of Controllers](#list_of_controllers)
## <a name="devices_controller"></a>DevicesController

#### Get controller instance
The instance of the ``` DevicesController ``` class can be created using the constructor.
```java
DevicesController devices = new DevicesController();
```

### <a name="register_device_async"></a>registerDeviceAsync

> This endpoints is responsible for adding new mobile device token

```java
void registerDeviceAsync(
            final APNSDevice info,
            final APICallBack<APNSDevice> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| info |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
var info = new APNSDevice();

APNSDevice result = await devices.registerDeviceAsync(info);

```





[Back to List of Controllers](#list_of_controllers)

