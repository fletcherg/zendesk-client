---
external help file: zendesk-client-help.xml
Module Name: zendesk-client
online version: https://github.com/fletcherg/zendesk-client
https://developer.zendesk.com/rest_api/docs/support/users#create-or-update-user
schema: 2.0.0
---

# Update-ZendeskUser

## SYNOPSIS
Update a Zendesk user

## SYNTAX

```
Update-ZendeskUser [-userDetails] <Object> [-id] <Int64> [<CommonParameters>]
```

## DESCRIPTION
This function will update a user in Zendesk.

## EXAMPLES

### EXAMPLE 1
```
$userDetails = @{'name' = "Tim Basket";
```

'email' = "tim@basket.org";
    'notes' = "somecoolguy"
    'organization' = @{
    'name' = "Acme SomeTestOrg2"}
    }

Update-ZendeskUser -userDetails $userDetails
Will create the update user tim@basket.org in the organization "Acme SomeTestOrg"

### EXAMPLE 2
```
$userDetails = @{'notes' = "he's not that cool"}
```

Update-ZendeskUser -userDetails $userDetails -id 360277978295
Will create the update the notes of the user with id 360277978295.

## PARAMETERS

### -userDetails
Hash of relevant user details (refer to zendesk API docs)

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -id
Id of the user to update.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Date: 16/05/2019

## RELATED LINKS

[https://github.com/fletcherg/zendesk-client
https://developer.zendesk.com/rest_api/docs/support/users#create-or-update-user](https://github.com/fletcherg/zendesk-client
https://developer.zendesk.com/rest_api/docs/support/users#create-or-update-user)

