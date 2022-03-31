# A **wasmCloud** template on Gitpod

This is a repo for launching [**wasmCloud**](https://wasmcloud.dev/) example apps on [Gitpod](https://www.gitpod.io/).

## Next Steps

### Actors
| Launch | Example | Description | OCI Reference <br/> (refer to example for latest version) |
|---|---|---|---|
|[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#EXAMPLE_RQSTD=actor%2Fecho,EXAMPLE_DIR=echo/https://github.com/emattiza/wasmcloud-examples-gp)|[echo](https://github.com/wasmcloud/examples/tree/main/actor/echo) | An actor that listens on an HTTP port and returns a JSON payload describing the incoming request |  `wasmcloud.azurecr.io/echo` |
|WIP| [echo-messaging](https://github.com/wasmcloud/examples/tree/main/actor/echo-messaging) | An actor that listens on a message broker topic and replies |  `wasmcloud.azurecr.io/echo-messaging` |
|[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#EXAMPLE_RQSTD=actor%2Fhello,EXAMPLE_DIR=hello/https://github.com/emattiza/wasmcloud-examples-gp)| [hello](https://github.com/wasmcloud/examples/tree/main/actor/hello) | Canonical "hello world" actor that listens on an HTTP port and replies with a greeting |  `wasmcloud.azurecr.io/hello` |
|[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#EXAMPLE_RQSTD=actor%2Fkvcounter,EXAMPLE_DIR=kvcounter/https://github.com/emattiza/wasmcloud-examples-gp)| [kvcounter](https://github.com/wasmcloud/examples/tree/main/actor/kvcounter) | An actor that uses the key-value store to increment a counter and return a value for every HTTP request it receives | `wasmcloud.azurecr.io/kvcounter` |
|[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#EXAMPLE_RQSTD=actor%2Flogging,EXAMPLE_DIR=logging/https://github.com/emattiza/wasmcloud-examples-gp)| [logging](https://github.com/wasmcloud/examples/tree/main/actor/logging) | An actor that demonstrates the builtin logging capability provider | `wasmcloud.azurecr.io/logging` |
|WIP| [random](https://github.com/wasmcloud/examples/tree/main/actor/random) | An actor that demonstrates the builtin random number generation capability provider | `wasmcloud.azurecr.io/random` |
|WIP| [todo-sql](https://github.com/wasmcloud/examples/tree/main/actor/todo-sql) | An todo-application using sql database, https server (with TLS), logging, and numbergen | (unpublished) |
|[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#EXAMPLE_RQSTD=actor%2Ftodo,EXAMPLE_DIR=todo/https://github.com/emattiza/wasmcloud-examples-gp)| [todo](https://github.com/wasmcloud/examples/tree/main/actor/todo) | An todo-application using keyvalue store, http server, and logging | (unpublished) |
|[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#EXAMPLE_RQSTD=actor%2Fxkcd,EXAMPLE_DIR=xkcd/https://github.com/emattiza/wasmcloud-examples-gp)| [xkcd](https://github.com/wasmcloud/examples/tree/main/actor/xkcd) | A application that generates xkcd comics | `wasmcloud.azurecr/xkcd` |

## Notes & caveats

Thanks to [Cosmonic](https://cosmonic.com/) and the [wasmCloud team](https://wasmcloud.dev/) for helping to start this template repo
