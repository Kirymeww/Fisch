local uilibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiet1308/tvkhub/main/rac"))()
local windowz = uilibrary:CreateWindow("UI Library", "Game Name", true)

local Page1 = windowz:CreatePage("Page I")
local Section1 = Page1:CreateSection("Section Name")

-- Создание слайдера
Section1:CreateSlider("Slider Example", { Min = 16, Max = 500, DefaultValue = 30 }, function(Value)
    print(Value)
end)

-- Создание тумблера
Section1:CreateToggle("Toggle Example", { Toggled = false, Description = false }, function(Value)
    print(Value)
end)

-- Создание кнопки
Section1:CreateButton("Button Example", function()
    print("Button Clicked!")
end)

-- Создание текстового поля
Section1:CreateTextbox("TextBox", false, function(vv)
    print(vv)
end)

-- Создание выпадающего списка
Section1:CreateDropdown("Dropdown", {
    List = { "Value1", "Value2", "Value3", "Value4" },
    Default = "None"
}, function(value)
    print(value)
end)

-- Создание выбора цвета
Section1:CreateColorPicker("Color Picker", Color3.fromRGB(255, 255, 255), function()
    print("Color picked")
end)

-- Создание второго выпадающего списка
local dropdown = Section1:CreateDropdown("Refresh Dropdown", {
    List = { "Value1", "Value2", "Value3", "Value4" },
    Default = "None"
}, function(value)
    print(value)
end)

-- Кнопка для обновления списка
Section1:CreateButton("Refresh Example", function()
    local newlist = { "resf", "uwua", "fsk" }
    dropdown:Clear()
    wait(1)
    dropdown:Add(newlist)
end)
