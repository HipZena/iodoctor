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

### <a name="login"></a>login

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or login user by providing username and password paylow

```java
User login(
        final String email,
        final String password)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | TODO: Add a parameter description |
| password |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    String email = "email";
    String password = "password";
    // Invoking the API call with sample inputs
    User result = authentication.login(email, password);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="profile_update_full"></a>profileUpdateFull

> This endpoints is responsible f or FULL update of the user’s prof ile. One nuance - if you try to change email address through PUT or PATCH endpoint the system won’t change it, you need to do POST /auth/email/ endpoint instead

```java
User profileUpdateFull(final User user)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| user |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    User user = new User();
    // Invoking the API call with sample inputs
    User result = authentication.profileUpdateFull(user);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="profile_update_partial"></a>profileUpdatePartial

> This endpoints is responsible f or partial update of prof ile of the logged in user. One nuance - if you try to change email address through PUT or PATCH endpoint the system won’t change it, you need to do POST /auth/email/ endpoint instead. You can supply here only f ields that got changed instead of FULL body of the entity (as in PUT method)

```java
User profileUpdatePartial(final User user)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| user |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    User user = new User();
    // Invoking the API call with sample inputs
    User result = authentication.profileUpdatePartial(user);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="register"></a>register

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or registering a new account

```java
User register(final User user)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| user |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    User user = new User();
    // Invoking the API call with sample inputs
    User result = authentication.register(user);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="profile"></a>profile

> This endpoints is responsible f or detailed prof ile inf ormation of the logged in user

```java
User profile()
```

#### Example Usage:
```java
try {
    // Invoking the API call with sample inputs
    User result = authentication.profile();
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="change_email"></a>changeEmail

> This endpoints is responsible f or changing email of the user

```java
String changeEmail(
        final String currentPassword,
        final String newEmail)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| currentPassword |  ``` Required ```  | TODO: Add a parameter description |
| newEmail |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    String currentPassword = "current_password";
    String newEmail = "new_email";
    // Invoking the API call with sample inputs
    String result = authentication.changeEmail(currentPassword, newEmail);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="change_password"></a>changePassword

> This endpoints is responsible for changing user's password

```java
String changePassword(
        final String currentPassword,
        final String newPassword)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| currentPassword |  ``` Required ```  | TODO: Add a parameter description |
| newPassword |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    String currentPassword = "current_password";
    String newPassword = "new_password";
    // Invoking the API call with sample inputs
    String result = authentication.changePassword(currentPassword, newPassword);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="reset_password"></a>resetPassword

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or sending email with unique link to reset the password. Should be used on forgot password screen of the app

```java
String resetPassword(final Object email)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  ``` Dynamic ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    Object email = new object();
    // Invoking the API call with sample inputs
    String result = authentication.resetPassword(email);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="logout"></a>logout

> This endpoints is responsible to logout action of the app.

```java
String logout()
```

#### Example Usage:
```java
try {
    // Invoking the API call with sample inputs
    String result = authentication.logout();
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





[Back to List of Controllers](#list_of_controllers)
## <a name="tasks_controller"></a>TasksController

#### Get controller instance
The instance of the ``` TasksController ``` class can be created using the constructor.
```java
TasksController tasks = new TasksController();
```

### <a name="search_tasks"></a>searchTasks

> *Tags:*  ``` Skips Authentication ``` 

> TODO: Add a method description

```java
TasksResponse searchTasks(
        Map<String, Object> queryParameters)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
try {
    // key-value map for optional query parameters    var queryParams = new Dictionary<string, object>();
    // Invoking the API call with sample inputs
    TasksResponse result = tasks.searchTasks(queryParams);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="my_tasks"></a>myTasks

> TODO: Add a method description

```java
TasksResponse myTasks(
        Map<String, Object> queryParameters)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
try {
    // key-value map for optional query parameters    var queryParams = new Dictionary<string, object>();
    // Invoking the API call with sample inputs
    TasksResponse result = tasks.myTasks(queryParams);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="create_task"></a>createTask

> This endpoints is responsible f or adding a new task to the system

```java
Task createTask(final TaskRequest task)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| task |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    TaskRequest task = new TaskRequest();
    // Invoking the API call with sample inputs
    Task result = tasks.createTask(task);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="task"></a>task

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible for getting details about given task

```java
Task task(final int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    int taskID = 239;
    // Invoking the API call with sample inputs
    Task result = tasks.task(taskID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="update_task_full"></a>updateTaskFull

> This endpoints is responsible for updating task details. Only admin or poster of the task can call this method

```java
Task updateTaskFull(
        final TaskRequest task,
        final int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| task |  ``` Required ```  | TODO: Add a parameter description |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    TaskRequest task = new TaskRequest();
    int taskID = 239;
    // Invoking the API call with sample inputs
    Task result = tasks.updateTaskFull(task, taskID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="task_update_partial"></a>taskUpdatePartial

> This endpoints is responsible for partial update of task resource

```java
Task taskUpdatePartial(
        final TaskRequest task,
        final int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| task |  ``` Required ```  | TODO: Add a parameter description |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    TaskRequest task = new TaskRequest();
    int taskID = 239;
    // Invoking the API call with sample inputs
    Task result = tasks.taskUpdatePartial(task, taskID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="delete_task"></a>deleteTask

> This endpoints is responsible for deleting the resource, use it to cancel the task. The record will not be physically deleted, but will be marked in db with status=X

```java
Task deleteTask(final int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    int taskID = 239;
    // Invoking the API call with sample inputs
    Task result = tasks.deleteTask(taskID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





[Back to List of Controllers](#list_of_controllers)
## <a name="workflow_controller"></a>WorkflowController

#### Get controller instance
The instance of the ``` WorkflowController ``` class can be created using the constructor.
```java
WorkflowController workflow = new WorkflowController();
```

### <a name="task_apply"></a>taskApply

> This endpoints is responsible f or the user to apply to the task. Poster can’t apply to his own task. Only 3 taskers are allowed per task.

```java
Tasker taskApply(final int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    int taskID = 239;
    // Invoking the API call with sample inputs
    Tasker result = workflow.taskApply(taskID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="task_approve"></a>taskApprove

> This endpoints is responsible f or approving one of available taskers and assigning the task to that user.

```java
Tasker taskApprove(
        final int taskID,
        final Object userParams)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| userParams |  ``` Required ```  ``` Dynamic ```  | Dictionary. Must contain 'user' field - ID of the user to approve and award the task. Should be in taskers list of the task |



#### Example Usage:
```java
try {
    int taskID = 239;
    Object userParams = new object();
    // Invoking the API call with sample inputs
    Tasker result = workflow.taskApprove(taskID, userParams);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="task_done"></a>taskDone

> This endpoints is responsible f or submitting task to Done status, this endpoint should be called by assigned tasker of the Task

```java
Task taskDone(final int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    int taskID = 239;
    // Invoking the API call with sample inputs
    Task result = workflow.taskDone(taskID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="task_complete"></a>taskComplete

> This endpoints is responsible f or sending task to Completed status and should be called by poster of the task

```java
Task taskComplete(final int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    int taskID = 239;
    // Invoking the API call with sample inputs
    Task result = workflow.taskComplete(taskID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="task_dispute"></a>taskDispute

> This endpoints is responsible f or sending task to dispute status. It can be done by only poster or tasker of the task.

```java
Task taskDispute(
        final Object disputeParams,
        final int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| disputeParams |  ``` Required ```  ``` Dynamic ```  | Dictionary. Must contain 'dispute' field - message to explain why it’s moved to dispute |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    Object disputeParams = new object();
    int taskID = 239;
    // Invoking the API call with sample inputs
    Task result = workflow.taskDispute(disputeParams, taskID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="task_violation"></a>taskViolation

> This endpoints is responsible f or marking any task with violation f lag.

```java
ViolationModel taskViolation(
        final int taskID,
        final ViolationModel violation)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| violation |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    int taskID = 239;
    ViolationModel violation = new ViolationModel();
    // Invoking the API call with sample inputs
    ViolationModel result = workflow.taskViolation(taskID, violation);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="task_reopen"></a>taskReopen

> This endpoints is responsible f or reopening the task by Poster, once it got DONE status as a result of POST /tasks/ID/done call.

```java
LinkedHashMap<String, Object> taskReopen(
        final Object descriptionParams,
        final int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| descriptionParams |  ``` Required ```  ``` Dynamic ```  | Dictionary. Must contain 'description' field - detailed explanation why it’s being reopened |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    Object descriptionParams = new object();
    int taskID = 239;
    // Invoking the API call with sample inputs
    LinkedHashMap<String, Object> result = workflow.taskReopen(descriptionParams, taskID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="task_withdraw"></a>taskWithdraw

> This endpoints is responsible for quitting the task and should be called by assigned Tasker of the task If you're not approved (*but applied) - this will remove the user from applied list of taskers

```java
String taskWithdraw(final int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    int taskID = 239;
    // Invoking the API call with sample inputs
    String result = workflow.taskWithdraw(taskID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





[Back to List of Controllers](#list_of_controllers)
## <a name="categories_controller"></a>CategoriesController

#### Get controller instance
The instance of the ``` CategoriesController ``` class can be created using the constructor.
```java
CategoriesController categories = new CategoriesController();
```

### <a name="categories"></a>categories

> *Tags:*  ``` Skips Authentication ``` 

> This endpoints is responsible f or getting list of categories

```java
CategoriesResponse categories(
        Map<String, Object> queryParameters)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
try {
    // key-value map for optional query parameters    var queryParams = new Dictionary<string, object>();
    // Invoking the API call with sample inputs
    CategoriesResponse result = categories.categories(queryParams);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="tags"></a>tags

> *Tags:*  ``` Skips Authentication ``` 

> TODO: Add a method description

```java
TagsResponse tags(
        Map<String, Object> queryParameters)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
try {
    // key-value map for optional query parameters    var queryParams = new Dictionary<string, object>();
    // Invoking the API call with sample inputs
    TagsResponse result = categories.tags(queryParams);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





[Back to List of Controllers](#list_of_controllers)
## <a name="users_controller"></a>UsersController

#### Get controller instance
The instance of the ``` UsersController ``` class can be created using the constructor.
```java
UsersController users = new UsersController();
```

### <a name="users"></a>users

> 1. limit :=_int_ (pagination records per request)  2. offset :=_int_ (pagination skip records)  3. ordering := [date_joined] (fields to sort by results)  4. search :=_str_ (search by keyword through fields: skills, fist_name, last_name)  5. filter fields 	 6. gender := _str_ (filter by gender, F/M)

```java
UsersResponse users(
        Map<String, Object> queryParameters)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
try {
    // key-value map for optional query parameters    var queryParams = new Dictionary<string, object>();
    // Invoking the API call with sample inputs
    UsersResponse result = users.users(queryParams);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="user"></a>user

> This endpoints is responsible for profile's detailed information

```java
User user(final int userID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| userID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    int userID = 239;
    // Invoking the API call with sample inputs
    User result = users.user(userID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





[Back to List of Controllers](#list_of_controllers)
## <a name="images_controller"></a>ImagesController

#### Get controller instance
The instance of the ``` ImagesController ``` class can be created using the constructor.
```java
ImagesController images = new ImagesController();
```

### <a name="images"></a>images

> This endpoints is responsible for getting list of images for the task

```java
ImagesResponse images(
        final int taskID,
        Map<String, Object> queryParameters)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| queryParameters | ``` Optional ``` | Additional optional query parameters are supported by this method |



#### Example Usage:
```java
try {
    int taskID = 239;
    // key-value map for optional query parameters    var queryParams = new Dictionary<string, object>();
    // Invoking the API call with sample inputs
    ImagesResponse result = images.images(taskID, queryParams);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="add_image"></a>addImage

> This endpoints is responsible for adding images to the task, only poster or tasker of the task can add images. You can add images as soon as task is one of O/P/R [status](#statuses). If task is in different status (and therefore non updateable) the endpoint will generate error

```java
ImageCreated addImage(
        final int taskID,
        final File upload)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| taskID |  ``` Required ```  | TODO: Add a parameter description |
| upload |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    int taskID = 239;
    File upload = null;
    // Invoking the API call with sample inputs
    ImageCreated result = images.addImage(taskID, upload);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





### <a name="delete_image"></a>deleteImage

> This endpoints is responsible for deleting given image (secondary ID) from the task

```java
String deleteImage(
        final int imageID,
        final int taskID)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| imageID |  ``` Required ```  | TODO: Add a parameter description |
| taskID |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    int imageID = 239;
    int taskID = 239;
    // Invoking the API call with sample inputs
    String result = images.deleteImage(imageID, taskID);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





[Back to List of Controllers](#list_of_controllers)
## <a name="devices_controller"></a>DevicesController

#### Get controller instance
The instance of the ``` DevicesController ``` class can be created using the constructor.
```java
DevicesController devices = new DevicesController();
```

### <a name="register_device"></a>registerDevice

> This endpoints is responsible for adding new mobile device token

```java
APNSDevice registerDevice(final APNSDevice info)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| info |  ``` Required ```  | TODO: Add a parameter description |



#### Example Usage:
```java
try {
    APNSDevice info = new APNSDevice();
    // Invoking the API call with sample inputs
    APNSDevice result = devices.registerDevice(info);
} catch(IOException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(APIException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





[Back to List of Controllers](#list_of_controllers)


