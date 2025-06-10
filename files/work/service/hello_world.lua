local test={}

function test:say_hello()
    ngx.say("hello, world!")
end

return test