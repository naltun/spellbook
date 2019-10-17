#!/usr/bin/env ruby

# to do things
# fuzzing verbs
# fuzzing routes
# also fuzzing content type
# output data in format of postman/insomnia/burp suite colletion

require 'net/http'

target   = ARGV[0]
wordlist = ARGV[1]

class Purge < Net::HTTPRequest
    METHOD = "1337"
    REQUEST_HAS_BODY = false
    RESPONSE_HAS_BODY = false
  end

if target && wordlist
    http = Net::HTTP.new("http://pudim.com.br")
    
    response = http.request(Purge.new("/"))
    puts response.code

    # verbs = [
    #     "GET", "POST", "PUT", "DELETE", "HEAD", "OPTIONS", "CONNECT", "TRACE", "PATCH", "SUBSCRIBE", "MOVE", "REPORT",
    #     "UNLOCK", "0", "%s%s%s%s", "PURGE", "POLL", "OPTIONS", "NOTIFY", "SEARCH", "1337", "JEFF", "CATS", "*"

    #      "DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", 
    #      "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"
    # ]

    # verbs.each do |verb|
    #     request, data = http.get(headers)
    #     puts request.code
    # end
end