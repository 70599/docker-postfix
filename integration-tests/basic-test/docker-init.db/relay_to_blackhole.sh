#!/bin/sh

. /common.sh

echo -e "‣ $notice Relaying all mails to blackhole.${reset}"
postconf -e "smtpd_end_of_data_restrictions=check_client_access static:discard"