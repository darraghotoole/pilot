# pilot

`services` directory contains service definitions.  By convention, service name corresponds to image name.  

Setup:

```
cd images/hello && docker build -t composetest .
```

To start a module:

```
./pilot start hello
```

This will retrieve and start the specified module and all dependencies
