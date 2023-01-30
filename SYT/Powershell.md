ldap-utils

ldapsearch
	| ->ldaps://ngfs.intra
	->Vorname -> givenName
		Nachname -> sn
		Klasse -> ou

ldapsearch -x -? ldaps:((ngfs.intra))