--//网摘,直接打印到屏幕
function printTable(t, n)
  if "table" ~= type(t) then
    return 0;
  end
  n = n or 0;
  local str_space = "";
  for i = 1, n do
    str_space = str_space.."  ";
  end
  print(str_space.."{");
  for k, v in pairs(t) do
    local str_k_v
    if(type(k)=="string")then
      str_k_v = str_space.."  "..tostring(k).." = ";
    else
      str_k_v = str_space.."  ["..tostring(k).."] = ";
    end
    if "table" == type(v) then
      print(str_k_v);
      printTable(v, n + 1);
    else
      if(type(v)=="string")then
        str_k_v = str_k_v.."\""..tostring(v).."\"";
      else
        str_k_v = str_k_v..tostring(v);
      end
      print(str_k_v);
    end
  end
  print(str_space.."}");
end
