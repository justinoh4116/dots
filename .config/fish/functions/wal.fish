function wal
    set -f APPID "" # Get one at https://products.wolframalpha.com/api/
    echo $argv | string escape --style=url | read question_string
    set -f url "https://api.wolframalpha.com/v1/simple?appid="$APPID"&i="$question_string
    kitten icat $url
end
