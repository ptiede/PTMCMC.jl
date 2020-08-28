"""
    PTModel(logdensity, logreference)
`logdensity` is the function that implements the log of the joint probability
density, i.e. the unormalized posterior.
`logreference` is the reference distribution you wish to sampler from.

**Note:**
The reference distribution is forced to be easy to sample from in order to
induce faster mixing in the lower temperature chains.
"""
struct PTModel{L,P<:Distribution} <: AbstractMCMC.AbstractModel
    logdensity::L
    reference::P
end
