#Generic abstract sampler for Parallel Tempering
abstract type PTSampler <: AbstractMCMC.AbstractSampler end
AS = AbstractMCMC.AbstractSampler


mutable struct DEO{T,S<:AS, } <: PTSampler
    β::Vector{T}
    κ_exp::S
    nexp::Int
end

mutable struct FullSweep{T, S<:AS} <: PTSampler
    β::Vector{T}
    κ_exp::S
    nexp::Int
end
