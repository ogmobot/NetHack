
des.level_init({ style = "solidfill", fg = " " });
des.level_flags("mazelevel");

des.map([[
                                                        -----              
                                                ---------...---            
                                        ---------.........L...---          
                                ---------.......................---        
                        ---------.................................---      
                ---------...........................................---    
        ---------.....................................................---  
|--------...............................................................--|
|.........................................................................|
|.L.....................................................................L.|
|.........................................................................|
|--...............................................................--------|
  ---.....................................................---------        
    ---...........................................---------                
      ---.................................---------                        
        ---.......................---------                                
          ---...L.........---------                                        
            ---...---------                                                
              -----                                                        
]]);

local terrain = { "L", "T", "{", "." };
local tidx = math.random(1, #terrain);
des.replace_terrain({ region={00,00, 74,18}, fromterrain="L", toterrain=terrain[tidx] });

des.region(selection.area(01,01,73,17), "lit");

des.stair("up");
des.stair("down");

des.non_diggable();

for i = 1,15 do
   des.object();
end

for i = 1,6 do
   des.trap();
end

for i = 1,28 do
  des.monster();
end
