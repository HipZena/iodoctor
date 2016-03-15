# Getting Started
## How to Build

The generated code uses a few Maven dependencies e.g., Jackson, UniRest,
and Apache HttpClient. The reference to these dependencies is already
added in the pom.xml file will be installed automatically. Therefore,
you will need internet access for successful build.

* In order to open the client library in Eclipse click on ``` File -> Import ```.

![Importing SDK into Eclipse - Step 1](http://apidocs.io/illustration/java?step=import0&workspaceName=SaritasaBMEAPI&projectName=SaritasaBMEAPILib&rootNamespace=com.example)

* In the import dialog, select ``` Existing Java Project ``` and click ``` Next ```.

![Importing SDK into Eclipse - Step 2](http://apidocs.io/illustration/java?step=import1&workspaceName=SaritasaBMEAPI&projectName=SaritasaBMEAPILib&rootNamespace=com.example)

* Browse to locate the folder containing the source code. Select the detect location of the project and click ``` Next ```.

![Importing SDK into Eclipse - Step 3](http://apidocs.io/illustration/java?step=import2&workspaceName=SaritasaBMEAPI&projectName=SaritasaBMEAPILib&rootNamespace=com.example)

* Upon successful import, the project will be automatically built by Eclipse after automatically resolving the dependencies.

![Importing SDK into Eclipse - Step 4](http://apidocs.io/illustration/java?step=import3&workspaceName=SaritasaBMEAPI&projectName=SaritasaBMEAPILib&rootNamespace=com.example)

## Initialization

#### Authentication and Initialization
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| baseUrl | TODO: add a description |
| userTimezone | TODO: add a description |
| authorization | TODO: add a description |



API client can be initialized as following.

```java
// Configuration parameters and credentials
String baseUrl = "baseUrl";
String userTimezone = "userTimezone";
String authorization = "authorization";

SaritasaBMEAPIClient client = new SaritasaBMEAPIClient(baseUrl, userTimezone, authorization);
```

# Class Reference
## <a name="list_of_controllers"></a>List of Controllers

* [AuthenticationController](#authentication_controller)
* [TasksController](#tasks_controller)
* [WorkflowController](#workflow_controller)
* [CategoriesController](#categories_controller)
* [UsersController](#users_controller)
* [ImagesController](#images_controller)
* [DevicesController](#devices_controller)

## <a name="authentication_controller"></a>![Class: ](http://apidocs.io/img/class.png "com.example.controllers.AuthenticationController") AuthenticationController

#### Get singleton instance
The singleton instance of the ``` AuthenticationController ``` class can be accessed from the API Client.
```java
AuthenticationController authentication = client.getAuthentication();
```

### <a name="login_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.AuthenticationController.loginAsync") loginAsync

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
    // Invoking the API call with sample inputs
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





### <a name="profile_update_full_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.AuthenticationController.profileUpdateFullAsync") profileUpdateFullAsync

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
    // Invoking the API call with sample inputs
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





### <a name="profile_update_partial_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.AuthenticationController.profileUpdatePartialAsync") profileUpdatePartialAsync

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
    // Invoking the API call with sample inputs
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





### <a name="register_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.AuthenticationController.registerAsync") registerAsync

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
    // Invoking the API call with sample inputs
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





### <a name="profile_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.AuthenticationController.profileAsync") profileAsync

> This endpoints is responsible f or detailed prof ile inf ormation of the logged in user

```java
void profileAsync(final APICallBack<User> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|



#### Example Usage:
```java
// Invoking the API call with sample inputs
authentication.profileAsync(new APICallBack<User>() {
    public void onSuccess(HttpContext context, User response) {
        // TODO success callback handler
    }
    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

```





### <a name="change_email_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.AuthenticationController.changeEmailAsync") changeEmailAsync

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
    // Invoking the API call with sample inputs
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





### <a name="change_password_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.AuthenticationController.changePasswordAsync") changePasswordAsync

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
    // Invoking the API call with sample inputs
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





### <a name="reset_password_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.AuthenticationController.resetPasswordAsync") resetPasswordAsync

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
    // Invoking the API call with sample inputs
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





### <a name="logout_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.AuthenticationController.logoutAsync") logoutAsync

> This endpoints is responsible to logout action of the app.

```java
void logoutAsync(final APICallBack<String> callBack)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|



#### Example Usage:
```java
// Invoking the API call with sample inputs
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
## <a name="tasks_controller"></a>![Class: ](http://apidocs.io/img/class.png "com.example.controllers.TasksController") TasksController

#### Get singleton instance
The singleton instance of the ``` TasksController ``` class can be accessed from the API Client.
```java
TasksController tasks = client.getTasks();
```

### <a name="search_tasks_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.TasksController.searchTasksAsync") searchTasksAsync

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
// Invoking the API call with sample inputs
tasks.searchTasksAsync(queryParams, new APICallBack<TasksResponse>() {
    public void onSuccess(HttpContext context, TasksResponse response) {
        // TODO success callback handler
    }
    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

```





### <a name="my_tasks_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.TasksController.myTasksAsync") myTasksAsync

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
// Invoking the API call with sample inputs
tasks.myTasksAsync(queryParams, new APICallBack<TasksResponse>() {
    public void onSuccess(HttpContext context, TasksResponse response) {
        // TODO success callback handler
    }
    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

```





### <a name="create_task_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.TasksController.createTaskAsync") createTaskAsync

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
    // Invoking the API call with sample inputs
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





### <a name="task_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.TasksController.taskAsync") taskAsync

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
int taskID = 132;
// Invoking the API call with sample inputs
tasks.taskAsync(taskID, new APICallBack<Task>() {
    public void onSuccess(HttpContext context, Task response) {
        // TODO success callback handler
    }
    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

```





### <a name="update_task_full_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.TasksController.updateTaskFullAsync") updateTaskFullAsync

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
    int taskID = 132;
    // Invoking the API call with sample inputs
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





### <a name="task_update_partial_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.TasksController.taskUpdatePartialAsync") taskUpdatePartialAsync

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
    int taskID = 132;
    // Invoking the API call with sample inputs
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





### <a name="delete_task_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.TasksController.deleteTaskAsync") deleteTaskAsync

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
int taskID = 132;
// Invoking the API call with sample inputs
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
## <a name="workflow_controller"></a>![Class: ](http://apidocs.io/img/class.png "com.example.controllers.WorkflowController") WorkflowController

#### Get singleton instance
The singleton instance of the ``` WorkflowController ``` class can be accessed from the API Client.
```java
WorkflowController workflow = client.getWorkflow();
```

### <a name="task_apply_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.WorkflowController.taskApplyAsync") taskApplyAsync

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
int taskID = 132;
// Invoking the API call with sample inputs
workflow.taskApplyAsync(taskID, new APICallBack<Tasker>() {
    public void onSuccess(HttpContext context, Tasker response) {
        // TODO success callback handler
    }
    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

```





### <a name="task_approve_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.WorkflowController.taskApproveAsync") taskApproveAsync

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
    int taskID = 132;
    Object userParams = new object();
    // Invoking the API call with sample inputs
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





### <a name="task_done_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.WorkflowController.taskDoneAsync") taskDoneAsync

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
int taskID = 132;
// Invoking the API call with sample inputs
workflow.taskDoneAsync(taskID, new APICallBack<Task>() {
    public void onSuccess(HttpContext context, Task response) {
        // TODO success callback handler
    }
    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

```





### <a name="task_complete_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.WorkflowController.taskCompleteAsync") taskCompleteAsync

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
int taskID = 132;
// Invoking the API call with sample inputs
workflow.taskCompleteAsync(taskID, new APICallBack<Task>() {
    public void onSuccess(HttpContext context, Task response) {
        // TODO success callback handler
    }
    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

```





### <a name="task_dispute_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.WorkflowController.taskDisputeAsync") taskDisputeAsync

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
    int taskID = 132;
    // Invoking the API call with sample inputs
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





### <a name="task_violation_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.WorkflowController.taskViolationAsync") taskViolationAsync

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
    int taskID = 132;
    ViolationModel violation = new ViolationModel();
    // Invoking the API call with sample inputs
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





### <a name="task_reopen_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.WorkflowController.taskReopenAsync") taskReopenAsync

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
    int taskID = 132;
    // Invoking the API call with sample inputs
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





### <a name="task_withdraw_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.WorkflowController.taskWithdrawAsync") taskWithdrawAsync

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
int taskID = 132;
// Invoking the API call with sample inputs
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
## <a name="categories_controller"></a>![Class: ](http://apidocs.io/img/class.png "com.example.controllers.CategoriesController") CategoriesController

#### Get singleton instance
The singleton instance of the ``` CategoriesController ``` class can be accessed from the API Client.
```java
CategoriesController categories = client.getCategories();
```

### <a name="categories_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.CategoriesController.categoriesAsync") categoriesAsync

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
// Invoking the API call with sample inputs
categories.categoriesAsync(queryParams, new APICallBack<CategoriesResponse>() {
    public void onSuccess(HttpContext context, CategoriesResponse response) {
        // TODO success callback handler
    }
    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

```





### <a name="tags_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.CategoriesController.tagsAsync") tagsAsync

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
// Invoking the API call with sample inputs
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
## <a name="users_controller"></a>![Class: ](http://apidocs.io/img/class.png "com.example.controllers.UsersController") UsersController

#### Get singleton instance
The singleton instance of the ``` UsersController ``` class can be accessed from the API Client.
```java
UsersController users = client.getUsers();
```

### <a name="users_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.UsersController.usersAsync") usersAsync

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
// Invoking the API call with sample inputs
users.usersAsync(queryParams, new APICallBack<UsersResponse>() {
    public void onSuccess(HttpContext context, UsersResponse response) {
        // TODO success callback handler
    }
    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

```





### <a name="user_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.UsersController.userAsync") userAsync

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
int userID = 132;
// Invoking the API call with sample inputs
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
## <a name="images_controller"></a>![Class: ](http://apidocs.io/img/class.png "com.example.controllers.ImagesController") ImagesController

#### Get singleton instance
The singleton instance of the ``` ImagesController ``` class can be accessed from the API Client.
```java
ImagesController images = client.getImages();
```

### <a name="images_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.ImagesController.imagesAsync") imagesAsync

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
int taskID = 132;
// key-value map for optional query parameters
var queryParams = new Dictionary<string, object>();
// Invoking the API call with sample inputs
images.imagesAsync(taskID, queryParams, new APICallBack<ImagesResponse>() {
    public void onSuccess(HttpContext context, ImagesResponse response) {
        // TODO success callback handler
    }
    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

```





### <a name="add_image_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.ImagesController.addImageAsync") addImageAsync

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
int taskID = 132;
File upload = null;
// Invoking the API call with sample inputs
images.addImageAsync(taskID, upload, new APICallBack<ImageCreated>() {
    public void onSuccess(HttpContext context, ImageCreated response) {
        // TODO success callback handler
    }
    public void onFailure(HttpContext context, Throwable error) {
        // TODO failure callback handler
    }
});

```





### <a name="delete_image_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.ImagesController.deleteImageAsync") deleteImageAsync

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
int imageID = 132;
int taskID = 132;
// Invoking the API call with sample inputs
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
## <a name="devices_controller"></a>![Class: ](http://apidocs.io/img/class.png "com.example.controllers.DevicesController") DevicesController

#### Get singleton instance
The singleton instance of the ``` DevicesController ``` class can be accessed from the API Client.
```java
DevicesController devices = client.getDevices();
```

### <a name="register_device_async"></a>![Method: ](http://apidocs.io/img/method.png "com.example.controllers.DevicesController.registerDeviceAsync") registerDeviceAsync

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
    // Invoking the API call with sample inputs
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


