;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns.wt7.ephec-ti.be. HE201280.students.ephec.be. (
			     14		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.wt7.ephec-ti.be.
_sip._udp.wt7.ephec-ti.be. IN SRV 10 10 5060 sip.wt7.ephec-ti.be.
ns	IN	A	51.254.212.55
wt7.ephec-ti.be.	IN	MX	10	mail.wt7.ephec-ti.be.
mail	IN	A	51.254.212.55
mail	IN	A	51.254.212.55	
www	IN	A	51.254.212.55
b2b	IN      A	51.254.212.55
sip	IN	A	51.255.41.207
owncloud	IN	A	51.255.41.207
intranet IN	A	172.17.0.4
@	IN	AAAA	::1

