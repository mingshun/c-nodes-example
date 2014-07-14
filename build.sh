# build under OTP 17.1 on Linux
# -lsocket should be added and -lrt should be removed while build on FreeBSD

gcc -o cserver \
-I/usr/local/lib/erlang/lib/erl_interface-3.7.17/include \
-L/usr/local/lib/erlang/lib/erl_interface-3.7.17/lib \
complex.c cnode_s.c \
-lerl_interface -lei -lnsl -lrt

gcc -o cserver2 \
-I/usr/local/lib/erlang/lib/erl_interface-3.7.17/include \
-L/usr/local/lib/erlang/lib/erl_interface-3.7.17/lib \
complex.c cnode_s2.c \
-lerl_interface -lei -lnsl -lrt

gcc -o cclient \
-I/usr/local/lib/erlang/lib/erl_interface-3.7.17/include \
-L/usr/local/lib/erlang/lib/erl_interface-3.7.17/lib \
complex.c cnode_c.c \
-lerl_interface -lei -lnsl -lrt
