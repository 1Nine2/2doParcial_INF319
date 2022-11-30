let rec fib1(n: int): int = fib1(n - 1) + fib1(n - 2)

let run = fib1(5) |> printfn"%i" 

let fib3 n = 
    match n with 
    | 0 -> 0
    | n -> 
        let mutable last = 0
        let mutable next = 1
        for i in 1 .. (n - 1) do
            let temp = last + next
            last <- next
            next <- temp
        next

let run =
    fib3 2 |> printfn "%i" |> ignore
    fib3 3 |> printfn "%i" |> ignore
    fib3 40 |> printfn "%i" |> ignore
