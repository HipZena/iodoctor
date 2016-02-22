### SimpleCalculatorController

#### GetCalculateAsync

> Calculates the expression using the specified operation.
```csharp
Task<string> GetCalculateAsync(
                OperationTypeEnum operation,
                double x,
                double y)
```

##### Parameters: 

| Parameter | Tags | Description |
|-----------|------|-------------|
| operation |  ``` Required ```  | The operator to apply on the variables || x |  ``` Required ```  | The LHS value || y |  ``` Required ```  | The RHS value |


##### Usage:
```csharp
var operationType = OperationTypeEnum.SUM;

Task<string> result = await SimpleCalculatorController.GetCalculateAsync(operationType, 10.1, 10.1);

```






