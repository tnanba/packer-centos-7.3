#!/bin/sh

cat <<__END__ >> /etc/ssh/sshd_config
AddressFamily inet
UseDNS no
GSSAPIAuthentication no
__END__
