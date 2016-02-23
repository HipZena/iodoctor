## ApidocController

#### Get singleton instance
The singleton instance of the ``` ApidocController ``` class can be accessed from the API Client.
```csharp
SmalsClient client = new SmalsClient();
IApidocController apidoc = client.Apidoc;
```

### GetAsync

> TODO: Add a method description

```csharp
Task<Link> GetAsync()
```

#### Usage:
```csharp

Link result = await apidoc.GetAsync();

```




### GetApiDocAsync

> TODO: Add a method description

```csharp
Task GetApiDocAsync()
```

#### Usage:
```csharp

await apidoc.GetApiDocAsync();

```




### GetSwaggerAsync

> TODO: Add a method description

```csharp
Task GetSwaggerAsync()
```

#### Usage:
```csharp

await apidoc.GetSwaggerAsync();

```




## AppendixController

#### Get singleton instance
The singleton instance of the ``` AppendixController ``` class can be accessed from the API Client.
```csharp
SmalsClient client = new SmalsClient();
IAppendixController appendix = client.Appendix;
```

### GetValuesAsync

> TODO: Add a method description

```csharp
Task<AppendixCode> GetValuesAsync()
```

#### Usage:
```csharp

AppendixCode result = await appendix.GetValuesAsync();

```




### GetAsync

> TODO: Add a method description

```csharp
Task<AppendixCode> GetAsync(
                int mvalue)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| mvalue |  ``` Required ```  | calue |


#### Usage:
```csharp
int mvalue = 99;

AppendixCode result = await appendix.GetAsync(mvalue);

```




## CompaniesController

#### Get singleton instance
The singleton instance of the ``` CompaniesController ``` class can be accessed from the API Client.
```csharp
SmalsClient client = new SmalsClient();
ICompaniesController companies = client.Companies;
```

### FindAllAsync

> TODO: Add a method description

```csharp
Task FindAllAsync(
                int? page = null,
                int? pageSize = null)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  ``` DefaultValue ```  | Page number to be returned, default 1, 0 for all items || pageSize |  ``` Optional ```  ``` DefaultValue ```  | Page size, default 5, 0 for all items |


#### Usage:
```csharp
int? page = 1;
int? pageSize = 5;

await companies.FindAllAsync(page, pageSize);

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 500 | Internal server error |




### GetAsync

> TODO: Add a method description

```csharp
Task<Company> GetAsync(
                string companyId)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| companyId |  ``` Required ```  | Company ID |


#### Usage:
```csharp
string companyId = "some string";

Company result = await companies.GetAsync(companyId);

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request parameter || 404 | Not Found || 500 | Internal server error |




### UpdateAsync

> TODO: Add a method description

```csharp
Task<Company> UpdateAsync(
                Company body,
                string companyId)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Company data || companyId |  ``` Required ```  | Company ID |


#### Usage:
```csharp
var body = new Company();
string companyId = "some string";

Company result = await companies.UpdateAsync(body, companyId);

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request parameter || 404 | Not Found || 500 | Internal server error |




### UpdatePartialAsync

> TODO: Add a method description

```csharp
Task<Company> UpdatePartialAsync(
                Company companyDefinition,
                string companyId)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| companyDefinition |  ``` Required ```  | MergePatch company.json || companyId |  ``` Required ```  | Company ID |


#### Usage:
```csharp
var companyDefinition = new Company();
string companyId = "some string";

Company result = await companies.UpdatePartialAsync(companyDefinition, companyId);

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request || 404 | Not Found || 500 | Internal server error |




## EmployersController

#### Get singleton instance
The singleton instance of the ``` EmployersController ``` class can be accessed from the API Client.
```csharp
SmalsClient client = new SmalsClient();
IEmployersController employers = client.Employers;
```

### FindAllAsync

> TODO: Add a method description

```csharp
Task FindAllAsync()
```

#### Usage:
```csharp

await employers.FindAllAsync();

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 500 | Internal server error |




### AddAsync

> TODO: Add a method description

```csharp
Task AddAsync(
                Employer body)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Employer data |


#### Usage:
```csharp
var body = new Employer();

await employers.AddAsync(body);

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request parameter || 500 | Internal server error |




### GetAsync

> TODO: Add a method description

```csharp
Task<Employer> GetAsync(
                string companyId)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| companyId |  ``` Required ```  | Company ID |


#### Usage:
```csharp
string companyId = "some string";

Employer result = await employers.GetAsync(companyId);

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request parameter || 404 | Not Found || 500 | Internal server error |




### DeleteAsync

> TODO: Add a method description

```csharp
Task DeleteAsync(
                string companyId)
```

#### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| companyId |  ``` Required ```  | Company ID |


#### Usage:
```csharp
string companyId = "some string";

await employers.DeleteAsync(companyId);

```


#### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 404 | Not Found || 500 | Internal server error |




