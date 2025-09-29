module Basic_01

# just a simple introduction to get used to the tools
mutable struct Foo
    data::Vector
end

function @main(ARGS)
    f = Foo(randn(10))

    # print a quick computation to the user
    print(Core.stdout, "sum: ")
    # poorly-typed `data` field prevents `sum(...)` from being inferred
    println(Core.stdout, sum(f.data))

    return 0
end

end # module Basic_01
