### CountriesController

#### GetCountriesAsync

> Get all countries
```csharp
Task<string> GetCountriesAsync()
```




### SMSController

#### SendSmsAsync

> Tags:  ``` Streaming ``` 
> TODO: Add a method description
```csharp
Task<string> SendSmsAsync(
                List<Test> messages)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### CalculatePriceAsync

> Tags:  ``` Streaming ``` 
> Calculate sms price
```csharp
Task<string> CalculatePriceAsync(
                List<string> messages)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### GetSmsHistoryAsync

> Tags:  ``` Streaming ``` 
> Get all sms history
```csharp
Task<string> GetSmsHistoryAsync(
                int? dateFrom = null,
                int? dateTo = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| dateFrom |  ``` Optional ```  | Start date || dateTo |  ``` Optional ```  | End date |



#### ExportHistoryAsync

> Tags:  ``` Streaming ``` 
> Export all sms history
```csharp
Task<string> ExportHistoryAsync(
                string filename)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |



#### CreateReceiptAsync

> Tags:  ``` Streaming ``` 
> Add a delivery receipt
```csharp
Task<string> CreateReceiptAsync(
                string url)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | Your url |



#### MarkReceiptsAsReadAsync

> Tags:  ``` Streaming ``` 
> Marked delivery receipts as read
```csharp
Task<string> MarkReceiptsAsReadAsync(
                int? dateBefore = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| dateBefore |  ``` Optional ```  | TODO: Add a parameter description |



#### GetInboundSmsAsync

> Tags:  ``` Streaming ``` 
> Get all inbound sms
```csharp
Task<string> GetInboundSmsAsync()
```


#### CreateInboundSmsAsync

> Tags:  ``` Streaming ``` 
> Create inbound sms
```csharp
Task<string> CreateInboundSmsAsync(
                string url)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | Your url |



#### MarkInboundSmsAsReadAsync

> Tags:  ``` Streaming ``` 
> Marked all inbound sms as read
```csharp
Task<string> MarkInboundSmsAsReadAsync(
                int dateBefore)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| dateBefore |  ``` Required ```  | TODO: Add a parameter description |



#### CancelScheduledSmsAsync

> Tags:  ``` Streaming ``` 
> Update scheduled message as cancel
```csharp
Task<string> CancelScheduledSmsAsync(
                string messageId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageId |  ``` Required ```  | TODO: Add a parameter description |



#### CancelAllScheduledSmsAsync

> Tags:  ``` Streaming ``` 
> Update all scheduled message as cancelled
```csharp
Task<string> CancelAllScheduledSmsAsync()
```


#### CreateSmsTemplateAsync

> Tags:  ``` Streaming ``` 
> Create sms template
```csharp
Task<string> CreateSmsTemplateAsync(
                string templateName,
                string body)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| templateName |  ``` Required ```  | Your template name || body |  ``` Required ```  | Your template body |



#### DeleteSmsTemplateAsync

> Tags:  ``` Streaming ``` 
> Delete sms template
```csharp
Task<string> DeleteSmsTemplateAsync(
                string templateId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| templateId |  ``` Required ```  | TODO: Add a parameter description |



#### UpdateSmsTemplateAsync

> Tags:  ``` Streaming ``` 
> Update sms template
```csharp
Task<string> UpdateSmsTemplateAsync(
                int templateId,
                string templateName,
                string body)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| templateId |  ``` Required ```  | TODO: Add a parameter description || templateName |  ``` Required ```  | TODO: Add a parameter description || body |  ``` Required ```  | TODO: Add a parameter description |



#### GetDeliveryReceiptsAsync

> Tags:  ``` Streaming ``` 
> Get all delivery receipts
```csharp
Task<string> GetDeliveryReceiptsAsync()
```


#### GetSmsTemplatesAsync

> Tags:  ``` Streaming ``` 
> Get lists of all sms templates
```csharp
Task<string> GetSmsTemplatesAsync()
```




### VoiceController

#### SendVoiceAsync

> Tags:  ``` Streaming ``` 
> TODO: Add a method description
```csharp
Task<string> SendVoiceAsync(
                List<string> messages)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### CalculatePriceAsync

> Tags:  ``` Streaming ``` 
> Calculate voice price
```csharp
Task<string> CalculatePriceAsync(
                List<string> messages)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messages |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### GetVoiceLanguagesAsync

> Tags:  ``` Streaming ``` 
> Get all voice languages
```csharp
Task<string> GetVoiceLanguagesAsync()
```


#### GetVoiceHistoryAsync

> Tags:  ``` Streaming ``` 
> Get all voice history
```csharp
Task<string> GetVoiceHistoryAsync(
                int? dateFrom = null,
                int? dateTo = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| dateFrom |  ``` Optional ```  | TODO: Add a parameter description || dateTo |  ``` Optional ```  | TODO: Add a parameter description |



#### GetVoiceReceiptsAsync

> Tags:  ``` Streaming ``` 
> Get all voice receipts
```csharp
Task<string> GetVoiceReceiptsAsync()
```


#### CancelVoiceMessageAsync

> Tags:  ``` Streaming ``` 
> Update voice message status as cancelled
```csharp
Task<string> CancelVoiceMessageAsync(
                string messageId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| messageId |  ``` Required ```  | TODO: Add a parameter description |



#### CancelVoiceMessagesAsync

> Tags:  ``` Streaming ``` 
> Update all voice messages as cancelled
```csharp
Task<string> CancelVoiceMessagesAsync()
```


#### ExportVoiceHistoryAsync

> Tags:  ``` Streaming ``` 
> Export voice history
```csharp
Task<string> ExportVoiceHistoryAsync(
                string filename)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |





### AccountController

#### GetAccountAsync

> Tags:  ``` Streaming ``` 
> Get account details
```csharp
Task<string> GetAccountAsync()
```


#### CreateAccountAsync

> Tags:  ``` Streaming ``` 
> Create An Account
```csharp
Task<string> CreateAccountAsync(
                string username,
                string password,
                string userPhone,
                string userEmail,
                string userFirstName,
                string userLastName,
                string accountName,
                string country)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | Your username || password |  ``` Required ```  | Your password || userPhone |  ``` Required ```  | Your phone number in E.164 format. || userEmail |  ``` Required ```  | Your email || userFirstName |  ``` Required ```  | Your firstname || userLastName |  ``` Required ```  | Your lastname || accountName |  ``` Required ```  | Your delivery to value. || country |  ``` Required ```  | Your country |



#### ActivationTokenAsync

> Tags:  ``` Streaming ``` 
> Send account activation token
```csharp
Task<string> ActivationTokenAsync(
                string userPhone,
                string type,
                string country)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| userPhone |  ``` Required ```  | Your phone number || type |  ``` Required ```  | Activation type || country |  ``` Required ```  | Your country |



#### VerifyAccountAsync

> Tags:  ``` Streaming ``` 
> Verify new account
```csharp
Task<string> VerifyAccountAsync(
                string activationToken)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| activationToken |  ``` Required ```  | TODO: Add a parameter description |



#### ForgotUsernameAsync

> Forgot username
```csharp
Task<string> ForgotUsernameAsync(
                string email = null,
                string phoneNumber = null,
                string country = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Optional ```  | TODO: Add a parameter description || phoneNumber |  ``` Optional ```  | TODO: Add a parameter description || country |  ``` Optional ```  | TODO: Add a parameter description |



#### ForgotPasswordAsync

> Tags:  ``` Streaming ``` 
> Forgot password
```csharp
Task<string> ForgotPasswordAsync(
                string username)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | TODO: Add a parameter description |



#### VerifyForgotPasswordAsync

> Tags:  ``` Streaming ``` 
> Verify forgot password
```csharp
Task<string> VerifyForgotPasswordAsync(
                int subaccountId,
                string activationToken,
                string password)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccountId |  ``` Required ```  | Your subaccount id. || activationToken |  ``` Required ```  | Your email activation token. || password |  ``` Required ```  | Your new password. |





### SubaccountController

#### GetSubaccountsAsync

> Tags:  ``` Streaming ``` 
> Get all subaccounts
```csharp
Task<string> GetSubaccountsAsync()
```


#### CreateSubaccountAsync

> Tags:  ``` Streaming ``` 
> Create new subaccount
```csharp
Task<string> CreateSubaccountAsync(
                List<string> apiUsername,
                string password,
                string email,
                string phoneNumber,
                string firstName,
                string lastName,
                bool? accessUsers = null,
                bool? accessBilling = null,
                bool? accessReporting = null,
                bool? accessContacts = null,
                bool? accessSettings = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| apiUsername |  ``` Required ```  ``` Collection ```  | Your new api username. || password |  ``` Required ```  | Your new password || email |  ``` Required ```  | Your new email. || phoneNumber |  ``` Required ```  | Your phone number in E.164 format. || firstName |  ``` Required ```  | Your firstname || lastName |  ``` Required ```  | Your lastname || accessUsers |  ``` Optional ```  ``` DefaultValue ```  | Your access users flag value, must be 1 or 0. || accessBilling |  ``` Optional ```  ``` DefaultValue ```  | Your access billing flag value, must be 1 or 0. || accessReporting |  ``` Optional ```  ``` DefaultValue ```  | Your access reporting flag value, must be 1 or 0. || accessContacts |  ``` Optional ```  ``` DefaultValue ```  | Your access contacts flag value, must be 1 or 0. || accessSettings |  ``` Optional ```  ``` DefaultValue ```  | Your access settings flag value, must be 1 or 0. |



#### GetSubaccountAsync

> Tags:  ``` Streaming ``` 
> Get specific subaccount
```csharp
Task<string> GetSubaccountAsync(
                int subaccountId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccountId |  ``` Required ```  | TODO: Add a parameter description |



#### DeleteSubaccountAsync

> Tags:  ``` Streaming ``` 
> Delete a subaccount
```csharp
Task<string> DeleteSubaccountAsync(
                int subaccountId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccountId |  ``` Required ```  | TODO: Add a parameter description |



#### RegenerateApiKeyAsync

> Tags:  ``` Streaming ``` 
> Regenerate an API Key
```csharp
Task<string> RegenerateApiKeyAsync(
                int subaccountId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccountId |  ``` Required ```  | TODO: Add a parameter description |



#### UpdateSubaccountAsync

> Tags:  ``` Streaming ``` 
> Update subaccount
```csharp
Task<string> UpdateSubaccountAsync(
                int subaccountId,
                string password = null,
                string email = null,
                string phoneNumber = null,
                string firstName = null,
                string lastName = null,
                bool? accessUsers = null,
                bool? accessBilling = null,
                bool? accessReporting = null,
                bool? accessContacts = null,
                bool? accessSettings = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccountId |  ``` Required ```  | TODO: Add a parameter description || password |  ``` Optional ```  | TODO: Add a parameter description || email |  ``` Optional ```  | TODO: Add a parameter description || phoneNumber |  ``` Optional ```  | TODO: Add a parameter description || firstName |  ``` Optional ```  | TODO: Add a parameter description || lastName |  ``` Optional ```  | TODO: Add a parameter description || accessUsers |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description || accessBilling |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description || accessReporting |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description || accessContacts |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description || accessSettings |  ``` Optional ```  ``` DefaultValue ```  | TODO: Add a parameter description |





### ContactListController

#### GetContactListsAsync

> Tags:  ``` Streaming ``` 
> Get all contact lists
```csharp
Task<string> GetContactListsAsync()
```


#### CreateContactListAsync

> Tags:  ``` Streaming ``` 
> Create new contact list
```csharp
Task<string> CreateContactListAsync(
                string listName)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listName |  ``` Required ```  | Your contact list name |



#### GetContactListAsync

> Tags:  ``` Streaming ``` 
> Get specific contact list
```csharp
Task<string> GetContactListAsync(
                int listId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description |



#### UpdateContactListAsync

> Tags:  ``` Streaming ``` 
> Update specific contact list
```csharp
Task<string> UpdateContactListAsync(
                int listId,
                string listName)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your list id || listName |  ``` Required ```  | Your new list name |



#### DeleteContactListAsync

> Tags:  ``` Streaming ``` 
> Delete a specific contact list
```csharp
Task<string> DeleteContactListAsync(
                int listId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description |



#### RemoveDuplicateContactsAsync

> Tags:  ``` Streaming ``` 
> Remove duplicate contacts
```csharp
Task<string> RemoveDuplicateContactsAsync(
                int listId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your list id |



#### ImportContactsToListAsync

> Tags:  ``` Streaming ``` 
> Import contacts to list
```csharp
Task<string> ImportContactsToListAsync(
                int listId,
                FileStreamInfo file)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your contact list id you want to access. || file |  ``` Required ```  | TODO: Add a parameter description |





### ContactController

#### GetContactsAsync

> Tags:  ``` Streaming ``` 
> Get all contacts in a list
```csharp
Task<string> GetContactsAsync(
                int listId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description |



#### CreateContactAsync

> Tags:  ``` Streaming ``` 
> Create new contact
```csharp
Task<string> CreateContactAsync(
                int listId,
                string phoneNumber = null,
                string email = null,
                string faxNumber = null,
                string firstName = null,
                string lastName = null,
                string addressLine1 = null,
                string addressLine2 = null,
                string addressCity = null,
                string addressState = null,
                string addressPostalCode = null,
                string addressCountry = null,
                string organizationName = null,
                string custom1 = null,
                string custom2 = null,
                string custom3 = null,
                string custom4 = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your list_id || phoneNumber |  ``` Optional ```  | Your phone number in E.164 format. Must be provided if no fax number or email. || email |  ``` Optional ```  | Your email. Must be provided if no phone number or fax number. || faxNumber |  ``` Optional ```  | You fax number. Must be provided if no phone number or email. || firstName |  ``` Optional ```  | Your firstname. || lastName |  ``` Optional ```  | Your lastname. || addressLine1 |  ``` Optional ```  | TODO: Add a parameter description || addressLine2 |  ``` Optional ```  | TODO: Add a parameter description || addressCity |  ``` Optional ```  | TODO: Add a parameter description || addressState |  ``` Optional ```  | TODO: Add a parameter description || addressPostalCode |  ``` Optional ```  | TODO: Add a parameter description || addressCountry |  ``` Optional ```  | TODO: Add a parameter description || organizationName |  ``` Optional ```  | TODO: Add a parameter description || custom1 |  ``` Optional ```  | TODO: Add a parameter description || custom2 |  ``` Optional ```  | TODO: Add a parameter description || custom3 |  ``` Optional ```  | TODO: Add a parameter description || custom4 |  ``` Optional ```  | TODO: Add a parameter description |



#### GetContactAsync

> Tags:  ``` Streaming ``` 
> Get a specific contact
```csharp
Task<string> GetContactAsync(
                int listId,
                int contactId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your contact list id you want to access. || contactId |  ``` Required ```  | Your contact id you want to access. |



#### UpdateContactAsync

> Tags:  ``` Streaming ``` 
> Update contact
```csharp
Task<string> UpdateContactAsync(
                int listId,
                int contactId,
                string phoneNumber = null,
                string email = null,
                string faxNumber = null,
                string firstName = null,
                string lastName = null,
                string addressLine1 = null,
                string addressLine2 = null,
                string addressCity = null,
                string addressState = null,
                string addressPostalCode = null,
                string addressCountry = null,
                string organizationName = null,
                string custom1 = null,
                string custom2 = null,
                string custom3 = null,
                string custom4 = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your list id || contactId |  ``` Required ```  | Your contact id || phoneNumber |  ``` Optional ```  | Your phone number in E.164 format. || email |  ``` Optional ```  | Your email. Must be provided if no phone number or fax number. || faxNumber |  ``` Optional ```  | You fax number. Must be provided if no phone number or email. || firstName |  ``` Optional ```  | Your firstname || lastName |  ``` Optional ```  | Your lastname || addressLine1 |  ``` Optional ```  | TODO: Add a parameter description || addressLine2 |  ``` Optional ```  | TODO: Add a parameter description || addressCity |  ``` Optional ```  | TODO: Add a parameter description || addressState |  ``` Optional ```  | TODO: Add a parameter description || addressPostalCode |  ``` Optional ```  | TODO: Add a parameter description || addressCountry |  ``` Optional ```  | TODO: Add a parameter description || organizationName |  ``` Optional ```  | TODO: Add a parameter description || custom1 |  ``` Optional ```  | TODO: Add a parameter description || custom2 |  ``` Optional ```  | TODO: Add a parameter description || custom3 |  ``` Optional ```  | TODO: Add a parameter description || custom4 |  ``` Optional ```  | TODO: Add a parameter description |



#### DeleteContactAsync

> Tags:  ``` Streaming ``` 
> Delete a contact
```csharp
Task<string> DeleteContactAsync(
                int listId,
                string contactId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description || contactId |  ``` Required ```  | TODO: Add a parameter description |



#### RemoveOptedOutContactsAsync

> Tags:  ``` Streaming ``` 
> Remove all opted out contacts
```csharp
Task<string> RemoveOptedOutContactsAsync(
                int listId,
                int optOutListId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | Your list id || optOutListId |  ``` Required ```  | Your opt out list id |





### NumberController

#### GetDedicatedNumbersAsync

> Tags:  ``` Streaming ``` 
> Get all dedicated numbers
```csharp
Task<string> GetDedicatedNumbersAsync()
```


#### PurchaseDedicatedNumberAsync

> Tags:  ``` Streaming ``` 
> Buy dedicated number
```csharp
Task<string> PurchaseDedicatedNumberAsync(
                string dedicatedNumber)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| dedicatedNumber |  ``` Required ```  | TODO: Add a parameter description |



#### GetDedicatedNumbersByCountryAsync

> Tags:  ``` Streaming ``` 
> Get all dedicated numbers by country
```csharp
Task<string> GetDedicatedNumbersByCountryAsync(
                string country,
                string search = null,
                int? searchType = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| country |  ``` Required ```  | TODO: Add a parameter description || search |  ``` Optional ```  | Your search pattern or query. || searchType |  ``` Optional ```  | Your strategy for searching, 0 = starts with, 1 = anywhere, 2 = ends with. |





### StatisticsController

#### GetVoiceStatisticsAsync

> Tags:  ``` Streaming ``` 
> Get voice statistics
```csharp
Task<string> GetVoiceStatisticsAsync()
```


#### GetSmsStatisticsAsync

> Tags:  ``` Streaming ``` 
> Get sms statistics
```csharp
Task<string> GetSmsStatisticsAsync()
```




### EmailToSmsController

#### CreateAllowedAddressAsync

> Tags:  ``` Streaming ``` 
> Create email to sms allowed address
```csharp
Task<string> CreateAllowedAddressAsync(
                string emailAddress,
                string mfrom)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| emailAddress |  ``` Required ```  | Your email address. || mfrom |  ``` Required ```  | Your phone number in E.164 format. |



#### GetAllowedAddressAsync

> Tags:  ``` Streaming ``` 
> Get list of email to sms allowed addresses
```csharp
Task<string> GetAllowedAddressAsync()
```




### SearchController

#### SearchContactListAsync

> Tags:  ``` Streaming ``` 
> Get list of searched contact list
```csharp
Task<string> SearchContactListAsync(
                string q)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| q |  ``` Required ```  |  Your keyword or query. |





### ReferralAccountController

#### GetReferralAccountsAsync

> Tags:  ``` Streaming ``` 
> Get all referral accounts
```csharp
Task<string> GetReferralAccountsAsync()
```




### ResellerAccountController

#### GetResellerAccountsAsync

> Tags:  ``` Streaming ``` 
> Get list of reseller accounts
```csharp
Task<string> GetResellerAccountsAsync()
```


#### CreateResellerAccountAsync

> Tags:  ``` Streaming ``` 
> Create reseller account
```csharp
Task<string> CreateResellerAccountAsync(
                string username,
                string password,
                string userEmail,
                string userPhone,
                string userFirstName,
                string userLastName,
                string accountName,
                string country)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | TODO: Add a parameter description || password |  ``` Required ```  | TODO: Add a parameter description || userEmail |  ``` Required ```  | TODO: Add a parameter description || userPhone |  ``` Required ```  | TODO: Add a parameter description || userFirstName |  ``` Required ```  | TODO: Add a parameter description || userLastName |  ``` Required ```  | TODO: Add a parameter description || accountName |  ``` Required ```  | TODO: Add a parameter description || country |  ``` Required ```  | TODO: Add a parameter description |



#### GetResellerAccountAsync

> Tags:  ``` Streaming ``` 
> Get Reseller Account
```csharp
Task<string> GetResellerAccountAsync(
                string clientUserId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| clientUserId |  ``` Required ```  | TODO: Add a parameter description |



#### UpdateResellerAccountAsync

> Tags:  ``` Streaming ``` 
> Reseller Account
```csharp
Task<string> UpdateResellerAccountAsync(
                string clientUserId,
                string username,
                string password,
                string userEmail,
                string userPhone,
                string userFirstName,
                string userLastName,
                string accountName,
                string country)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| clientUserId |  ``` Required ```  | TODO: Add a parameter description || username |  ``` Required ```  | TODO: Add a parameter description || password |  ``` Required ```  | TODO: Add a parameter description || userEmail |  ``` Required ```  | TODO: Add a parameter description || userPhone |  ``` Required ```  | TODO: Add a parameter description || userFirstName |  ``` Required ```  | TODO: Add a parameter description || userLastName |  ``` Required ```  | TODO: Add a parameter description || accountName |  ``` Required ```  | TODO: Add a parameter description || country |  ``` Required ```  | TODO: Add a parameter description |





### TransferCreditController

#### TransferCreditAsync

> Tags:  ``` Streaming ``` 
> Transfer Credit
```csharp
Task<string> TransferCreditAsync(
                string clientUserId,
                int balance,
                string currency)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| clientUserId |  ``` Required ```  | TODO: Add a parameter description || balance |  ``` Required ```  | TODO: Add a parameter description || currency |  ``` Required ```  | TODO: Add a parameter description |





### FaxController

#### GetFaxReceiptsAsync

> Tags:  ``` Streaming ``` 
> Get all fax receipts
```csharp
Task<string> GetFaxReceiptsAsync()
```




### AccountRechargeController

#### GetCreditCardInfoAsync

> Tags:  ``` Streaming ``` 
> Get Credit Card info
```csharp
Task<string> GetCreditCardInfoAsync()
```


#### UpdateCreditCardInfoAsync

> Tags:  ``` Streaming ``` 
> Update credit card info
```csharp
Task<string> UpdateCreditCardInfoAsync(
                string number,
                int expiryMonth,
                int expiryYear,
                int cvc,
                string name)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| number |  ``` Required ```  | TODO: Add a parameter description || expiryMonth |  ``` Required ```  | TODO: Add a parameter description || expiryYear |  ``` Required ```  | TODO: Add a parameter description || cvc |  ``` Required ```  | TODO: Add a parameter description || name |  ``` Required ```  | TODO: Add a parameter description |



#### GetPackagesListAsync

> Tags:  ``` Streaming ``` 
> Get list of all packages
```csharp
Task<string> GetPackagesListAsync(
                string country = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| country |  ``` Optional ```  | TODO: Add a parameter description |



#### PurchasePackageAsync

> Tags:  ``` Streaming ``` 
> Purchase a package
```csharp
Task<string> PurchasePackageAsync(
                int packageId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| packageId |  ``` Required ```  | TODO: Add a parameter description |



#### GetTransactionsAsync

> Tags:  ``` Streaming ``` 
> Get all transactions
```csharp
Task<string> GetTransactionsAsync()
```


#### GetTransactionAsync

> Tags:  ``` Streaming ``` 
> Get specific Transaction
```csharp
Task<string> GetTransactionAsync(
                string transactionId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| transactionId |  ``` Required ```  | TODO: Add a parameter description |





### SmsCampaignController

#### CreateSmsCampaignAsync

> Tags:  ``` Streaming ``` 
> Create sms campaign
```csharp
Task<string> CreateSmsCampaignAsync(
                int listId,
                string name,
                string mfrom,
                string body,
                int? schedule = null)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description || name |  ``` Required ```  | TODO: Add a parameter description || mfrom |  ``` Required ```  | TODO: Add a parameter description || body |  ``` Required ```  | TODO: Add a parameter description || schedule |  ``` Optional ```  | TODO: Add a parameter description |



#### CalculatePriceAsync

> Tags:  ``` Streaming ``` 
> Calculate price for sms campaign
```csharp
Task<string> CalculatePriceAsync(
                int listId,
                string name,
                string mfrom,
                string body)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| listId |  ``` Required ```  | TODO: Add a parameter description || name |  ``` Required ```  | TODO: Add a parameter description || mfrom |  ``` Required ```  | TODO: Add a parameter description || body |  ``` Required ```  | TODO: Add a parameter description |



#### UpdateSmsCampaignAsync

> Tags:  ``` Streaming ``` 
> Update sms campaign
```csharp
Task<string> UpdateSmsCampaignAsync(
                int smsCampaignId,
                int listId,
                string name,
                string mfrom,
                string body,
                string schedule)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| smsCampaignId |  ``` Required ```  | TODO: Add a parameter description || listId |  ``` Required ```  | TODO: Add a parameter description || name |  ``` Required ```  | TODO: Add a parameter description || mfrom |  ``` Required ```  | TODO: Add a parameter description || body |  ``` Required ```  | TODO: Add a parameter description || schedule |  ``` Required ```  | TODO: Add a parameter description |



#### CancelSmsCampaignAsync

> Tags:  ``` Streaming ``` 
> Cancel sms campaign
```csharp
Task<string> CancelSmsCampaignAsync(
                int smsCampaignId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| smsCampaignId |  ``` Required ```  | TODO: Add a parameter description |



#### GetSmsCampaignsAsync

> Tags:  ``` Streaming ``` 
> Get list of sms campaigns
```csharp
Task<string> GetSmsCampaignsAsync()
```


#### GetSmsCampaignAsync

> Tags:  ``` Streaming ``` 
> Get specific sms campaign
```csharp
Task<string> GetSmsCampaignAsync(
                int smsCampaignId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| smsCampaignId |  ``` Required ```  | TODO: Add a parameter description |





### PostLetterController

#### SendPostLetterAsync

> Tags:  ``` Streaming ``` 
> Send post letter
```csharp
Task<string> SendPostLetterAsync(
                List<string> attributes)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| attributes |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### CalculatePriceAsync

> Tags:  ``` Streaming ``` 
> Calculate post letter price
```csharp
Task<string> CalculatePriceAsync(
                List<string> attributes)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| attributes |  ``` Required ```  ``` Collection ```  | TODO: Add a parameter description |



#### GetPostLetterHistoryAsync

> Tags:  ``` Streaming ``` 
> Get all post letter history
```csharp
Task<string> GetPostLetterHistoryAsync()
```


#### ExportPostLetterHistoryAsync

> Tags:  ``` Streaming ``` 
> export post letter history
```csharp
Task<string> ExportPostLetterHistoryAsync(
                string filename)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |





### PostReturnAddressController

#### CreatePostReturnAddressAsync

> Tags:  ``` Streaming ``` 
> Create post return address
```csharp
Task<string> CreatePostReturnAddressAsync(
                string addressName,
                string addressLine1,
                string addressLine2,
                string addressCity,
                string addressState,
                string addressPostalCode,
                string addressCountry)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| addressName |  ``` Required ```  | TODO: Add a parameter description || addressLine1 |  ``` Required ```  | TODO: Add a parameter description || addressLine2 |  ``` Required ```  | TODO: Add a parameter description || addressCity |  ``` Required ```  | TODO: Add a parameter description || addressState |  ``` Required ```  | TODO: Add a parameter description || addressPostalCode |  ``` Required ```  | TODO: Add a parameter description || addressCountry |  ``` Required ```  | TODO: Add a parameter description |



#### GetPostReturnAddressesAsync

> Tags:  ``` Streaming ``` 
> Get list of post return addresses
```csharp
Task<string> GetPostReturnAddressesAsync()
```


#### GetPostReturnAddressAsync

> Tags:  ``` Streaming ``` 
> Get specific post return address
```csharp
Task<string> GetPostReturnAddressAsync(
                int returnAddressId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| returnAddressId |  ``` Required ```  | TODO: Add a parameter description |



#### UpdatePostReturnAddressAsync

> Tags:  ``` Streaming ``` 
> Update post return address
```csharp
Task<string> UpdatePostReturnAddressAsync(
                int returnAddressId,
                string addressName,
                string addressLine1,
                string addressLine2,
                string addressCity,
                string addressState,
                string addressPostalCode,
                string addressCountry)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| returnAddressId |  ``` Required ```  | TODO: Add a parameter description || addressName |  ``` Required ```  | TODO: Add a parameter description || addressLine1 |  ``` Required ```  | TODO: Add a parameter description || addressLine2 |  ``` Required ```  | TODO: Add a parameter description || addressCity |  ``` Required ```  | TODO: Add a parameter description || addressState |  ``` Required ```  | TODO: Add a parameter description || addressPostalCode |  ``` Required ```  | TODO: Add a parameter description || addressCountry |  ``` Required ```  | TODO: Add a parameter description |



#### DeletePostReturnAddressAsync

> Tags:  ``` Streaming ``` 
> Delete specific post return address
```csharp
Task<string> DeletePostReturnAddressAsync(
                int returnAddressId)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| returnAddressId |  ``` Required ```  | TODO: Add a parameter description |





### UploadController

#### UploadFileAsync

> Tags:  ``` Streaming ``` 
> Upload a file
```csharp
Task<string> UploadFileAsync(
                FileStreamInfo filename)
```

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | TODO: Add a parameter description |





