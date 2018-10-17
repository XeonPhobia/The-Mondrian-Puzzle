local function initiate(tabel)
-- define 2d array 'tabel'
for i = 1, tabel.size do
  tabel[i] = {}
  for j = 1, tabel.size do
    tabel[i][j] = {}  
    tabel[i][j] = 0
  end
end
return tabel;
end

local function mapPrinter(tabel)
--print("Kart:", tabe)
for i = 1, tabel.size do
  for j = 1, tabel.size do
    io.write(tabel[i][j])
  end
  print()
end
end

local function compute(position, tabel, sum)
  for i = position + 1, #tabel do
    print("\n", i)
     for i_next = i, #tabel do
       io.write(tabel[i_next][1], " ")
       local data = data or {}
       table.insert(data, tabel[i_next][1]) 
       check(position, tabel, sum)
     end
  end
end

function check(position, tabel, sum)
if sum >= 20 then return 
elseif sum == 20 then table.insert(list, pos, val) end
end

function expand(tabel, output)
--if tabel[#tabel] == nil then return end
--local position_val = tabel[#tabel].position
local sum_val = tabel[#tabel].sum
local tabel_val = table.remove(tabel)
print("position_val","tabel_val[1]","sum_val")
print(tabel_val.position, tabel_val[1], sum_val)

  for i = tabel_val.position, #tabel.list do
   
    
    if i > tabel_val.position then 
      print("test", tabel_val.position, i)
      if sum_val + tabel.list[i] < tabel.cutt_off then 
        print("Lessthan20", sum_val + tabel.list[i], tabel_val[1] ) 
        table.insert(tabel, {tabel_val.position .. '+' .. i, sum = sum_val + tabel.list[i], position = tabel_val.position + 1}) 
      elseif sum_val + tabel.list[i] == tabel.cutt_off then 
        print("Exactly20", sum_val + tabel.list[i], tabel_val[1] )  
        table.insert(output, {tabel_val[1] .. '+' .. i, sum = sum_val + tabel.list[i], position = tabel_val.position})
      else
        print("out of bounds",  sum_val + tabel.list[i]) 
      end
    end
  end
end

local function main()
nn_new = {{2}, {4}, {6}, {8}, {10}, {12}, list = {2, 4, 6, 8, 10, 12}, cutt_off = 20}
  for i = 1, #nn_new do nn_new[i].sum = nn_new[i][1] end
  for i = 1, #nn_new do nn_new[i].position = i end
--compute(1, nn, 0)
nn_output = {}
  while #nn_new > 0 do expand(nn_new, nn_output) print("test2", nn_new[#nn_new][1]) end
--  for i, v in ipairs(nn_new) do expand(nn_new, nn_output) end
--  for i = 1, 4 do expand(nn_new, nn_output) end
    for i = 1, #nn_new do print(nn_new[i][1]) end
    for i, v in ipairs(nn_output) do print(nn_output[i][1], nn_output[i].sum) end
    for i, v in ipairs(nn_new) do print("nn_new", nn_new[i][1], nn_new[i].sum) end
end
main()
