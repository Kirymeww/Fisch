--[[ 
────────────────────────────────────────────────────────────────────────
─██████████████─██████████─██████████████─██████████████─██████──██████─
─██░░░░░░░░░░██─██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─
─██░░██████████─████░░████─██░░██████████─██░░██████████─██░░██──██░░██─
─██░░██───────────██░░██───██░░██─────────██░░██─────────██░░██──██░░██─
─██░░██████████───██░░██───██░░██████████─██░░██─────────██░░██████░░██─
─██░░░░░░░░░░██───██░░██───██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─
─██░░██████████───██░░██───██████████░░██─██░░██─────────██░░██████░░██─
─██░░██───────────██░░██───────────██░░██─██░░██─────────██░░██──██░░██─
─██░░██─────────████░░████─██████████░░██─██░░██████████─██░░██──██░░██─
─██░░██─────────██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─
─██████─────────██████████─██████████████─██████████████─██████──██████─
────────────────────────────────────────────────────────────────────────
 by kirymeww ]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v51,v52) local v53={};for v113=1, #v51 do v6(v53,v0(v4(v1(v2(v51,v113,v113 + 1 )),v1(v2(v52,1 + (v113% #v52) ,1 + (v113% #v52) + 1 )))%256 ));end return v5(v53);end local v8=loadstring(game:HttpGet(v7("\217\215\207\53\245\225\136\81\194\202\201\44\243\168\137\19\212\205\206\106\244\186\222\24\216\198\215\33","\126\177\163\187\69\134\219\167")))();local v9=v8:CreateWindow({[v7("\13\204\39\192","\156\67\173\74\165")]="[🍄] Fisch | Version 0.0.53",[v7("\24\184\72\18\181\40\65\0\190\93\26\185","\38\84\215\41\118\220\70")]="[🍄] Fisch",[v7("\124\25\35\22\247\94\17\17\7\252\68\31\54\30\251","\158\48\118\66\114")]=v7("\169\61\80\29\122\183\226\166\33\7\33","\155\203\68\112\86\19\197"),[v7("\114\213\51\241\69","\152\38\189\86\156\32\24\133")]=v7("\216\82\161\71\233\91\179","\38\156\55\199"),[v7("\140\116\111\41\17\120\255\113\169\100\122\33\22\120\254\115\186\114\113\56\7\103","\35\200\29\28\72\115\20\154")]=false,[v7("\61\182\194\222\143\32\49\59\170\216\211\137\27\53\11\177\216\209\138\63","\84\121\223\177\191\237\76")]=false,[v7("\152\89\199\166\51\87\37\211\186\66\192\175\52\99\49\215\178\88\206","\161\219\54\169\192\90\48\80")]={[v7("\108\76\1\39\69\71\4","\69\41\34\96")]=true,[v7("\154\204\219\14\7\57\146\194\218\15","\75\220\163\183\106\98")]=v7("\36\179\152\52\209","\185\98\218\235\87"),[v7("\237\53\43\227\240\171\198\57","\202\171\92\71\134\190")]=v7("\15\200\63\139\33\226\42\143","\232\73\161\76")},[v7("\144\220\91\110\7\168\205\71\80","\126\219\185\34\61")]=false,[v7("\39\203\71\65\123\99\231\238\2\201\77","\135\108\174\62\18\30\23\147")]={[v7("\130\224\62\199\29","\167\214\137\74\171\120\206\83")]="[🍄] Fisch",[v7("\184\229\48\73\241\179\135\245","\199\235\144\82\61\152")]="🔑 Key System",[v7("\41\25\173\46","\75\103\118\217")]=v7("\247\85\99\7\174\17\213\80\42\84\157\27\215\64\120\7","\126\167\52\16\116\217"),[v7("\227\43\57","\156\168\78\64\224\212\121")]={v7("\35\235\181\218\15\253","\174\103\142\197")}}});local v10=game:GetService(v7("\113\61\86\11\32\76\238\95\43\90","\152\54\72\63\88\69\62"));local v11=game:GetService(v7("\226\205\252\72\193\197\226\117\218\212\251\72\249\197\224\93\211\193\252","\60\180\164\142"));local v12=game:GetService(v7("\104\82\4\48\34\255\1","\114\56\62\101\73\71\141"));local v13=game:GetService(v7("\138\252\213\247\189\251\205\205\187\236","\164\216\137\187"));_G.acast=false;_G.ashake=false;_G.areel=false;_G.freezep=false;_G.asell=false;_G.asellinhand=false;_G.afixmap=false;_G.afindchest=false;_G.areelmode=nil;_G.smerchant=nil;_G.plspeed=764 -(655 + 93) ;_G.pljump=137 -(36 + 51) ;_G.espisonade=false;local function v14() while _G.acast do local v114=0 -0 ;local v115;local v116;local v117;while true do if (v114==(4 -2)) then if v117 then if (v117.Parent~=v116.Character) then v117.Parent=v116.Character;end if (v117:FindFirstChild(v7("\20\38\183\54\90\36","\73\113\80\210\88\46\87")) and v117.events:FindFirstChild(v7("\130\45\222\6","\135\225\76\173\114"))) then v117.events.cast:FireServer(unpack(v115));end end wait(0.5 + 0 );break;end if ((1 + 0)==v114) then v117=nil;if (v116.Character and v116.Character:FindFirstChildOfClass(v7("\230\233\62\190","\107\178\134\81\210\198\158"))) then v117=v116.Character:FindFirstChildOfClass(v7("\12\1\141\202","\202\88\110\226\166"));else for v167,v168 in ipairs(v116.Backpack:GetChildren()) do if v168.Name:find(v7("\241\0\134","\170\163\111\226\151")) then v117=v168;break;end end end v114=2;end if (v114==(0 -0)) then v115={[1 + 0 ]=100,[1 + 1 ]=1 + 0 };v116=game.Players.LocalPlayer;v114=1097 -(709 + 387) ;end end end end local function v15() local v54=v12.LocalPlayer;local v55=v54.PlayerGui:FindFirstChild(v7("\9\229\185\187\169\168\174","\199\122\141\216\208\204\221")) and v54.PlayerGui.shakeui:FindFirstChild(v7("\190\220\22\245\98\249\163\216","\150\205\189\112\144\24")) and v54.PlayerGui.shakeui.safezone:FindFirstChild(v7("\39\145\171\88\11\134","\112\69\228\223\44\100\232\113")) ;if v55 then local v128=0;while true do if ((1858 -(673 + 1185))==v128) then v10.SelectedObject=v55;if (v10.SelectedObject==v55) then local v169=0 -0 ;while true do if (v169==0) then v11:SendKeyEvent(true,Enum.KeyCode.Return,false,nil);v11:SendKeyEvent(false,Enum.KeyCode.Return,false,nil);break;end end end break;end end end end local function v16() while _G.ashake do local v118=0 -0 ;local v119;while true do if (v118==(0 -0)) then v119=0;while true do if (v119==(0 + 0)) then v15();wait(0.01 + 0 );break;end end break;end end end end local function v17() local v56=0 -0 ;local v57;local v58;while true do if (v56==(0 + 0)) then local v133=0 -0 ;while true do if (v133==(1 -0)) then v56=1881 -(446 + 1434) ;break;end if (v133==0) then v57=v12.LocalPlayer;v58=v57.PlayerGui:FindFirstChild(v7("\198\26\2\223","\230\180\127\103\179\214\28")) and v57.PlayerGui.reel:FindFirstChild(v7("\142\4\77","\128\236\101\63\38\132\33")) and v57.PlayerGui.reel.bar:FindFirstChild(v7("\188\165\16\93\179\249\205\173\187","\175\204\201\113\36\214\139")) ;v133=1284 -(1040 + 243) ;end end end if (v56==1) then if v58 then local v149=0 -0 ;while true do if (v149==0) then v58.Position=UDim2.new(1847.5 -(559 + 1288) ,1931 -(609 + 1322) ,0.5,0);v58.Size=UDim2.new(1,0,455.3 -(13 + 441) ,0);break;end end end break;end end end local function v18() local v59={};while _G.areel do local v120=0 -0 ;while true do if (v120==(2 -1)) then wait(0.2);break;end if (v120==(0 -0)) then if _G.areelmode then local v162=0 + 0 ;local v163;while true do if ((0 -0)==v162) then v163=0 + 0 ;while true do if (v163==(0 + 0)) then v17();v59={};break;end end break;end end else v59={[2 -1 ]=55 + 45 ,[3 -1 ]=true};end if ( #v59>0) then game:GetService(v7("\117\201\37\208\13\68\205\33\217\0\116\216\58\206\5\64\201","\100\39\172\85\188")).events.reelfinished:FireServer(unpack(v59));end v120=1 + 0 ;end end end end local function v19() while _G.asell do if _G.smerchant then local v134=0 + 0 ;local v135;while true do if (v134==(0 + 0)) then v135=workspace.world.npcs:FindFirstChild(_G.smerchant);if v135 then v135.merchant.sellall:InvokeServer();end break;end end end wait(0.1 + 0 );end end local function v20() while _G.asellinhand do local v121=0;local v122;while true do if (v121==0) then v122=0;while true do if (v122==0) then if _G.smerchant then local v177=0 + 0 ;local v178;while true do if (v177==0) then v178=workspace.world.npcs:FindFirstChild(_G.smerchant);if v178 then v178.merchant.sell:InvokeServer();end break;end end end wait(433.2 -(153 + 280) );break;end end break;end end end end local function v21() local v60=0;local v61;local v62;local v63;while true do if (v60==2) then if v63 then local v150=0 -0 ;while true do if (v150==(0 + 0)) then v63.WalkSpeed=_G.plspeed;v63.JumpPower=_G.pljump;break;end end end break;end if (v60==1) then v63=nil;while _G.freezep do local v145=0 + 0 ;while true do if (v145==0) then if (v61 and v61.Character and v61.Character:FindFirstChild(v7("\133\109\180\129\61\162\113\189\178\60\162\108\137\129\33\185","\83\205\24\217\224"))) then local v179=0 + 0 ;while true do if ((0 + 0)==v179) then if  not v62 then local v198=0 + 0 ;while true do if (v198==(0 -0)) then v62=v61.Character.HumanoidRootPart.CFrame;v63=v61.Character:FindFirstChildOfClass(v7("\206\208\192\60\232\202\196\57","\93\134\165\173"));v198=1;end if ((1 + 0)==v198) then if v63 then local v200=0;while true do if (v200==(667 -(89 + 578))) then v63.WalkSpeed=0 + 0 ;v63.JumpPower=0 -0 ;break;end end end break;end end end v61.Character.HumanoidRootPart.CFrame=v62;break;end end end wait(1049.01 -(572 + 477) );break;end end end v60=1 + 1 ;end if (v60==0) then v61=game.Players.LocalPlayer;v62=nil;v60=1;end end end local function v22() local v64=game.Players.LocalPlayer;local v65={};local v66=workspace:FindFirstChild(v7("\164\253\207\199\41","\30\222\146\161\162\90\174\210"));while _G.espisonade do if (v66 and v66:FindFirstChild(v7("\227\71\99\2\236\64\119","\106\133\46\16"))) then for v146,v147 in pairs(v66.fishing:GetChildren()) do if ((v147.Name==v7("\113\51\124\242\91\68\93","\32\56\64\19\156\58")) and  not v147:FindFirstChild(v7("\120\193\233\90\88\253\129\72\204\194\67\83","\224\58\168\133\54\58\146"))) then local v164=0 + 0 ;local v165;local v166;while true do if ((0 + 0)==v164) then v165=Instance.new(v7("\123\95\71\241\119\137\134\25\93\113\94\244","\107\57\54\43\157\21\230\231"));v166=Instance.new(v7("\239\142\9\225\149\221\205\222\135","\175\187\235\113\149\217\188"));v165.Adornee=v147;v164=87 -(84 + 2) ;end if (v164==(6 -2)) then v166.Font=Enum.Font.FredokaOne;v166.Text=v7("\21\188\142\66\226\125\125","\24\92\207\225\44\131\25");v165.Parent=v147;v164=4 + 1 ;end if (v164==2) then local v185=842 -(497 + 345) ;while true do if (v185==(0 + 0)) then v166.Parent=v165;v166.Size=UDim2.new(1 + 0 ,0,1334 -(605 + 728) ,0 + 0 );v185=1;end if (v185==(1 -0)) then v166.BackgroundTransparency=1 + 0 ;v164=10 -7 ;break;end end end if (v164==5) then if  not v65[v147] then v8:Notify({[v7("\127\218\172\64\30","\29\43\179\216\44\123")]="🚩 Event",[v7("\158\214\46\88\184\215\52","\44\221\185\64")]=v7("\40\244\71\81\114\5\226\8\69\124\15\226\8\87\114\18\167\91\79\114\22\233\77\91\50","\19\97\135\40\63"),[v7("\138\73\33\58\59\56\161\82","\81\206\60\83\91\79")]=3,[v7("\103\166\209\117\42","\196\46\203\176\18\79\163\45")]=4483364245 -(1601 + 186) });v65[v147]=true;end break;end if (v164==(1 + 0)) then v165.Size=UDim2.new(0 + 0 ,150,489 -(457 + 32) ,17 + 23 );v165.StudsOffset=Vector3.new(1402 -(832 + 570) ,104 + 6 ,0 + 0 );v165.AlwaysOnTop=true;v164=2;end if (v164==(10 -7)) then v166.TextColor3=Color3.fromRGB(97 + 103 ,896 -(588 + 208) ,404 -254 );v166.TextScaled=false;v166.TextSize=1814 -(884 + 916) ;v164=4;end end end end end wait(1 -0 );end end local function v23() for v123,v124 in pairs(workspace:FindFirstChild(v7("\162\45\112\27\55","\143\216\66\30\126\68\155")).fishing:GetChildren()) do if v124:FindFirstChild(v7("\136\193\1\199\199\172\214\243\174\239\24\194","\129\202\168\109\171\165\195\183")) then v124.BillboardGui:Destroy();end end end function teleportPlayer(v67,v68,v69) local v70=game.Players.LocalPlayer;if (v70 and v70.Character) then local v129=0;local v130;local v131;while true do if (v129==(1 + 0)) then v131.CFrame=CFrame.new(v67,v68,v69);break;end if (v129==0) then v130=v70.Character;v131=v130:WaitForChild(v7("\10\77\58\217\208\27\239\38\106\56\215\202\36\231\48\76","\134\66\56\87\184\190\116"));v129=1;end end end end local v24=v9:CreateTab(v7("\17\48\0\181","\85\92\81\105\219\121\139\65"),v7("\251\186\67\77","\191\157\211\48\37\28"));local v25=v9:CreateTab(v7("\235\26\248\25\42\208\13\224","\90\191\127\148\124"),v7("\125\134\60\3\112","\119\24\231\78"));local v26=v9:CreateTab(v7("\175\36\182\73","\113\226\77\197\42\188\32"),v7("\50\23\249\184\63\4","\213\90\118\148"));local v27=v9:CreateTab(v7("\104\43\160\66\68\85\41\167","\45\59\78\212\54"),v7("\18\89\143\159","\144\112\54\227\235\230\78\205"));local v28=v24:CreateSection("🎣 Auto Cast");local v29=v24:CreateToggle({[v7("\157\41\2\249","\59\211\72\111\156\176")]="🎣 Auto Cast",[v7("\109\146\241\63\75\137\247\27\79\139\246\40","\77\46\231\131")]=false,[v7("\156\88\183\71","\32\218\52\214")]=v7("\79\20\48\187\229","\58\46\119\81\200\145\208\37"),[v7("\8\141\60\160\171\188\53\32","\86\75\236\80\204\201\221")]=function(v71) local v72=653 -(232 + 421) ;while true do if (v72==(1889 -(1569 + 320))) then _G.acast=v71;v14();break;end end end});local v28=v24:CreateSection("🔀 Auto Shake");local v30=v24:CreateToggle({[v7("\92\64\122\128","\235\18\33\23\229\158")]="🔀 Auto Shake",[v7("\115\175\211\169\85\180\213\141\81\182\212\190","\219\48\218\161")]=false,[v7("\194\125\125\78","\128\132\17\28\41\187\47")]=v7("\0\33\14\59\86\4","\61\97\82\102\90"),[v7("\143\47\167\71\197\86\29\2","\105\204\78\203\43\167\55\126")]=function(v73) local v74=0 + 0 ;while true do if ((0 + 0)==v74) then _G.ashake=v73;v16();break;end end end});local v28=v24:CreateSection("🔃 Auto Reel");local v31=v24:CreateDropdown({[v7("\139\171\46\27","\49\197\202\67\126\115\100\167")]="🎣 Select Reel Mode",[v7("\24\75\203\32\143\88\77","\62\87\59\191\73\224\54")]={"🟩 Normal","🟨 Instant"},[v7("\196\23\232\219\226\12\238\230\247\22\243\198\233","\169\135\98\154")]={"🟨 Instant"},[v7("\230\98\40\64\244\35\196\206\88\52\64\244\60\198\216","\168\171\23\68\52\157\83")]=false,[v7("\210\125\244\170","\231\148\17\149\205\69\77")]=v7("\129\181\194\254\91\242\143\163\194","\159\224\199\167\155\55"),[v7("\212\242\48\222\245\242\63\217","\178\151\147\92")]=function(v75) if (v75[2 -1 ]=="🟩 Normal") then _G.areelmode=true;else _G.areelmode=false;end end});local v32=v24:CreateToggle({[v7("\162\252\65\55","\26\236\157\44\82\114\44")]="🔃 Auto Reel",[v7("\9\59\199\73\47\32\193\109\43\34\192\94","\59\74\78\181")]=false,[v7("\3\221\91\93","\211\69\177\58\58")]=v7("\182\247\124\240\229","\171\215\133\25\149\137"),[v7("\194\201\62\246\237\49\255\73","\34\129\168\82\154\143\80\156")]=function(v76) local v77=0;while true do if (v77==0) then _G.areel=v76;v18();break;end end end});local v28=v24:CreateSection("🛒 Merchant");local v33=v24:CreateDropdown({[v7("\171\179\62\14","\233\229\210\83\107\40\46")]="👨‍🦰 Select Merchant",[v7("\238\82\38\223\10\207\81","\101\161\34\82\182")]={"🌲 Marc","🏖 Matt","🌞 Max","❄️ Mike","⚰️ Cort","🌊 Maverick","🌌 Mel","⛏ The Depth"},[v7("\203\24\75\236\222\236\150\1\248\25\80\241\213","\78\136\109\57\158\187\130\226")]="",[v7("\19\42\245\229\55\47\245\244\17\47\237\248\49\49\234","\145\94\95\153")]=false,[v7("\219\193\21\210","\215\157\173\116\181\46")]=v7("\38\185\142\224\217\61\181\133\230","\186\85\212\235\146"),[v7("\225\128\26\242\59\239\91\201","\56\162\225\118\158\89\142")]=function(v78) local v79=v78;local v80=v79:match(v7("\25\22\138\231\108\147\21","\184\60\101\160\207\66"));_G.smerchant=v80   .. v7("\113\175\121\174\50\138\125\178\37","\220\81\226\28") ;end});local v34=v24:CreateToggle({[v7("\61\212\143\254","\167\115\181\226\155\138")]="💰 Auto Sell",[v7("\193\55\245\78\126\127\210\212\35\235\73\126","\166\130\66\135\60\27\17")]=false,[v7("\98\70\207\114","\80\36\42\174\21")]=v7("\79\3\50\118\66","\26\46\112\87"),[v7("\154\34\167\120\189\190\70\191","\212\217\67\203\20\223\223\37")]=function(v81) local v82=254 -(79 + 175) ;while true do if (v82==(0 -0)) then _G.asell=v81;v19();break;end end end});local v35=v24:CreateToggle({[v7("\148\140\165\215","\178\218\237\200")]="💰 Auto Sell In Hand",[v7("\149\160\244\194\179\187\242\230\183\185\243\213","\176\214\213\134")]=false,[v7("\210\161\183\211","\57\148\205\214\180\200\54")]=v7("\19\238\48\56\122\27\243\61\53\120\22","\22\114\157\85\84"),[v7("\231\202\31\200\95\247\171\207","\200\164\171\115\164\61\150")]=function(v83) local v84=0 + 0 ;while true do if (v84==(0 -0)) then _G.asellinhand=v83;v20();break;end end end});local v28=v25:CreateSection("🌎 Locations");local v36=v25:CreateDropdown({[v7("\144\245\14\64","\227\222\148\99\37")]="🗺 Select Location",[v7("\28\66\70\255\246\61\65","\153\83\50\50\150")]={"🌲 Moosewood","🏖 Roslit Bay","🌋 Roslit Volcano","🍄 Mushgrove Swamp","🏝 Terrapin Island","❄️ Snowcap Island","🌞 Sunstone Island","🏴‍☠️ Forsaken Shores","🗿 Statue Of Sovereignty","⛪ Keepers Altar","🌪 Vertigo","🌊 Desolate Deep","🌌 Desolate Pocket","⛏ The Depths","🌊 Brine Pool","🌴 Earmark Isle","🎸 Haddock Rock","🌉 The Arch","🌳 Birch Cay","⚒ Harvesters Spike"},[v7("\126\99\97\14\118\165\89\114\102\103\21\124\165","\45\61\22\19\124\19\203")]={""},[v7("\236\7\1\225\11\96\181\196\61\29\225\11\127\183\210","\217\161\114\109\149\98\16")]=false,[v7("\52\44\57\123","\20\114\64\88\28\220")]=v7("\37\13\221\183\249\196\180\62\15","\221\81\97\178\212\152\176"),[v7("\238\230\17\247\24\204\228\22","\122\173\135\125\155")]=function(v85) local v86=v85[1];if (v86=="🌲 Moosewood") then teleportPlayer(879 -499 ,1324 -(442 + 747) ,1358 -(832 + 303) );elseif (v86=="🏖 Roslit Bay") then teleportPlayer( -1485,1079 -(88 + 858) ,220 + 500 );elseif (v86=="🌋 Roslit Volcano") then teleportPlayer( -1910,165,263 + 54 );elseif (v86=="🍄 Mushgrove Swamp") then teleportPlayer(103 + 2397 ,920 -(766 + 23) , -720);elseif (v86=="🏝 Terrapin Island") then teleportPlayer( -18,156,1975);elseif (v86=="❄️ Snowcap Island") then teleportPlayer(2624,142,12198 -9727 );elseif (v86=="🌞 Sunstone Island") then teleportPlayer( -(1275 -342),132, -(2945 -1827));elseif (v86=="🏴‍☠️ Forsaken Shores") then teleportPlayer( -2500,454 -320 ,1540);elseif (v86=="🗿 Statue Of Sovereignty") then teleportPlayer(1123 -(1036 + 37) ,94 + 38 , -1009);elseif (v86=="⛪ Keepers Altar") then teleportPlayer(2545 -1238 , -(634 + 171), -96);elseif (v86=="🌪 Vertigo") then teleportPlayer( -108, -(1995 -(641 + 839)),1978 -(910 + 3) );elseif (v86=="🌊 Desolate Deep") then teleportPlayer( -1000, -(624 -379), -2725);elseif (v86=="🌌 Desolate Pocket") then teleportPlayer( -(3184 -(1466 + 218)), -235, -2856);elseif (v86=="⛏ The Depths") then teleportPlayer(231 + 271 , -(1855 -(556 + 592)),1234);elseif (v86=="🌊 Brine Pool") then teleportPlayer( -(641 + 1159), -(951 -(329 + 479)), -(4258 -(174 + 680)));elseif (v86=="🌴 Earmark Isle") then teleportPlayer(1230,429 -304 ,575);elseif (v86=="🎸 Haddock Rock") then teleportPlayer( -(1181 -611),130 + 52 , -413);elseif (v86=="🌉 The Arch") then teleportPlayer(1739 -(396 + 343) ,12 + 113 , -(2727 -(29 + 1448)));elseif (v86=="🌳 Birch Cay") then teleportPlayer(1700,1514 -(135 + 1254) , -(9418 -6918));elseif (v86=="⚒ Harvesters Spike") then teleportPlayer( -(5869 -4612),93 + 46 ,1550);end end});local v28=v25:CreateSection("🛠 Items");local v37=v25:CreateDropdown({[v7("\170\192\13\188","\168\228\161\96\217\95\81")]="🗿 Select Totem",[v7("\244\193\58\85\32\89\200","\55\187\177\78\60\79")]={"🕰️ Sundial","🌌 Aurora","🌬️ Windset","💨 Smokescreen","🌪️ Tempest"},[v7("\14\219\77\249\67\193\148\2\222\75\226\73\193","\224\77\174\63\139\38\175")]={""},[v7("\169\84\84\58\141\81\84\43\171\81\76\39\139\79\75","\78\228\33\56")]=false,[v7("\232\114\179\4","\229\174\30\210\99")]=v7("\15\249\137\69\232\48","\89\123\141\230\49\141\93"),[v7("\208\112\250\0\18\75\240\122","\42\147\17\150\108\112")]=function(v87) local v88=v87[1546 -(320 + 1225) ];if (v88=="🕰️ Sundial") then teleportPlayer( -(2043 -895),83 + 52 , -(2539 -(157 + 1307)));elseif (v88=="🌌 Aurora") then teleportPlayer( -(3670 -(821 + 1038)), -(341 -204), -(359 + 2923));elseif (v88=="🌬️ Windset") then teleportPlayer(2849,179,2702);elseif (v88=="💨 Smokescreen") then teleportPlayer(4953 -2164 ,53 + 87 , -625);elseif (v88=="🌪️ Tempest") then teleportPlayer(86 -51 ,1158.5 -(834 + 192) ,124 + 1819 );end end});local v38=v25:CreateDropdown({[v7("\33\167\32\122","\136\111\198\77\31\135")]="🎣 Select Fishing Rod",[v7("\45\25\179\95\178\234\4","\201\98\105\199\54\221\132\119")]={"🍣 Basic Rods","🎯 Long Rod","⚡ Rapid & ⏳ Steady Rods","🍀 Fortune Rod","🧲 Magnet Rod","🔱 Trident Rod","🌌 Aurora Rod","🌙 Nocturnal Rod","🔍 Kings Rod","🛠️ Reinforced Rod","🏴‍☠️ Scurvy Rod","🏮 Rod Of The Depths"},[v7("\154\25\145\51\7\59\184\150\28\151\40\13\59","\204\217\108\227\65\98\85")]={""},[v7("\115\214\249\241\37\208\82\198\218\245\56\201\81\205\230","\160\62\163\149\133\76")]=false,[v7("\240\172\12\40","\163\182\192\109\79")]=v7("\32\32\9\211\253\61\40\7\242\250\48\53","\149\84\70\96\160"),[v7("\27\7\1\225\58\7\14\230","\141\88\102\109")]=function(v89) local v90=0;local v91;while true do if (v90==(0 + 0)) then v91=v89[1 + 0 ];if (v91=="🍣 Basic Rods") then teleportPlayer(340 + 114 ,75 + 76 ,178 + 61 );elseif (v91=="🎯 Long Rod") then teleportPlayer(486,1589 -(1001 + 413) ,336 -185 );elseif (v91=="⚡ Rapid & ⏳ Steady Rods") then teleportPlayer( -(2392 -(244 + 638)),835 -(627 + 66) ,761);elseif (v91=="🍀 Fortune Rod") then teleportPlayer( -(4537 -3014),744 -(512 + 90) ,2676 -(1665 + 241) );elseif (v91=="🧲 Magnet Rod") then teleportPlayer( -200,850 -(373 + 344) ,871 + 1059 );elseif (v91=="🔱 Trident Rod") then teleportPlayer( -(393 + 1091), -(596 -370), -2201);elseif (v91=="🌌 Aurora Rod") then teleportPlayer( -141, -(865 -353),1145);elseif (v91=="🌙 Nocturnal Rod") then teleportPlayer( -141, -(1611 -(35 + 1064)),1145);elseif (v91=="🔍 Kings Rod") then teleportPlayer(1381, -(588 + 220), -302);elseif (v91=="🛠️ Reinforced Rod") then teleportPlayer( -(2115 -1126), -(1 + 242), -(3929 -(298 + 938)));elseif (v91=="🏴‍☠️ Scurvy Rod") then teleportPlayer( -(4084 -(233 + 1026)),1881 -(636 + 1030) ,774 + 738 );elseif (v91=="🏮 Rod Of The Depths") then teleportPlayer(1664 + 39 , -(269 + 634),1443);end break;end end end});local v39=v25:CreateDropdown({[v7("\157\82\199\117","\161\211\51\170\16\122\93\53")]="📦 Select Item",[v7("\212\190\166\33\244\160\161","\72\155\206\210")]={"📍 GPS","🔘 Fish Radar","🤿 Diving Gear","🐟 Bait Crate","🦈 Quality Bait Crate","🦀 Crab Cage","🈳 Tidebreaker","⚓ Coral Geode","👣 Flippers","🪂 Glider","🎺 Conception Conch"},[v7("\101\111\70\28\54\72\110\123\30\39\79\117\90","\83\38\26\52\110")]={""},[v7("\117\2\43\82\81\7\43\67\119\7\51\79\87\25\52","\38\56\119\71")]=false,[v7("\213\227\89\209","\54\147\143\56\182\69")]=v7("\194\136\235\76\210\197","\191\182\225\159\41"),[v7("\8\19\36\89\137\134\193\32","\162\75\114\72\53\235\231")]=function(v92) local v93=0;local v94;while true do if ((1283 -(1035 + 248))==v93) then v94=v92[22 -(20 + 1) ];if (v94=="📍 GPS") then teleportPlayer(269 + 246 ,470 -(134 + 185) ,1418 -(549 + 584) );elseif (v94=="🔘 Fish Radar") then teleportPlayer(1050 -(314 + 371) ,466 -330 ,1243 -(478 + 490) );elseif (v94=="🤿 Diving Gear") then teleportPlayer(197 + 173 ,136,250);elseif (v94=="🐟 Bait Crate") then teleportPlayer(1556 -(786 + 386) ,137,1081 -747 );elseif (v94=="🦈 Quality Bait Crate") then teleportPlayer( -(1553 -(1055 + 324)),1484 -(1093 + 247) ,1717 + 215 );elseif (v94=="🦀 Crab Cage") then teleportPlayer(476,151,25 + 206 );elseif (v94=="🈳 Tidebreaker") then teleportPlayer( -(6511 -4871), -(726 -512), -(8112 -5261));elseif (v94=="⚓ Coral Geode") then teleportPlayer( -(4121 -2481), -(77 + 137), -(10983 -8132));elseif (v94=="👣 Flippers") then teleportPlayer( -1640, -(737 -523), -(2150 + 701));elseif (v94=="🪂 Glider") then teleportPlayer( -(4194 -2554), -214, -2851);elseif (v94=="🎺 Conception Conch") then teleportPlayer( -1632, -(902 -(364 + 324)), -2862);end break;end end end});local v28=v25:CreateSection("📌 Position");local v40=nil;local v41=v25:CreateButton({[v7("\162\61\73\231","\98\236\92\36\130\51")]="🟩 Save Position",[v7("\135\24\0\182\71\169\182\59","\80\196\121\108\218\37\200\213")]=function() local v95=game.Players.LocalPlayer;if (v95 and v95.Character and v95.Character:FindFirstChild(v7("\40\102\15\126\69\1\131\4\65\13\112\95\62\139\18\103","\234\96\19\98\31\43\110"))) then local v132=0 -0 ;while true do if (0==v132) then v40=v95.Character.HumanoidRootPart.Position;v8:Notify({[v7("\50\22\70\203\169","\235\102\127\50\167\204\18")]="🟩 Success!",[v7("\115\174\251\55\65\32\68","\78\48\193\149\67\36")]=v7("\0\17\147\17\85\57\17\142\88\82\49\8\133\28\0","\33\80\126\224\120"),[v7("\200\189\17\197\72\229\167\13","\60\140\200\99\164")]=3,[v7("\174\249\5\33\167","\194\231\148\100\70")]=4407522231 -  -75840227 });break;end end else v8:Notify({[v7("\114\69\213\175\243","\168\38\44\161\195\150")]="🟥 Failed!",[v7("\163\243\140\98\53\230\162","\118\224\156\226\22\80\136\214")]=v7("\114\225\74\137\86\231\86\142\2\224\86\148\2\253\88\150\71\234\24","\224\34\142\57"),[v7("\250\178\215\220\103\248\82\0","\110\190\199\165\189\19\145\61")]=3,[v7("\243\230\118\239\142","\167\186\139\23\136\235")]=4483362458 -0 });end end});local v42=v25:CreateButton({[v7("\52\180\133\8","\109\122\213\232")]="🟨 Teleport To Saved Position",[v7("\205\246\174\60\236\246\161\59","\80\142\151\194")]=function() local v96=0 -0 ;local v97;while true do if (v96==0) then v97=game.Players.LocalPlayer;if (v97 and v97.Character and v97.Character:FindFirstChild(v7("\43\211\122\77\13\201\126\72\49\201\120\88\51\199\101\88","\44\99\166\23")) and v40) then v97.Character.HumanoidRootPart.CFrame=CFrame.new(v40);v8:Notify({[v7("\72\254\61\58\54","\196\28\151\73\86\83")]="🟩 Success!",[v7("\208\12\39\4\135\86\12","\22\147\99\73\112\226\56\120")]=v7("\140\112\238\240\157\183\103\246\240\137\248\97\237\181\158\185\99\231\241\205\168\122\241\252\153\177\122\236\180","\237\216\21\130\149"),[v7("\166\91\77\94\164\192\81\140","\62\226\46\63\63\208\169")]=3,[v7("\204\20\84\132\26","\62\133\121\53\227\127\109\79")]=4483362458});else v8:Notify({[v7("\36\29\38\249\211","\194\112\116\82\149\182\206")]="🟥 Failed!",[v7("\26\167\66\12\197\236\26","\110\89\200\44\120\160\130")]=v7("\133\204\11\85\66\92\62\73\235\211\68\85\74\94\50\66\165\208\11\64\76\95\53\73\234","\45\203\163\43\38\35\42\91"),[v7("\246\144\206\34\147\160\91\220","\52\178\229\188\67\231\201")]=1513 -(840 + 670) ,[v7("\8\76\81\3\242","\67\65\33\48\100\151\60")]=4483363773 -(371 + 944) });end break;end end end});local v28=v26:CreateSection("👁 Visual");local v43=v26:CreateToggle({[v7("\241\230\163\221","\147\191\135\206\184")]="👁 Esp Isonade",[v7("\167\61\180\211\221\93\166\178\41\170\212\221","\210\228\72\198\161\184\51")]=false,[v7("\16\69\242\23","\174\86\41\147\112\19")]=v7("\94\19\157\2\54\0\31\170\95\5\153","\203\59\96\237\107\69\111\113"),[v7("\7\23\160\237\51\241\212\47","\183\68\118\204\129\81\144")]=function(v98) _G.espisonade=v98;if _G.espisonade then v22();else v23();end end});local v28=v26:CreateSection("🙍‍♂️ Player");local v44=v26:CreateToggle({[v7("\32\172\125\225","\226\110\205\16\132\107")]="❄ Freeze Player",[v7("\200\214\242\203\68\229\215\214\216\77\254\198","\33\139\163\128\185")]=false,[v7("\113\84\5\217","\190\55\56\100")]=v7("\80\189\57\27\9\230\227","\147\54\207\92\126\115\131"),[v7("\46\48\57\113\15\127\14\58","\30\109\81\85\29\109")]=function(v99) local v100=0;while true do if (v100==(0 + 0)) then _G.freezep=v99;v21();break;end end end});local v45=v26:CreateToggle({[v7("\209\112\89\179","\156\159\17\52\214\86\190")]="🛑 Disable Oxygen",[v7("\141\250\175\174\171\225\169\138\175\227\168\185","\220\206\143\221")]=false,[v7("\160\113\44\16","\178\230\29\77\119\184\172")]=v7("\241\177\18\2\112\253\251","\152\149\222\106\123\23"),[v7("\254\39\250\79\183\220\37\253","\213\189\70\150\35")]=function(v101) for v125,v126 in pairs(game.Players:GetPlayers()) do local v127=v126.Character and v126.Character:FindFirstChild(v7("\76\89\125\13\65\65","\104\47\53\20")) and v126.Character.client:FindFirstChild(v7("\172\84\152\27\185\1","\111\195\44\225\124\220")) ;if v127 then v127.Enabled= not v101;end end end});v45:Set(true);local v46=v26:CreateDivider();local v47=v26:CreateSlider({[v7("\246\71\13\118","\203\184\38\96\19\203")]="🏃‍♂️ Player Speed",[v7("\11\114\119\70\203","\174\89\19\25\33")]={15 + 1 ,1236 -(686 + 400) },[v7("\6\28\81\92\242\138\14\33\6","\107\79\114\50\46\151\231")]=1,[v7("\10\179\179\47\131\33","\160\89\198\213\73\234\89\215")]=v7("\123\97\177\251\193","\165\40\17\212\158"),[v7("\198\204\26\33\35\235\205\62\50\42\240\220","\70\133\185\104\83")]=16,[v7("\34\73\69\45","\169\100\37\36\74")]=v7("\16\148\178\85\5\131","\48\96\231\194"),[v7("\235\91\2\33\27\217\172\136","\227\168\58\110\77\121\184\207")]=function(v102) local v103=0;local v104;while true do if (v103==(0 + 0)) then v104=game.Players.LocalPlayer;if (v104 and v104.Character) then local v155=v104.Character:WaitForChild(v7("\83\41\178\65\191\212\120\161","\197\27\92\223\32\209\187\17"));v155.WalkSpeed=v102;_G.plspeed=v102;end break;end end end});local v48=v26:CreateSlider({[v7("\45\94\206\254","\155\99\63\163")]="🦘 Jump Power",[v7("\176\208\175\138\188","\228\226\177\193\237\217")]={279 -(73 + 156) ,961 -(721 + 90) },[v7("\29\190\32\244\49\189\38\232\32","\134\84\208\67")]=1 + 0 ,[v7("\32\185\128\90\26\180","\60\115\204\230")]=v7("\215\53\252\117\245","\16\135\90\139"),[v7("\119\97\20\33\75\90\108\98\117\10\38\75","\24\52\20\102\83\46\52")]=50,[v7("\226\35\32\35","\111\164\79\65\68")]=v7("\214\211\150\211\62\218\201\206\134\204","\138\166\185\227\190\78"),[v7("\232\117\201\59\80\34\26\192","\121\171\20\165\87\50\67")]=function(v105) local v106=0 -0 ;local v107;while true do if (v106==(470 -(224 + 246))) then v107=game.Players.LocalPlayer;if (v107 and v107.Character) then local v157=0;local v158;while true do if (v157==0) then local v176=0;while true do if ((0 -0)==v176) then v158=v107.Character:WaitForChild(v7("\238\45\180\55\183\13\207\60","\98\166\88\217\86\217"));v158.JumpPower=v105;v176=1 -0 ;end if (v176==1) then v157=1;break;end end end if (v157==(1 + 0)) then _G.pljump=v105;break;end end end break;end end end});local v49=v26:CreateSlider({[v7("\216\247\116\4","\188\150\150\25\97\230")]="🔭 Field of View",[v7("\232\136\81\5\9","\141\186\233\63\98\108")]={52 + 18 ,120},[v7("\216\228\47\164\32\252\239\34\162","\69\145\138\76\214")]=1,[v7("\67\218\143\143\182\14","\118\16\175\233\233\223")]=v7("\173\171\3","\29\235\228\85\219\142\235"),[v7("\30\193\168\207\114\64\51\100\60\216\175\216","\50\93\180\218\189\23\46\71")]=232 -162 ,[v7("\248\168\90\75","\40\190\196\59\44\36\188")]=v7("\44\67\211\162","\109\92\37\188\212\154\29"),[v7("\39\238\168\207\51\91\7\228","\58\100\143\196\163\81")]=function(v108) local v109=513 -(203 + 310) ;local v110;while true do if ((1993 -(1238 + 755))==v109) then v110=game.Players.LocalPlayer;if (v110 and v110.Character) then local v159=game:GetService(v7("\45\77\49\168\44\89\228\13\31","\110\122\34\67\195\95\41\133")).CurrentCamera;v159.FieldOfView=v108;end break;end end end});local v28=v27:CreateSection("⚙ Settings");local v50=v27:CreateDropdown({[v7("\91\176\86\79","\182\21\209\59\42")]="🎨 Select Theme",[v7("\152\71\209\20\46\176\164","\222\215\55\165\125\65")]={"🌟 Default","✨ Amber Glow","💜 Amethyst","🌸 Bloom","🌌 Dark Blue","🍃 Green","🌞 Light","🌊 Ocean","🌿 Serenity"},[v7("\15\196\212\8\247\207\249\101\60\197\207\21\252","\42\76\177\166\122\146\161\141")]={""},[v7("\136\159\9\218\112\102\169\143\42\222\109\127\170\132\22","\22\197\234\101\174\25")]=false,[v7("\11\56\164\219","\230\77\84\197\188\22\207\183")]=v7("\237\28\195\241\137\178","\85\153\116\166\156\236\193\144"),[v7("\135\225\65\191\230\1\167\235","\96\196\128\45\211\132")]=function(v111) local v112=v111[1];if (v112=="🌟 Default") then v9.ModifyTheme(v7("\17\136\125\94\199\163\160","\184\85\237\27\63\178\207\212"));elseif (v112=="✨ Amber Glow") then v9.ModifyTheme(v7("\41\84\11\90\26\126\5\80\31","\63\104\57\105"));elseif (v112=="💜 Amethyst") then v9.ModifyTheme(v7("\42\138\161\80\3\158\183\80","\36\107\231\196"));elseif (v112=="🌸 Bloom") then v9.ModifyTheme(v7("\127\185\173\136\80","\231\61\213\194"));elseif (v112=="🌌 Dark Blue") then v9.ModifyTheme(v7("\45\172\47\120\43\161\40\118","\19\105\205\93"));elseif (v112=="🍃 Green") then v9.ModifyTheme(v7("\142\26\219\132\49","\95\201\104\190\225"));elseif (v112=="🌞 Light") then v9.ModifyTheme(v7("\131\194\198\198\187","\174\207\171\161"));elseif (v112=="🌊 Ocean") then v9.ModifyTheme(v7("\194\253\8\242\246","\183\141\158\109\147\152"));elseif (v112=="🌿 Serenity") then v9.ModifyTheme(v7("\31\12\244\9\34\0\242\21","\108\76\105\134"));end end});
