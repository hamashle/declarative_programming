addUp ns = map fun1 (filter fun2 ns)
   where fun1 ns = ns + 1
         fun2 ns = ns >= 1


-- addUp ns = filter greaterOne (map addOne ns)
--    where greaterOne n = n>1 
--          addOne n = n+1