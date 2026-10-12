
roots a b c = let del = b^2 - 4*a*c
               in if del < 0 then []
                  else if del == 0 then [-b / (2*a)]
                  else [(-b + sqrt del) / (2*a), (-b - sqrt del) / (2*a)]

--smaller x y, greater x y, equal x y, smaller_equal x y, greater_equal x y, and not_equal x y
smaller x y =  x < y 
greater x y = smaller y x
equal x y =  (not (smaller x y)) && (not (greater x y))
smaller_equal x y = not (greater x y)
greater_equal x y = not (smaller x y)
not_equal x y = not (equal x y)

same_value p1 p2 x y = (p1 x y) == (p2 x y)

main = do
    print (roots 1 (-3) 2) 
    print (roots 1 2 1)    
    print (roots 1 0 1)
    print("Is 3 smaller than 5? " ++ show (smaller 3 5))
    print("Is 5 smaller than 3? " ++ show (smaller 5 3))

    print("Is 3 greater than 5? " ++ show (greater 3 5))
    print("Is 5 greater than 3? " ++ show (greater 5 3))

    print("Is 3 equal to 5? " ++ show (equal 3 5))
    print("Is 5 equal to 5? " ++ show (equal 5 5))

    print("Is 3 smaller than or equal to 5? " ++ show (smaller_equal 3 5))
    print("Is 5 smaller than or equal to 3? " ++ show (smaller_equal 5 3))
    print("Is 5 smaller than or equal to 5? " ++ show (smaller_equal 5 5))

    print("Is 3 greater than or equal to 5? " ++ show (greater_equal 3 5))
    print("Is 5 greater than or equal to 3? " ++ show (greater_equal 5 3))
    print("Is 5 greater than or equal to 5? " ++ show (greater_equal 5 5))

    print("Is 3 not equal to 5? " ++ show (not_equal 3 5))
    print("Is 5 not equal to 5? " ++ show (not_equal 5 5))