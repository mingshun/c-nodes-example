c-nodes-example
===============

Erlang C Nodes example

**Note**: Change hostname to alpha.example.com and add domain to `/etc/hosts` before testing.

1.Test C node server example with short node names

```shell
$ ./cserver 3456

$ erl -sname e1 -setcookie secretcookie
Erlang/OTP 17 [erts-6.1] [source] [smp:2:2] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V6.1  (abort with ^G)
(e1@alpha)1> c(complex3).
{ok,complex3}
(e1@alpha)2> complex3:foo(3).
4
(e1@alpha)3> complex3:bar(5).
10
```

2.Test C node server example with long node names

```shell
$ ./cserver2 3456

$ erl -name e1 -setcookie secretcookie
Erlang/OTP 17 [erts-6.1] [source] [smp:2:2] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V6.1  (abort with ^G)
(e1@alpha.example.com)1> c(complex4).
{ok,complex4}
(e1@alpha.example.com)2> complex4:foo(3).
4
(e1@alpha.example.com)3> complex4:bar(5).
10
```

3.Test C node client example

```shell
$ erl -sname e1 -setcookie secretcookie
Erlang/OTP 17 [erts-6.1] [source] [smp:2:2] [async-threads:10] [hipe] [kernel-poll:false]

Eshell V6.1  (abort with ^G)
(e1@alpha)1> c(complex3).
{ok,complex3}
```

run the C node client

```shell
$ ./cclient
```

back to the erlang shell

```shell
(e1@alpha)2> complex3:foo(3).
4
(e1@alpha)3> complex3:bar(5).
10
```
