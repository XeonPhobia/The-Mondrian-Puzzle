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


--[[
local function addRectangle(n, i, j)
-- n is the table
local losning = {}
for i = 1, #n do 
  if n[i][2] == n.size then
    table.insert(losning, 'n[' .. i .. '][2] = ' .. n[i][2])
  else
    for j = i + 1, #n do 
  if n[i][2] + n[j][2] <= n.size then  table.insert(losning, 'n[' .. i .. '][2] + n[' .. j .. '][2] = ' .. n[i][2] + n[j][2]) 
  elseif n[i][2] + n[j][3] <= n.size then table.insert(losning, 'n[' .. i .. '][2] + n[' .. j .. '][3]' ) end
end
end
end
for i = 1, #losning do print(losning[i]) end
loadstring("print(n[2][3])")
end
--]]

local function addRectangle(n, i, j)
-- n is the table

local losning = {}
local list = nil
for i = 1, #n do 
  if n[i][2] == n.size then
    table.insert(losning, 'n[' .. i .. '][2] = ' .. n[i][2])
  else
--    if n[i][2] < n.size then table.insert(midlertidig, {'n[' .. i .. '][2] = ' .. n[i][2], i, 2, n[i][2]}) end
--    if n[i][3] < n.size then table.insert(midlertidig, {'n[' .. i .. '][3] = ' .. n[i][3], i, 3, n[i][3]}) end
    if n[i][2] < n.size then list = {next = list, value = {'n[' .. i .. '][2] = ' .. n[i][2], i, 2, n[i][2]}} end
    if n[i][3] < n.size then list = {next = list, value = {'n[' .. i .. '][3] = ' .. n[i][3], i, 3, n[i][3]}} end
  end

end
for i = 1, #losning do print(losning[i]) end
--for i = 1, #midlertidig do print(midlertidig[i][1]) end
--local l = list while l do print(l.value[1]) l = l.next end
traverse(list)
end

function traverse(list)
local list_output = nil
  local l = list while l and l.next do 
    print(l.value[1] .. ' + ' .. l.next.value[1], l.value[4] + l.next.value[4]) 
    if l.value[4] + l.next.value[4] == 10 then list_output = {next = list_output, value = l.value[1] .. ' + ' .. l.next.value[1]} end     
    l = l.next end


local l = list_output while l do print(l.value) l = l.next end 

end

local function FindAllRectangles()
-- n[area][length][width]
n = {{20, 5, 4}, {20, 10, 2}, {18, 6, 3}, {16, 8, 2}, {14, 7, 2}, {12, 6, 2}, size = 10}
addRectangle(n)
end

local function main()
FindAllRectangles()
 Square = {};
Square.size = 10;
initiate(Square)
mapPrinter(Square)
end
main()
