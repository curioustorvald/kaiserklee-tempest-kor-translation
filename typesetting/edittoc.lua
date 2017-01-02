args = {...}

tocfile = args[1]

if (tocfile == nil) then print(
[[오류: 입력 파일이 없습니다!
사용법: lua edittoc.lua [입력파일.toc]

Error - no input file specified.
Usage: lua edittoc.lua [input_file.toc]
]]
) return end


-- '제\,\,장}1장 ' -> '1\,장}'
-- '제\,\,장}외전1. ' -> '외전 1}'
-- '제\,\,장}부록}' -> '부록}'

re_normalcpt = [[제\,\,장}[0-9]+장 ]]
re_normalcpt_num = "[0-9]+"
re_normalcpt_intmd = [[%%d\,장}]]

re_side = [[제\,\,장}외전[0-9.]+ ]]
re_side_num = "[0-9]"
re_side_intmd = [[외전 %%d}]]

re_appendix = [[제\,\,장}부록}]]
re_appendix_to = "}부록}"

breaker = [[

\textbreak\vskip-1em
]]


function printline(line)
	print(line) -- todo: print to output file
end


is_prevline_chapter = false

for line in io.lines(tocfile) do
	
	match = line:match(re_normalcpt) -- is normal chapter?
	if match then
		cptnum = match:match(re_normalcpt_num)

		-- why like this, Lua, why?
		intmdline = string.format(line:gsub(re_normalcpt, re_normalcpt_intmd), cptnum)
		printline(intmdline)

		is_prevline_chapter = true
	
	else
		match = line:match(re_side) -- is side story?
		if match then
			-- before we begin, make sure to insert 'breaker'
			if is_prevline_chapter then printline(breaker) end

			sidenum = match:match(re_side_num)

			intmdline = string.format(line:gsub(re_side, re_side_intmd), sidenum)
			printline(intmdline)

			is_prevline_chapter = false
		
		else
			match = line:match(re_appendix) -- is appendix?
			if match then
				printline(line:gsub(re_appendix, re_appendix_to))

				is_prevline_chapter = false
			
			else -- else, just carry on
				printline(line)
				is_prevline_chapter = false
			end
		end
	end

end