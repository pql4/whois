#!/bin/bash
clear
cat <<EOF
=======================================================================
        __              __                 __          _     
  _____/ /_  ___  _____/ /__     _      __/ /_  ____  (_)____
 / ___/ __ \/ _ \/ ___/ //_/____| | /| / / __ \/ __ \/ / ___/
/ /__/ / / /  __/ /__/ ,< /_____/ |/ |/ / / / / /_/ / (__  ) 
\___/_/ /_/\___/\___/_/|_|      |__/|__/_/ /_/\____/_/____/  

By; pqL  
=======================================================================
EOF
if test -s $1
then
    	for _domain_ in $(cat $1);
do
  	echo "Dominio:" $_domain_;
        _IP=$(dig +short A $_domain_);
        echo "IPV4: $_IP";
        _IP6=$(dig +short AAAA $_domain_);
        echo "IPV6: $_IP6";
        _SOA=$(dig +short SOA $_domain_);
        echo "SOA: $_SOA";
        echo "";done
else
    	_domain_=$1
        echo "Dominio:" $_domain_
        _IP=$(dig +short A $_domain_)
        echo "IPV4: $_IP"
        _IP6=$(dig +short AAAA $_domain_);
        echo "IPV6: $_IP6";        
        _SOA=$(dig +short SOA $_domain_)
        echo "SOA: $_SOA"
fi
