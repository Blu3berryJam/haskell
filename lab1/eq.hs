--smaller x y, greater x y, equal x y, smaller_equal x y, greater_equal x y, and not_equal x y
smaller x y = if x < y then True
                else False
greater x y = if x > y then True
                else False
equal x y = if x == y then True
                else False
smaller_equal x y = if x <= y then True
                else False
greater_equal x y = if x >= y then True
                else False
not_equal x y = if x /= y then True
                else False

main = do
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
