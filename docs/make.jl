using PTMCMC
using Documenter

makedocs(;
    modules=[PTMCMC],
    authors="Paul <ptiede91@gmail.com> and contributors",
    repo="https://github.com/ptiede/PTMCMC.jl/blob/{commit}{path}#L{line}",
    sitename="PTMCMC.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ptiede.github.io/PTMCMC.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ptiede/PTMCMC.jl",
)
