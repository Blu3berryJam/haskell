--define a function roots a b c, whose values are the roots of the quadratic polynomial ax^2 + bx + c
roots a b c = let del = b^2 - 4*a*c
               in if del < 0 then []
                  else if del == 0 then [-b / (2*a)]
                  else [(-b + sqrt del) / (2*a), (-b - sqrt del) / (2*a)]

main = do
    print (roots 1 (-3) 2) 
    print (roots 1 2 1)    
    print (roots 1 0 1)    