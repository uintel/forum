#!/usr/bin/expect

set SMTP_USERNAME [lindex $argv 0]
set SMTP_PASSWORD [lindex $argv 1]

spawn ./discourse-setup

expect "Hostname for your Discourse? \[discourse.example.com]:\r"
send -- "forum.resilience-explorer.com\r"

expect "Email address for admin account(s)? \[me@example.com,you@example.com]:\r"
send -- "support@urbanintelligence.co.nz\r"

expect "SMTP server address? \[smtp.example.com]:\r"
send -- "email-smtp.ap-southeast-2.amazonaws.com\r"

expect "SMTP port? \[587]:\r"
send -- "587\r"

expect "SMTP user name? \[user@example.com]:\r"
send -- "$SMTP_USERNAME\r"

expect "SMTP password? \[pa$\$word]:\r"
send -- "$SMTP_PASSWORD\r"

expect "Let's Encrypt account email? (ENTER to skip) \[me@example.com]:\r"
send -- "\r"

expect "Optional Maxmind License key () \[xxxxxxxxxxxxxxxx]:\r"
send "\r"

expect eof
