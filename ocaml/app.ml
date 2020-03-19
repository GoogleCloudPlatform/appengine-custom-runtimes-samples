open Core
open Async
open Cohttp_async

let hello_handler ~body:_ _sock req =
  req |> Request.uri |> (fun uri ->
    match Uri.path uri with
    | "/" -> Server.respond_string "Hello World!"
    | "/hello" ->
       Uri.get_query_param uri "name"
       |> Option.map ~f: (fun name -> "Hello " ^ name ^ "!")
       |> Option.value ~default: "Hello World!"
       |> Server.respond_string
    | _ ->
       Server.respond_string ~status:`Not_found "Route not found"
  )

let start_server port () =
  eprintf "App listening on port %d\n" port;
  Server.create ~on_handler_error:`Raise
    (Tcp.Where_to_listen.of_port port) hello_handler
  >>= fun _ -> Deferred.never ()

let () =
  Command.async_spec
    ~summary:"Start a hello world Async server"
    Command.Spec.(empty +>
      flag "-p" (optional_with_default 8080 int)
        ~doc:"int Source port to listen on"
    ) start_server
  |> Command.run
