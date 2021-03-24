*** Settings ***
Documentation     Sending plain text email via Gmail.
Library           RPA.Email.ImapSmtp    smtp_server=smtp.gmail.com    smtp_port=587

*** Variables ***
${USERNAME}       YOUR_GMAIL_ACCOUNT
${PASSWORD}       YOUR_GMAIL_PASS
${RECIPIENT}      recipient@example.com

*** Tasks ***
Send test email
    Authorize    account=${USERNAME}    password=${PASSWORD}
    Send Message    sender=${USERNAME}
    ...    recipients=${RECIPIENT}
    ...    subject=Message generated by robot
    ...    body=This is the body of the email.