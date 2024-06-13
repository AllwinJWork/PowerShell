# Define SMTP email server 
$EmailServer = "smtp.gmail.com"
$SMTPPort = 587

# Define who the email is coming from 
$EmailFrom = "allwinbuisness@gmail.com"

# Define who the email should be sent to
$EmailTo = "leon131198@gmail.com"

# Define the subject of the email
$EmailSubject = "Alert: Something happened!"

# Define what the body (content) of your email should say
$EmailBody = @"
Hello,

This is an automated alert to notify you that something has happened.

Regards,
Your Automated PowerShell Script
"@

# Send the Email
Send-MailMessage -SmtpServer $EmailServer -Port $SMTPPort -UseSsl -Credential $GmailCredential -From $EmailFrom -To $EmailTo -Subject $EmailSubject -Body $EmailBody



# Your Gmail account credential username and password (securely)
$GmailUsername = 'allwinbuisness@gmail.com'
$GmailPassword = ConvertTo-SecureString 'enter password' -AsPlainText -Force  
$GmailCredential = New-Object System.Management.Automation.PSCredential $GmailUsername, $GmailPassword

Send-MailMessage -SmtpServer $EmailServer -Port $SMTPPort -UseSsl -Credential $GmailCredential -From $EmailFrom -To $EmailTo -Subject $EmailSubject -Body $EmailBody