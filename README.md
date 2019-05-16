# zendesk-client

Basic zendesk powershell module. :dragon_face:

Sorry this is pretty lame. I only implemented a couple of functions that I needed at the time... :sweat:. PRs welcome etc.

# Getting Started

You'll need a user account and a token.

Following example:

```
$domain = "sandbox"
$username = "someadminuser@bla.com"
$token = "fIasrRkkdwPOQoajsdijwepASIdOZis0di9qASodi9wqrASd"

Connect-Zendesk -subdomain $subdomain -username $username -token $token

Get-ZendeskOrganization

```

# Functions

See below for a list of available commands.

[Connect-Zendesk](Docs/Connect-Zendesk.md)

[Get-ZendeskOrganization](Docs/Get-ZendeskOrganization.md)

[New-ZendeskOrganization](Docs/New-ZendeskOrganization.md)

[New-ZendeskUser](Docs/New-ZendeskUser.md)

[Remove-ZendeskOrganization](Docs/Remove-ZendeskOrganization.md)

[Update-ZendeskOrganization](Docs/Update-ZendeskOrganization.md)

[Search-ZendeskUser](Docs/Search-ZendeskUser.md)

[Disconnect-Zendesk](Docs/Disconnect-Zendesk.md)

# To Do

* Add more functions.
* Eat snacks :dango: :custard: :shaved_ice:
