# Parameter Expansion

+--------------------+----------------------+-----------------+-----------------+
|   Expression       |  When FOO="world"    |  When FOO=""    |    unset FOO    |
|   in script:       |  (Set and Not Null)  |  (Set But Null) |     (Unset)     |
+--------------------+----------------------+-----------------+-----------------+
| ${FOO:-hello}      | world                | hello           | hello           |
| ${FOO-hello}       | world                | ""              | hello           |
| ${FOO:=hello}      | world                | FOO=hello       | FOO=hello       |
| ${FOO=hello}       | world                | ""              | FOO=hello       |
| ${FOO:?hello}      | world                | error, exit     | error, exit     |
| ${FOO?hello}       | world                | ""              | error, exit     |
| ${FOO:+hello}      | hello                | ""              | ""              |
| ${FOO+hello}       | hello                | hello           | ""              |
+--------------------+----------------------+-----------------+-----------------+