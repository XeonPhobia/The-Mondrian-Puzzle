function expand(tabel, output)
local tabel_val = table.remove(tabel)
print("position_val","tabel_val[1]","tabel_val.sum")
print(tabel_val.position, tabel_val[1],"=", tabel_val.sum)

  for i = tabel_val.position, #tabel.list do
   
    
    if i > tabel_val.position then 
      print("test adding", i)
      if tabel_val.sum + tabel.list[i] < tabel.cutt_off then 
        print("Lessthan20", tabel_val.sum + tabel.list[i], tabel_val[1] ) 
        
          if tabel_val.position < i then new_position = i else new_position = tabel_val.position + 1 end
        table.insert(tabel, {tabel_val.position .. '+' .. i, sum = tabel_val.sum + tabel.list[i], position = new_position}) 
      elseif tabel_val.sum + tabel.list[i] == tabel.cutt_off then 
        print("Exactly20", tabel_val.sum + tabel.list[i], tabel_val[1] )  
        table.insert(output, {tabel_val[1] .. '+' .. i, sum = tabel_val.sum + tabel.list[i]})
      else
--        print("out of bounds",  sum_val + tabel.list[i]) 
      end
    end
  end
end

local function main()
nn_new = {{1}, {2}, {3}, {4}, {5}, {6}, list = {2, 4, 6, 8, 10, 12}, cutt_off = 20}
  for i = 1, #nn_new do nn_new[i].sum = nn_new.list[i] end
  for i = 1, #nn_new do nn_new[i].position = i end
nn_output = {}
  while #nn_new > 0 do expand(nn_new, nn_output)  end

    for i = 1, #nn_new do print(nn_new[i][1]) end
    for i, v in ipairs(nn_output) do print(nn_output[i][1],"=", nn_output[i].sum) end
    for i, v in ipairs(nn_new) do print("nn_new", nn_new[i][1], nn_new[i].sum) end
end
main()
