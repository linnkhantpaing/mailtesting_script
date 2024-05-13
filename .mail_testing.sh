#!/bin/bash

# Email credentials and settings
MAIL_MAILER="smtp"
MAIL_HOST="smtp_hostname"
MAIL_PORT=587
mail_username="Username"
MAIL_PASSWORD="Password"
MAIL_ENCRYPTION="tls"
mail_from_address="From_mail_address"
MAIL_FROM_NAME="Mail_name"

# Recipient email
to_email="To_mail_address"

# Email subject and body
SUBJECT="Test Email from ---"
BODY="This is a test email sent from ----- script."

# Send the email using swaks
swaks --to $TO_EMAIL \
--from $MAIL_FROM_ADDRESS \
--server $MAIL_HOST \
--port $MAIL_PORT \
--auth LOGIN \
--auth-user $MAIL_USERNAME \
--auth-password $MAIL_PASSWORD \
--tls \
--header "Subject: $SUBJECT" \
--body "$BODY"

# Check if swaks command was successful
if [ $? -eq 0 ]; then
echo "Email sent successfully!"
else
echo "Failed to send email."
fi
