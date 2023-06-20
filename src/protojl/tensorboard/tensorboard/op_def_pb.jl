# Autogenerated using ProtoBuf.jl v1.0.11 on 2023-06-19T18:18:24.776
# original file: /home/lior/TensorBoardLogger.jl/gen/proto/tensorboard/compat/proto/op_def.proto (proto3 syntax)

import ProtoBuf as PB
using ProtoBuf: OneOf
using ProtoBuf.EnumX: @enumx

export var"OpDef.AttrDef", OpDeprecation, var"OpDef.ArgDef", OpDef, OpList

struct var"OpDef.AttrDef"
    name::String
    var"#type"::String
    default_value::Union{Nothing,AttrValue}
    description::String
    has_minimum::Bool
    minimum::Int64
    allowed_values::Union{Nothing,AttrValue}
end
PB.default_values(::Type{var"OpDef.AttrDef"}) = (;name = "", var"#type" = "", default_value = nothing, description = "", has_minimum = false, minimum = zero(Int64), allowed_values = nothing)
PB.field_numbers(::Type{var"OpDef.AttrDef"}) = (;name = 1, var"#type" = 2, default_value = 3, description = 4, has_minimum = 5, minimum = 6, allowed_values = 7)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:var"OpDef.AttrDef"})
    name = ""
    var"#type" = ""
    default_value = Ref{Union{Nothing,AttrValue}}(nothing)
    description = ""
    has_minimum = false
    minimum = zero(Int64)
    allowed_values = Ref{Union{Nothing,AttrValue}}(nothing)
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            name = PB.decode(d, String)
        elseif field_number == 2
            var"#type" = PB.decode(d, String)
        elseif field_number == 3
            PB.decode!(d, default_value)
        elseif field_number == 4
            description = PB.decode(d, String)
        elseif field_number == 5
            has_minimum = PB.decode(d, Bool)
        elseif field_number == 6
            minimum = PB.decode(d, Int64)
        elseif field_number == 7
            PB.decode!(d, allowed_values)
        else
            PB.skip(d, wire_type)
        end
    end
    return var"OpDef.AttrDef"(name, var"#type", default_value[], description, has_minimum, minimum, allowed_values[])
end

function PB.encode(e::PB.AbstractProtoEncoder, x::var"OpDef.AttrDef")
    initpos = position(e.io)
    !isempty(x.name) && PB.encode(e, 1, x.name)
    !isempty(x.var"#type") && PB.encode(e, 2, x.var"#type")
    !isnothing(x.default_value) && PB.encode(e, 3, x.default_value)
    !isempty(x.description) && PB.encode(e, 4, x.description)
    x.has_minimum != false && PB.encode(e, 5, x.has_minimum)
    x.minimum != zero(Int64) && PB.encode(e, 6, x.minimum)
    !isnothing(x.allowed_values) && PB.encode(e, 7, x.allowed_values)
    return position(e.io) - initpos
end
function PB._encoded_size(x::var"OpDef.AttrDef")
    encoded_size = 0
    !isempty(x.name) && (encoded_size += PB._encoded_size(x.name, 1))
    !isempty(x.var"#type") && (encoded_size += PB._encoded_size(x.var"#type", 2))
    !isnothing(x.default_value) && (encoded_size += PB._encoded_size(x.default_value, 3))
    !isempty(x.description) && (encoded_size += PB._encoded_size(x.description, 4))
    x.has_minimum != false && (encoded_size += PB._encoded_size(x.has_minimum, 5))
    x.minimum != zero(Int64) && (encoded_size += PB._encoded_size(x.minimum, 6))
    !isnothing(x.allowed_values) && (encoded_size += PB._encoded_size(x.allowed_values, 7))
    return encoded_size
end

struct OpDeprecation
    version::Int32
    explanation::String
end
PB.default_values(::Type{OpDeprecation}) = (;version = zero(Int32), explanation = "")
PB.field_numbers(::Type{OpDeprecation}) = (;version = 1, explanation = 2)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:OpDeprecation})
    version = zero(Int32)
    explanation = ""
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            version = PB.decode(d, Int32)
        elseif field_number == 2
            explanation = PB.decode(d, String)
        else
            PB.skip(d, wire_type)
        end
    end
    return OpDeprecation(version, explanation)
end

function PB.encode(e::PB.AbstractProtoEncoder, x::OpDeprecation)
    initpos = position(e.io)
    x.version != zero(Int32) && PB.encode(e, 1, x.version)
    !isempty(x.explanation) && PB.encode(e, 2, x.explanation)
    return position(e.io) - initpos
end
function PB._encoded_size(x::OpDeprecation)
    encoded_size = 0
    x.version != zero(Int32) && (encoded_size += PB._encoded_size(x.version, 1))
    !isempty(x.explanation) && (encoded_size += PB._encoded_size(x.explanation, 2))
    return encoded_size
end

struct var"OpDef.ArgDef"
    name::String
    description::String
    var"#type"::var"#DataType".T
    type_attr::String
    number_attr::String
    type_list_attr::String
    handle_data::Vector{var"ResourceHandleProto.DtypeAndShape"}
    is_ref::Bool
    experimental_full_type::Union{Nothing,FullTypeDef}
end
PB.default_values(::Type{var"OpDef.ArgDef"}) = (;name = "", description = "", var"#type" = var"#DataType".DT_INVALID, type_attr = "", number_attr = "", type_list_attr = "", handle_data = Vector{var"ResourceHandleProto.DtypeAndShape"}(), is_ref = false, experimental_full_type = nothing)
PB.field_numbers(::Type{var"OpDef.ArgDef"}) = (;name = 1, description = 2, var"#type" = 3, type_attr = 4, number_attr = 5, type_list_attr = 6, handle_data = 7, is_ref = 16, experimental_full_type = 17)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:var"OpDef.ArgDef"})
    name = ""
    description = ""
    var"#type" = var"#DataType".DT_INVALID
    type_attr = ""
    number_attr = ""
    type_list_attr = ""
    handle_data = PB.BufferedVector{var"ResourceHandleProto.DtypeAndShape"}()
    is_ref = false
    experimental_full_type = Ref{Union{Nothing,FullTypeDef}}(nothing)
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            name = PB.decode(d, String)
        elseif field_number == 2
            description = PB.decode(d, String)
        elseif field_number == 3
            var"#type" = PB.decode(d, var"#DataType".T)
        elseif field_number == 4
            type_attr = PB.decode(d, String)
        elseif field_number == 5
            number_attr = PB.decode(d, String)
        elseif field_number == 6
            type_list_attr = PB.decode(d, String)
        elseif field_number == 7
            PB.decode!(d, handle_data)
        elseif field_number == 16
            is_ref = PB.decode(d, Bool)
        elseif field_number == 17
            PB.decode!(d, experimental_full_type)
        else
            PB.skip(d, wire_type)
        end
    end
    return var"OpDef.ArgDef"(name, description, var"#type", type_attr, number_attr, type_list_attr, handle_data[], is_ref, experimental_full_type[])
end

function PB.encode(e::PB.AbstractProtoEncoder, x::var"OpDef.ArgDef")
    initpos = position(e.io)
    !isempty(x.name) && PB.encode(e, 1, x.name)
    !isempty(x.description) && PB.encode(e, 2, x.description)
    x.var"#type" != var"#DataType".DT_INVALID && PB.encode(e, 3, x.var"#type")
    !isempty(x.type_attr) && PB.encode(e, 4, x.type_attr)
    !isempty(x.number_attr) && PB.encode(e, 5, x.number_attr)
    !isempty(x.type_list_attr) && PB.encode(e, 6, x.type_list_attr)
    !isempty(x.handle_data) && PB.encode(e, 7, x.handle_data)
    x.is_ref != false && PB.encode(e, 16, x.is_ref)
    !isnothing(x.experimental_full_type) && PB.encode(e, 17, x.experimental_full_type)
    return position(e.io) - initpos
end
function PB._encoded_size(x::var"OpDef.ArgDef")
    encoded_size = 0
    !isempty(x.name) && (encoded_size += PB._encoded_size(x.name, 1))
    !isempty(x.description) && (encoded_size += PB._encoded_size(x.description, 2))
    x.var"#type" != var"#DataType".DT_INVALID && (encoded_size += PB._encoded_size(x.var"#type", 3))
    !isempty(x.type_attr) && (encoded_size += PB._encoded_size(x.type_attr, 4))
    !isempty(x.number_attr) && (encoded_size += PB._encoded_size(x.number_attr, 5))
    !isempty(x.type_list_attr) && (encoded_size += PB._encoded_size(x.type_list_attr, 6))
    !isempty(x.handle_data) && (encoded_size += PB._encoded_size(x.handle_data, 7))
    x.is_ref != false && (encoded_size += PB._encoded_size(x.is_ref, 16))
    !isnothing(x.experimental_full_type) && (encoded_size += PB._encoded_size(x.experimental_full_type, 17))
    return encoded_size
end

struct OpDef
    name::String
    input_arg::Vector{var"OpDef.ArgDef"}
    output_arg::Vector{var"OpDef.ArgDef"}
    control_output::Vector{String}
    attr::Vector{var"OpDef.AttrDef"}
    deprecation::Union{Nothing,OpDeprecation}
    summary::String
    description::String
    is_commutative::Bool
    is_aggregate::Bool
    is_stateful::Bool
    allows_uninitialized_input::Bool
    is_distributed_communication::Bool
end
PB.default_values(::Type{OpDef}) = (;name = "", input_arg = Vector{var"OpDef.ArgDef"}(), output_arg = Vector{var"OpDef.ArgDef"}(), control_output = Vector{String}(), attr = Vector{var"OpDef.AttrDef"}(), deprecation = nothing, summary = "", description = "", is_commutative = false, is_aggregate = false, is_stateful = false, allows_uninitialized_input = false, is_distributed_communication = false)
PB.field_numbers(::Type{OpDef}) = (;name = 1, input_arg = 2, output_arg = 3, control_output = 20, attr = 4, deprecation = 8, summary = 5, description = 6, is_commutative = 18, is_aggregate = 16, is_stateful = 17, allows_uninitialized_input = 19, is_distributed_communication = 21)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:OpDef})
    name = ""
    input_arg = PB.BufferedVector{var"OpDef.ArgDef"}()
    output_arg = PB.BufferedVector{var"OpDef.ArgDef"}()
    control_output = PB.BufferedVector{String}()
    attr = PB.BufferedVector{var"OpDef.AttrDef"}()
    deprecation = Ref{Union{Nothing,OpDeprecation}}(nothing)
    summary = ""
    description = ""
    is_commutative = false
    is_aggregate = false
    is_stateful = false
    allows_uninitialized_input = false
    is_distributed_communication = false
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            name = PB.decode(d, String)
        elseif field_number == 2
            PB.decode!(d, input_arg)
        elseif field_number == 3
            PB.decode!(d, output_arg)
        elseif field_number == 20
            PB.decode!(d, control_output)
        elseif field_number == 4
            PB.decode!(d, attr)
        elseif field_number == 8
            PB.decode!(d, deprecation)
        elseif field_number == 5
            summary = PB.decode(d, String)
        elseif field_number == 6
            description = PB.decode(d, String)
        elseif field_number == 18
            is_commutative = PB.decode(d, Bool)
        elseif field_number == 16
            is_aggregate = PB.decode(d, Bool)
        elseif field_number == 17
            is_stateful = PB.decode(d, Bool)
        elseif field_number == 19
            allows_uninitialized_input = PB.decode(d, Bool)
        elseif field_number == 21
            is_distributed_communication = PB.decode(d, Bool)
        else
            PB.skip(d, wire_type)
        end
    end
    return OpDef(name, input_arg[], output_arg[], control_output[], attr[], deprecation[], summary, description, is_commutative, is_aggregate, is_stateful, allows_uninitialized_input, is_distributed_communication)
end

function PB.encode(e::PB.AbstractProtoEncoder, x::OpDef)
    initpos = position(e.io)
    !isempty(x.name) && PB.encode(e, 1, x.name)
    !isempty(x.input_arg) && PB.encode(e, 2, x.input_arg)
    !isempty(x.output_arg) && PB.encode(e, 3, x.output_arg)
    !isempty(x.control_output) && PB.encode(e, 20, x.control_output)
    !isempty(x.attr) && PB.encode(e, 4, x.attr)
    !isnothing(x.deprecation) && PB.encode(e, 8, x.deprecation)
    !isempty(x.summary) && PB.encode(e, 5, x.summary)
    !isempty(x.description) && PB.encode(e, 6, x.description)
    x.is_commutative != false && PB.encode(e, 18, x.is_commutative)
    x.is_aggregate != false && PB.encode(e, 16, x.is_aggregate)
    x.is_stateful != false && PB.encode(e, 17, x.is_stateful)
    x.allows_uninitialized_input != false && PB.encode(e, 19, x.allows_uninitialized_input)
    x.is_distributed_communication != false && PB.encode(e, 21, x.is_distributed_communication)
    return position(e.io) - initpos
end
function PB._encoded_size(x::OpDef)
    encoded_size = 0
    !isempty(x.name) && (encoded_size += PB._encoded_size(x.name, 1))
    !isempty(x.input_arg) && (encoded_size += PB._encoded_size(x.input_arg, 2))
    !isempty(x.output_arg) && (encoded_size += PB._encoded_size(x.output_arg, 3))
    !isempty(x.control_output) && (encoded_size += PB._encoded_size(x.control_output, 20))
    !isempty(x.attr) && (encoded_size += PB._encoded_size(x.attr, 4))
    !isnothing(x.deprecation) && (encoded_size += PB._encoded_size(x.deprecation, 8))
    !isempty(x.summary) && (encoded_size += PB._encoded_size(x.summary, 5))
    !isempty(x.description) && (encoded_size += PB._encoded_size(x.description, 6))
    x.is_commutative != false && (encoded_size += PB._encoded_size(x.is_commutative, 18))
    x.is_aggregate != false && (encoded_size += PB._encoded_size(x.is_aggregate, 16))
    x.is_stateful != false && (encoded_size += PB._encoded_size(x.is_stateful, 17))
    x.allows_uninitialized_input != false && (encoded_size += PB._encoded_size(x.allows_uninitialized_input, 19))
    x.is_distributed_communication != false && (encoded_size += PB._encoded_size(x.is_distributed_communication, 21))
    return encoded_size
end

struct OpList
    op::Vector{OpDef}
end
PB.default_values(::Type{OpList}) = (;op = Vector{OpDef}())
PB.field_numbers(::Type{OpList}) = (;op = 1)

function PB.decode(d::PB.AbstractProtoDecoder, ::Type{<:OpList})
    op = PB.BufferedVector{OpDef}()
    while !PB.message_done(d)
        field_number, wire_type = PB.decode_tag(d)
        if field_number == 1
            PB.decode!(d, op)
        else
            PB.skip(d, wire_type)
        end
    end
    return OpList(op[])
end

function PB.encode(e::PB.AbstractProtoEncoder, x::OpList)
    initpos = position(e.io)
    !isempty(x.op) && PB.encode(e, 1, x.op)
    return position(e.io) - initpos
end
function PB._encoded_size(x::OpList)
    encoded_size = 0
    !isempty(x.op) && (encoded_size += PB._encoded_size(x.op, 1))
    return encoded_size
end
