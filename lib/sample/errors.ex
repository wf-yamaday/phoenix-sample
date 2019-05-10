defmodule Sample.Errors do
    
    def not_found(), do: 10003

    defmodule Sample.Errors.NotFound do
        defexception message: "not found"
    end

    defimpl Plug.Exception, for: Sample.Errors.NotFound do
        def status(_exception), do: 404
    end
    
end