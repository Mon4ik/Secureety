local monitor = peripheral.find("monitor")
if monitor == nil then
	error("No found monitors!")
	return
end
local xS, yS = monitor.getSize()
if xS ~= 7 and yS ~= 5 then
	error("Invalid monitor size!")
	return
end
if fs.exists("settings.cfg") == false then
	settings.set("Secureety.password", "12345")
	settings.set("Secureety.openedTime", "5")
	settings.save("settings.cfg")
end
settings.load("settings.cfg")
password = settings.get("Secureety.pass")
pass = ""
passlen  = 0
while true do
	sleep(0.2)
	monitor.setBackgroundColor(colors.white)
	monitor.clear()
	monitor.setBackgroundColor(colors.lightGray)
	monitor.setTextColor(colors.lightGray)
	monitor.setCursorPos(2, 1)
	monitor.write("-----")
	monitor.setBackgroundColor(colors.lightGray)
	monitor.setTextColor(colors.white)
	monitor.setCursorPos(2, 1)
	local secreted = ""
	for i=1, passlen do
		secreted = secreted .. "*"
	end
	monitor.write(secreted)
	monitor.setBackgroundColor(colors.black)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(1, 1)
	monitor.write("-")
	monitor.setBackgroundColor(colors.black)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(7, 1)
	monitor.write("-")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(2, 2)
	monitor.write("1")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(4, 2)
	monitor.write("2")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(6, 2)
	monitor.write("3")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(2, 3)
	monitor.write("4")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(4, 3)
	monitor.write("5")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(6, 3)
	monitor.write("6")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(2, 4)
	monitor.write("7")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(4, 4)
	monitor.write("8")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(6, 4)
	monitor.write("9")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(2, 5)
	monitor.write("C")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(4, 5)
	monitor.write("0")
	monitor.setBackgroundColor(colors.white)
	monitor.setTextColor(colors.black)
	monitor.setCursorPos(6, 5)
	monitor.write("E")
	local _, _, x, y = os.pullEvent("monitor_touch")
	if x == 2 and y == 2 and passlen < 5 then
		pass = pass .. "1"
		passlen = passlen + 1
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("1")
	elseif x == 4 and y == 2 and passlen < 5 then
		pass = pass .. "2"
		passlen = passlen + 1
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("2")
	elseif x == 6 and y == 2 and passlen < 5 then
		pass = pass .. "3"
		passlen = passlen + 1
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("3")
	--Line 3
	elseif x == 2 and y == 3 and passlen < 5 then
		pass = pass .. "4"
		passlen = passlen + 1
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("4")
	elseif x == 4 and y == 3 and passlen < 5 then
		pass = pass .. "5"
		passlen = passlen + 1
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("5")
	elseif x == 6 and y == 3 and passlen < 5 then
		pass = pass .. "6"
		passlen = passlen + 1
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("6")
	--Line 4
	elseif x == 2 and y == 4 and passlen < 5 then
		pass = pass .. "7"
		passlen = passlen + 1
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("7")
	elseif x == 4 and y == 4 and passlen < 5 then
		pass = pass .. "8"
		passlen = passlen + 1
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("8")
	elseif x == 6 and y == 4 and passlen < 5 then
		pass = pass .. "9"
		passlen = passlen + 1
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("9")
	--Line 5
	elseif x == 2 and y == 5 then
		pass = ""
		passlen = 0
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("C")
	elseif x == 4 and y == 5 and passlen < 5 then
		pass = pass .. "0"
		passlen = passlen + 1
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("0")
	elseif x == 6 and y == 5 then
		monitor.setBackgroundColor(colors.gray)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("E")
		sleep(0.2)
		monitor.setBackgroundColor(colors.white)
		monitor.setTextColor(colors.black)
		monitor.setCursorPos(x, y)
		monitor.write("E")
		password = settings.get("Secureety.password")
		print(pass, password)
		if pass == password then
			pass = ""
			passlen = 0
			monitor.setCursorPos(2, 1)
			monitor.setBackgroundColor(colors.green)
			monitor.setTextColor(colors.green)
			monitor.write("-----")
			settings.load("settings.cfg")
			local time = settings.get("Secureety.openedTime")
			redstone.setAnalogOutput("right", 15)
			local timerID = os.startTimer(tonumber(time))
			while true do
				local event, id, x, y = os.pullEvent()
				if event == "timer" and id == timerID then
					redstone.setAnalogOutput("right", 0)
					break
				elseif event == "monitor_touch" and (x == 2 and y == 5) then
					monitor.setCursorPos(2, 1)
					monitor.setBackgroundColor(colors.yellow)
					monitor.setTextColor(colors.yellow)
					monitor.write("-----")
					term.setCursorPos(1, 1)
					term.write("Enter new password: ")
					local password = read()
					settings.load("settings.cfg")
					settings.set("Secureety.password", password)
					settings.save("settings.cfg")
					redstone.setAnalogOutput("right", 0)
					break
				end
			end
		else
			pass = ""
			passlen = 0
			monitor.setCursorPos(2, 1)
			monitor.setBackgroundColor(colors.red)
			monitor.setTextColor(colors.red)
			monitor.write("-----")
			settings.load("settings.cfg")
			local time = settings.get("Secureety.openedTime")
			redstone.setAnalogOutput("left", 15)
			sleep(tonumber(time))
			redstone.setAnalogOutput("left", 0)
		end
	else
		--
	end
end