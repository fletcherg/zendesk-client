---
external help file: zendesk-client-help.xml
Module Name: zendesk-client
online version: https://github.com/fletcherg/zendesk-client
schema: 2.0.0
---

# Update-ZendeskOrganization

## SYNOPSIS
Updates a Zendesk organization

## SYNTAX

```
Update-ZendeskOrganization [-id] <Int64[]> [-orgDetails] <Object> [<CommonParameters>]
```

## DESCRIPTION
This function will update the specified Zendesk organization

## EXAMPLES

### EXAMPLE 1
```
$orgDetails = @{'name' = "Acme SomeTestOrg2";
```

'notes' = "Something interesting";
	'organization_fields' = @{
	'customfield1' = "OU2"}
	}
	
Update-ZendeskOrganization -id 4919282 -orgDetails $orgDetails
      
Will Update organization with id 4919282

## PARAMETERS

### -id
id of the organization to

```yaml
Type: Int64[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -orgDetails
Hash of fields to update

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
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

[https://github.com/fletcherg/zendesk-client](https://github.com/fletcherg/zendesk-client)

