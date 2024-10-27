# if "usage" is not installed show an error
if ! command -v usage &>/dev/null
    echo >&2
    echo "Error: usage CLI not found. This is required for completions to work in {bin}." >&2
    echo "See https://usage.jdx.dev for more information." >&2
    return 1
end

set _usage_spec_{bin} ({usage_cmd} | string collect)
complete -xc {bin} -a '(usage complete-word --shell fish -s "$_usage_spec_{bin}" -- (commandline -cop) (commandline -t))'
