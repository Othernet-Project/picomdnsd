picomdnsd

picodnsd is a tiny mdns server that allows mapping arbitrary hostnames
to arbitrary IPV4, both provided on the command line, using multicast DNS.

picodnsd <hostname> <ip>

Do _not_ include ".local" in <hostname>, it is added automatically.

<ip> is IPv4 only for now.

It takes no other inputs, or configuration. It can currently only make
one mapping. 

It does not deamonize itself, so that is left as an exercise to the user

