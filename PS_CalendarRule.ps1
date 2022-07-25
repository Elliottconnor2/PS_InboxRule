# Initial run to install module, if installed continues else will install 
If (Get-InstalledModule ExchangeOnlineManagement) {
    write-host "Installed"
} else {
    Install-Module ExchangeOnlineManagement -Scope CurrentUser
}
# Import module to run
Import-Module ExchangeOnlineManagement

# Create sign in instance
Connect-ExchangeOnline

# Get inbox rule
$Mailboxuser = Read-Host "Please enter the mailbox you wish to check"
Get-InboxRule -Mailbox $Mailboxuser 

# Get details of specific rule
$MailBoxrule = Read-Host "Please enter the rule name you wish to get more detail of"
Get-InboxRule -Mailbox $Mailboxuser -Identity $MailBoxrule | Select -Property *

