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
try {
    String email = "email";
    String password = "password";

    authentication.loginAsync(email, password, new APICallBack<User>() {

        public void onSuccess(HttpContext context, User response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
try {
    User user = new User();

    authentication.profileUpdateFullAsync(user, new APICallBack<User>() {

        public void onSuccess(HttpContext context, User response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
try {
    User user = new User();

    authentication.profileUpdatePartialAsync(user, new APICallBack<User>() {

        public void onSuccess(HttpContext context, User response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
try {
    User user = new User();

    authentication.registerAsync(user, new APICallBack<User>() {

        public void onSuccess(HttpContext context, User response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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

authentication.profileAsync(new APICallBack<User>() {

    public void onSuccess(HttpContext context, User response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
try {
    String currentPassword = "current_password";
    String newEmail = "new_email";

    authentication.changeEmailAsync(currentPassword, newEmail, new APICallBack<String>() {

        public void onSuccess(HttpContext context, String response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
try {
    String currentPassword = "current_password";
    String newPassword = "new_password";

    authentication.changePasswordAsync(currentPassword, newPassword, new APICallBack<String>() {

        public void onSuccess(HttpContext context, String response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
try {
    Object email = new object();

    authentication.resetPasswordAsync(email, new APICallBack<String>() {

        public void onSuccess(HttpContext context, String response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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

authentication.logoutAsync(new APICallBack<String>() {

    public void onSuccess(HttpContext context, String response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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


tasks.searchTasksAsync(queryParams, new APICallBack<TasksResponse>() {

    public void onSuccess(HttpContext context, TasksResponse response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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


tasks.myTasksAsync(queryParams, new APICallBack<TasksResponse>() {

    public void onSuccess(HttpContext context, TasksResponse response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
try {
    TaskRequest task = new TaskRequest();

    tasks.createTaskAsync(task, new APICallBack<Task>() {

        public void onSuccess(HttpContext context, Task response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
int taskID = 238;

tasks.taskAsync(taskID, new APICallBack<Task>() {

    public void onSuccess(HttpContext context, Task response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
try {
    TaskRequest task = new TaskRequest();
    int taskID = 238;

    tasks.updateTaskFullAsync(task, taskID, new APICallBack<Task>() {

        public void onSuccess(HttpContext context, Task response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
try {
    TaskRequest task = new TaskRequest();
    int taskID = 238;

    tasks.taskUpdatePartialAsync(task, taskID, new APICallBack<Task>() {

        public void onSuccess(HttpContext context, Task response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
int taskID = 238;

tasks.deleteTaskAsync(taskID, new APICallBack<Task>() {

    public void onSuccess(HttpContext context, Task response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
int taskID = 238;

workflow.taskApplyAsync(taskID, new APICallBack<Tasker>() {

    public void onSuccess(HttpContext context, Tasker response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
try {
    int taskID = 238;
    Object userParams = new object();

    workflow.taskApproveAsync(taskID, userParams, new APICallBack<Tasker>() {

        public void onSuccess(HttpContext context, Tasker response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
int taskID = 238;

workflow.taskDoneAsync(taskID, new APICallBack<Task>() {

    public void onSuccess(HttpContext context, Task response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
int taskID = 238;

workflow.taskCompleteAsync(taskID, new APICallBack<Task>() {

    public void onSuccess(HttpContext context, Task response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
try {
    Object disputeParams = new object();
    int taskID = 238;

    workflow.taskDisputeAsync(disputeParams, taskID, new APICallBack<Task>() {

        public void onSuccess(HttpContext context, Task response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
try {
    int taskID = 238;
    ViolationModel violation = new ViolationModel();

    workflow.taskViolationAsync(taskID, violation, new APICallBack<ViolationModel>() {

        public void onSuccess(HttpContext context, ViolationModel response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
try {
    Object descriptionParams = new object();
    int taskID = 238;

    workflow.taskReopenAsync(descriptionParams, taskID, new APICallBack<LinkedHashMap<String, Object>>() {

        public void onSuccess(HttpContext context, LinkedHashMap<String, Object> response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
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
int taskID = 238;

workflow.taskWithdrawAsync(taskID, new APICallBack<String>() {

    public void onSuccess(HttpContext context, String response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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


categories.categoriesAsync(queryParams, new APICallBack<CategoriesResponse>() {

    public void onSuccess(HttpContext context, CategoriesResponse response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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


categories.tagsAsync(queryParams, new APICallBack<TagsResponse>() {

    public void onSuccess(HttpContext context, TagsResponse response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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


users.usersAsync(queryParams, new APICallBack<UsersResponse>() {

    public void onSuccess(HttpContext context, UsersResponse response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
int userID = 238;

users.userAsync(userID, new APICallBack<User>() {

    public void onSuccess(HttpContext context, User response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
int taskID = 238;
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();


images.imagesAsync(taskID, queryParams, new APICallBack<ImagesResponse>() {

    public void onSuccess(HttpContext context, ImagesResponse response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
int taskID = 238;
File upload = null;

images.addImageAsync(taskID, upload, new APICallBack<ImageCreated>() {

    public void onSuccess(HttpContext context, ImageCreated response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
int imageID = 238;
int taskID = 238;

images.deleteImageAsync(imageID, taskID, new APICallBack<String>() {

    public void onSuccess(HttpContext context, String response) {
        // TODO success callback handler
    }

    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

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
try {
    APNSDevice info = new APNSDevice();

    devices.registerDeviceAsync(info, new APICallBack<APNSDevice>() {

        public void onSuccess(HttpContext context, APNSDevice response) {
            // TODO success callback handler
        }

        public void onFailure(HttpContext context, Throwable error) {
            // TODO failure callback handler
        }
    });
} catch(JsonProcessingException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}
```





[Back to List of Controllers](#list_of_controllers)


