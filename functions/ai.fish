function __ai_request
  curl -s https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d "$argv"
end
function ai
  set -l value "$argv"
  set -l result (__ai_request '{
    "model": "gpt-4o",
    "messages": [
      {
        "role": "system",
        "content": "You are an assistant that takes user requests and generates fish shell commands. For every request, return only, and only valid fish commands. Do not return explanations, do not return steps, return only a valid single fish shell command that fulfills the user request. The user is using a '(uname -s)'-based operating system."
      },
      {
        "role": "user",
        "content": "'"$argv"'"
      }
    ]
  }')
  set -l aicmd (echo $result | jq -r .choices[0].message.content)

  commandline --replace "$aicmd"
  commandline -f repaint
end
