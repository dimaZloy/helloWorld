

# Rev 12-Feb-2020
# compile simple app ("hello.jl") to as a static library:
# in Julia REPL (v1.3.1):
# using PackageCompiler
# build_executable("hello.jl")


using Dates;

Base.@ccallable function julia_main(ARGS::Vector{String})::Cint

    try
	println("Hellow World!!!");
  	println(Dates.now());

    catch
        Base.invokelatest(Base.display_error, Base.catch_stack())
        return 1
    end

    return 0  
end
