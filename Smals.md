### ApidocController

#### Get singleton instance
The singleton instance of the ``` ApidocController ``` class can be accessed from the API Client.
```csharp
SmalsClient client = new SmalsClient();
IApidocController apidoc = client.Apidoc;
```

#### GetAsync

> TODO: Add a method description
```csharp
Task<Link> GetAsync()
```

##### Usage:
```csharp

Link result = await apidoc.GetAsync();

```




#### GetApiDocAsync

> TODO: Add a method description
```csharp
Task GetApiDocAsync()
```

##### Usage:
```csharp

void result = await apidoc.GetApiDocAsync();

```




#### GetSwaggerAsync

> TODO: Add a method description
```csharp
Task GetSwaggerAsync()
```

##### Usage:
```csharp

void result = await apidoc.GetSwaggerAsync();

```




### AppendixController

#### Get singleton instance
The singleton instance of the ``` AppendixController ``` class can be accessed from the API Client.
```csharp
SmalsClient client = new SmalsClient();
IAppendixController appendix = client.Appendix;
```

#### GetValuesAsync

> TODO: Add a method description
```csharp
Task<AppendixCode> GetValuesAsync()
```

##### Usage:
```csharp

AppendixCode result = await appendix.GetValuesAsync();

```




#### GetAsync

> TODO: Add a method description
```csharp
Task<AppendixCode> GetAsync(
                int mvalue)
```

##### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| mvalue |  ``` Required ```  | calue |


##### Usage:
```csharp

AppendixCode result = await appendix.GetAsync(99);

```




### CompaniesController

#### Get singleton instance
The singleton instance of the ``` CompaniesController ``` class can be accessed from the API Client.
```csharp
SmalsClient client = new SmalsClient();
ICompaniesController companies = client.Companies;
```

#### FindAllAsync

> TODO: Add a method description
```csharp
Task FindAllAsync(
                int? page = null,
                int? pageSize = null)
```

##### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  ``` DefaultValue ```  | Page number to be returned, default 1, 0 for all items || pageSize |  ``` Optional ```  ``` DefaultValue ```  | Page size, default 5, 0 for all items |


##### Usage:
```csharp

void result = await companies.FindAllAsync(1, 5);

```

            {
##### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 500 | Internal server error |




#### GetAsync

> TODO: Add a method description
```csharp
Task<Company> GetAsync(
                string companyId)
```

##### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| companyId |  ``` Required ```  | Company ID |


##### Usage:
```csharp

Company result = await companies.GetAsync("some string");

```

            {
##### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request parameter || 404 | Not Found || 500 | Internal server error |




#### UpdateAsync

> TODO: Add a method description
```csharp
Task<Company> UpdateAsync(
                Company body,
                string companyId)
```

##### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Company data || companyId |  ``` Required ```  | Company ID |


##### Usage:
```csharp
var company = new Company();

Company result = await companies.UpdateAsync(company, "some string");

```

            {
##### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request parameter || 404 | Not Found || 500 | Internal server error |




#### UpdatePartialAsync

> TODO: Add a method description
```csharp
Task<Company> UpdatePartialAsync(
                string mDefinitionsCompany,
                string companyId)
```

##### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| mDefinitionsCompany |  ``` Required ```  | MergePatch company.json || companyId |  ``` Required ```  | Company ID |


##### Usage:
```csharp

Company result = await companies.UpdatePartialAsync("some string", "some string");

```

            {
##### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request || 404 | Not Found || 500 | Internal server error |




### EmployersController

#### Get singleton instance
The singleton instance of the ``` EmployersController ``` class can be accessed from the API Client.
```csharp
SmalsClient client = new SmalsClient();
IEmployersController employers = client.Employers;
```

#### FindAllAsync

> TODO: Add a method description
```csharp
Task FindAllAsync()
```

##### Usage:
```csharp

void result = await employers.FindAllAsync();

```

            {
##### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 500 | Internal server error |




#### AddAsync

> TODO: Add a method description
```csharp
Task AddAsync(
                Employer body)
```

##### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Employer data |


##### Usage:
```csharp
var employer = new Employer();

void result = await employers.AddAsync(employer);

```

            {
##### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request parameter || 500 | Internal server error |




#### GetAsync

> TODO: Add a method description
```csharp
Task<Employer> GetAsync(
                string companyId)
```

##### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| companyId |  ``` Required ```  | Company ID |


##### Usage:
```csharp

Employer result = await employers.GetAsync("some string");

```

            {
##### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 400 | Bad Request parameter || 404 | Not Found || 500 | Internal server error |




#### DeleteAsync

> TODO: Add a method description
```csharp
Task DeleteAsync(
                string companyId)
```

##### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| companyId |  ``` Required ```  | Company ID |


##### Usage:
```csharp

void result = await employers.DeleteAsync("some string");

```

            {
##### Errors: 
| Error Code | Error Description |
|------------|-------------------|
| 404 | Not Found || 500 | Internal server error |




