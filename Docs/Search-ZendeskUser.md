---
external help file: zendesk-client-help.xml
Module Name: zendesk-client
online version: https://github.com/fletcherg/zendesk-client
schema: 2.0.0
---

# Search-ZendeskUser

## SYNOPSIS
Searches Zendesk users

## SYNTAX

```
Search-ZendeskUser [-query] <String> [<CommonParameters>]
```

## DESCRIPTION
Search Zendesk users based on supplied query.

## EXAMPLES

### EXAMPLE 1
```
Search-ZendeskUser -query "jdoe"
```

Will return all Zendesk users with jdoe in their details.

## PARAMETERS

### -query
Query to search with

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
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

