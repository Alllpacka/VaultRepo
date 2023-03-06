ldap-utils

ldapsearch
	| ->ldaps://ngfs.intra
	->Vorname -> givenName
		Nachname -> sn
		Klasse -> ou

ldapsearch -x -? ldaps://ngfs.intra ("objectClass-Person")
																ou-3BHITS

Für alle Namen -> AD anlegen

~~~bash
#!/bin/bash

while read line; do
  ldapdata="$( ldapsearch -b $line -x -H ldaps://ngfs.intra -o TLS_REQCERT=never givenName sn ou )"   givenName="$( echo "$ldapdata" | grep "givenName:" )"
  if [[ "$givenName" =~ ^givenName:: ]]; then
    givenName="$( echo "$givenName" | sed "s/givenName:: //g" | base64 -d )"
  else
    givenName="$( echo "$givenName" | sed "s/givenName: //g" )"
  fi
  sn="$( echo "$ldapdata" | grep "sn:" )"
  if [[ "$sn" =~ ^sn:: ]]; then
    sn="$( echo "$sn" | sed "s/sn:: //g" | base64 -d )"
  else
    sn="$( echo "$sn" | sed "s/sn: //g" )"
  fi
  echo "$sn,$givenName" >> classList.csv
done <<< "$( ldapsearch -b OU=IT,o=HTBL -x -Hldaps://ngfs.intra -oTLS_REQCERT=never "(&(objectClass=Person)(ou=3AHITS))" | grep "dn: " | sed "s/dn: //g" )"
~~~