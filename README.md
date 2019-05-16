# zendesk-client

Basic zendesk powershell module. :dragon_face:

Sorry this is pretty lame :sweat:. PRs/contribs welcome etc.

# Getting Started

```
# Download the repo
# Extract to module path

Install-Module zendesk-client

```

Then you'll need a user account and a token (Admin -> Channels -> API in Zendesk). Then can login like this example:

```
$domain = "sandbox"
$username = "someadminuser@bla.com"
$token = "fIasrRkkdwPOQoajsdijwepASIdOZis0di9qASodi9wqrASd"

Connect-Zendesk -subdomain $subdomain -username $username -token $token

Get-ZendeskOrganization

```

# Functions

See below for a list of available commands.

### Admin

[Connect-Zendesk](Docs/Connect-Zendesk.md)

[Disconnect-Zendesk](Docs/Disconnect-Zendesk.md)

### Organizations

[Get-ZendeskOrganization](Docs/Get-ZendeskOrganization.md)

[New-ZendeskOrganization](Docs/New-ZendeskOrganization.md)

[Remove-ZendeskOrganization](Docs/Remove-ZendeskOrganization.md)

[Update-ZendeskOrganization](Docs/Update-ZendeskOrganization.md)

### Users

[Get-ZendeskUser](Docs/Get-ZendeskUser.md)

[New-ZendeskUser](Docs/New-ZendeskUser.md)

[Remove-ZendeskUser](Docs/Remove-ZendeskUser.md)

[Search-ZendeskUser](Docs/Search-ZendeskUser.md)

[Update-ZendeskUser](Docs/Update-ZendeskUser.md)

# To Do

* Write some tests.
* Add more functions.
* Eat snacks :dango: :custard: :shaved_ice:
