--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v45, v46)
	local FlatIdent_58C0A = 0;
	local v47;
	while true do
		if (FlatIdent_58C0A == 0) then
			v47 = {};
			for v174 = 1, #v45 do
				v6(v47, v0(v4(v1(v2(v45, v174, v174 + 1)), v1(v2(v46, 1 + (v174 % #v46), 1 + (v174 % #v46) + 1))) % 256));
			end
			FlatIdent_58C0A = 1;
		end
		if (FlatIdent_58C0A == 1) then
			return v5(v47);
		end
	end
end
local v8 = game:GetService(v7("\225\207\218\60\227\169\212", "\126\177\163\187\69\134\219\167"));
local v9 = game:GetService(v7("\17\216\36\246\249\49\219\35\198\249", "\156\67\173\74\165"));
local v10 = game:GetService(v7("\1\164\76\4\149\40\86\33\163\122\19\174\48\79\55\178", "\38\84\215\41\118\220\70"));
local v11 = game:GetService(v7("\100\1\39\23\240\99\19\48\4\247\83\19", "\158\48\118\66\114"));
local v12 = v8.LocalPlayer;
local v13 = workspace.CurrentCamera;
local v14 = {[v7("\134\33\30\35\88\160\226", "\155\203\68\112\86\19\197")]=Enum.KeyCode.Insert,[v7("\114\213\51\241\69", "\152\38\189\86\156\32\24\133")]=v7("\216\82\161\71\233\91\179", "\38\156\55\199"),[v7("\133\120\114\61\37\125\233\74\170\113\121", "\35\200\29\28\72\115\20\154")]=true,[v7("\56\182\220\221\130\56\17\23\190\211\211\136\40", "\84\121\223\177\191\237\76")]=false,[v7("\154\95\196\162\53\68\22\238\141", "\161\219\54\169\192\90\48\80")]=(537 - (371 + 16)),[v7("\104\75\13\39\70\86\51\53\76\71\4", "\69\41\34\96")]=(1750.5 - (1326 + 424)),[v7("\157\202\218\8\13\63\158\204\217\15", "\75\220\163\183\106\98")]=v7("\42\191\138\51", "\185\98\218\235\87"),[v7("\234\53\42\228\209\190\255\57\38\235\253\162\206\63\44", "\202\171\92\71\134\190")]=true,[v7("\26\201\35\159\15\238\26", "\232\73\161\76")]=false,[v7("\136\208\78\88\16\175\248\75\80", "\126\219\185\34\61")]=false,[v7("\41\253\110\87\112\118\241\235\9\202", "\135\108\174\62\18\30\23\147")]=false,[v7("\148\230\50\238\43\158", "\167\214\137\74\171\120\206\83")]=false,[v7("\165\241\63\88\221\148\187", "\199\235\144\82\61\152")]=false,[v7("\47\19\184\39\19\30\156\24\55", "\75\103\118\217")]=false,[v7("\244\95\117\24\188\10\200\90\85\39\137", "\126\167\52\16\116\217")]=false,[v7("\237\29\16\163\187\21\243\218", "\156\168\78\64\224\212\121")]=Color3.fromRGB(1848 - (1000 + 848), 931 - 676, 1903 - (1125 + 523)),[v7("\52\254\160\203\3\198\164\205\12", "\174\103\142\197")]=false,[v7("\101\56\90\61\33\104\249\90\61\90", "\152\54\72\63\88\69\62")]=(218 - (88 + 30)),[v7("\250\203\237\80\221\212", "\60\180\164\142")]=false};
local v15 = {[v7("\124\91\3\40\50\225\6", "\114\56\62\101\73\71\141")]={[v7("\149\232\210\202", "\164\216\137\187")]=Color3.fromRGB(20, 5 + 15, 2 + 23),[v7("\225\239\53\183\164\255\25", "\107\178\134\81\210\198\158")]=Color3.fromRGB(33 - 18, 1 + 14, 1617 - (978 + 619)),[v7("\25\13\129\195\164\44", "\202\88\110\226\166")]=Color3.fromRGB(1354 - (243 + 1111), 183 + 17, 413 - (91 + 67))},[v7("\245\14\143\231\195\209\10", "\170\163\111\226\151")]={[v7("\60\49\187\54", "\73\113\80\210\88\46\87")]=Color3.fromRGB(59 - 39, 3 + 7, 10),[v7("\178\37\201\23\229\128\62", "\135\225\76\173\114")]=Color3.fromRGB(454 - (397 + 42), 528 - (423 + 100), 1 + 4),[v7("\59\238\187\181\162\169", "\199\122\141\216\208\204\221")]=Color3.fromRGB(705 - 450, 77 - 27, 27 + 23)},[v7("\136\208\21\226\121\250\169", "\150\205\189\112\144\24")]={[v7("\8\133\182\66", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(781 - (326 + 445), 87 - 67, 15),[v7("\231\22\3\214\180\125\148", "\230\180\127\103\179\214\28")]=Color3.fromRGB(11 - 6, 11 + 4, 200 - (23 + 167)),[v7("\173\6\92\67\234\85", "\128\236\101\63\38\132\33")]=Color3.fromRGB(1848 - (690 + 1108), 567 - 312, 83 + 17)},[v7("\129\160\21\74\191\236\199\184", "\175\204\201\113\36\214\139")]={[v7("\106\205\60\210", "\100\39\172\85\188")]=Color3.fromRGB(5, 11 - 6, 721 - (530 + 181)),[v7("\158\113\189\133\49\172\106", "\83\205\24\217\224")]=Color3.fromRGB(883 - (614 + 267), 34 - (19 + 13), 7 - 2),[v7("\199\198\206\56\232\209", "\93\134\165\173")]=Color3.fromRGB(150, 116 - 66, 255)}};
local v16 = {};
local v17, v18, v19, v20, v21;
v16.CreateBase = function(v48)
	local v49 = 0 - 0;
	local v50;
	local v51;
	local v52;
	local v53;
	local v54;
	local v55;
	local v56;
	while true do
		if (v49 == (2 + 4)) then
			local FlatIdent_8D327 = 0;
			while true do
				if (FlatIdent_8D327 == 0) then
					v21.Text = v7("\139\104\22\9\1\24\154\101\115\19\26\19", "\81\206\60\83\91\79");
					v21.Size = UDim2.new(572 - (47 + 524), 0 - 0, 0 - 0, 1872 - (1293 + 519));
					FlatIdent_8D327 = 1;
				end
				if (FlatIdent_8D327 == 1) then
					v21.Font = Enum.Font.GothamBold;
					v21.TextColor3 = v15.Default.Accent;
					FlatIdent_8D327 = 2;
				end
				if (FlatIdent_8D327 == 2) then
					v49 = 15 - 8;
					break;
				end
			end
		end
		if (v49 == (16 - 8)) then
			local FlatIdent_2FBEB = 0;
			while true do
				if (FlatIdent_2FBEB == 2) then
					v49 = 3 + 6;
					break;
				end
				if (FlatIdent_2FBEB == 0) then
					v54.Size = UDim2.new(2 - 1, 0 - 0, 0 + 0, 86 - 66);
					v54.Position = UDim2.new(0, 0 - 0, 1 + 0, -(51 - 26));
					FlatIdent_2FBEB = 1;
				end
				if (FlatIdent_2FBEB == 1) then
					v54.Font = Enum.Font.GothamMedium;
					v54.TextColor3 = Color3.fromRGB(21 + 79, 426 - (89 + 237), 255 - 145);
					FlatIdent_2FBEB = 2;
				end
			end
		end
		if ((4 + 7) == v49) then
			local v200 = 0 + 0;
			while true do
				local FlatIdent_23BE8 = 0;
				while true do
					if (FlatIdent_23BE8 == 0) then
						if ((882 - (581 + 300)) == v200) then
							local FlatIdent_8199B = 0;
							while true do
								if (FlatIdent_8199B == 0) then
									v56.BackgroundTransparency = 1097 - (709 + 387);
									return v18, v55, v56;
								end
							end
						end
						if ((0 - 0) == v200) then
							local FlatIdent_39B0 = 0;
							while true do
								if (FlatIdent_39B0 == 0) then
									v56.Position = UDim2.new(1858 - (673 + 1185), 464 - 304, 0 - 0, 16 - 6);
									v56.Size = UDim2.new(1 + 0, -(128 + 42), 1, -(19 + 1));
									FlatIdent_39B0 = 1;
								end
								if (FlatIdent_39B0 == 1) then
									v200 = 1 + 0;
									break;
								end
							end
						end
						break;
					end
				end
			end
		end
		if (2 == v49) then
			local FlatIdent_28DC7 = 0;
			while true do
				if (FlatIdent_28DC7 == 2) then
					v49 = 5 - 2;
					break;
				end
				if (FlatIdent_28DC7 == 1) then
					v20 = Instance.new(v7("\9\134\178\88\241\118\115\57", "\24\92\207\225\44\131\25"), v18);
					v20.Thickness = 3 - 1;
					FlatIdent_28DC7 = 2;
				end
				if (FlatIdent_28DC7 == 0) then
					v18.BorderSizePixel = 0 - 0;
					Instance.new(v7("\238\162\50\250\171\210\202\201", "\175\187\235\113\149\217\188"), v18).CornerRadius = UDim.new(0, 3 + 7);
					FlatIdent_28DC7 = 1;
				end
			end
		end
		if (v49 == (1885 - (446 + 1434))) then
			local FlatIdent_47C14 = 0;
			while true do
				if (FlatIdent_47C14 == 0) then
					v19.BackgroundColor3 = v15.Default.Sidebar;
					v19.BorderSizePixel = 0;
					FlatIdent_47C14 = 1;
				end
				if (FlatIdent_47C14 == 2) then
					v49 = 6;
					break;
				end
				if (FlatIdent_47C14 == 1) then
					Instance.new(v7("\136\240\3\67\175\215\37\94", "\44\221\185\64"), v19).CornerRadius = UDim.new(1283 - (1040 + 243), 29 - 19);
					v21 = Instance.new(v7("\53\226\80\75\95\0\229\77\83", "\19\97\135\40\63"), v19);
					FlatIdent_47C14 = 2;
				end
			end
		end
		if ((1856 - (559 + 1288)) == v49) then
			local FlatIdent_61585 = 0;
			while true do
				if (FlatIdent_61585 == 2) then
					v49 = 36 - 26;
					break;
				end
				if (1 == FlatIdent_61585) then
					v55 = Instance.new(v7("\140\218\12\198\192", "\129\202\168\109\171\165\195\183"), v19);
					v55.Position = UDim2.new(0 - 0, 26 - 16, 0 - 0, 3 + 67);
					FlatIdent_61585 = 2;
				end
				if (0 == FlatIdent_61585) then
					v54.TextSize = 1941 - (609 + 1322);
					v54.BackgroundTransparency = 455 - (13 + 441);
					FlatIdent_61585 = 1;
				end
			end
		end
		if (v49 == (2 + 2)) then
			local FlatIdent_E652 = 0;
			while true do
				if (0 == FlatIdent_E652) then
					v10.InputChanged:Connect(function(v319)
						if ((v319 == v51) and v50) then
							local FlatIdent_23B4 = 0;
							local v349;
							local v350;
							while true do
								if (FlatIdent_23B4 == 0) then
									v349 = 0 + 0;
									v350 = nil;
									FlatIdent_23B4 = 1;
								end
								if (FlatIdent_23B4 == 1) then
									while true do
										if (v349 == (0 - 0)) then
											v350 = v319.Position - v52;
											v18.Position = UDim2.new(v53.X.Scale, v53.X.Offset + v350.X, v53.Y.Scale, v53.Y.Offset + v350.Y);
											break;
										end
									end
									break;
								end
							end
						end
					end);
					v10.InputEnded:Connect(function(v320)
						if (v320.UserInputType == Enum.UserInputType.MouseButton1) then
							v50 = false;
						end
					end);
					FlatIdent_E652 = 1;
				end
				if (2 == FlatIdent_E652) then
					v49 = 3 + 2;
					break;
				end
				if (FlatIdent_E652 == 1) then
					v19 = Instance.new(v7("\109\193\185\65\30", "\29\43\179\216\44\123"), v18);
					v19.Size = UDim2.new(0 + 0, 275 - 125, 1 + 0, 0 + 0);
					FlatIdent_E652 = 2;
				end
			end
		end
		if (v49 == (8 + 2)) then
			local FlatIdent_8F59B = 0;
			while true do
				if (FlatIdent_8F59B == 1) then
					Instance.new(v7("\23\113\27\209\205\0\202\35\65\56\205\202", "\134\66\56\87\184\190\116"), v55).Padding = UDim.new(0 - 0, 6);
					v56 = Instance.new(v7("\26\35\8\182\28", "\85\92\81\105\219\121\139\65"), v18);
					FlatIdent_8F59B = 2;
				end
				if (FlatIdent_8F59B == 0) then
					v55.Size = UDim2.new(1 + 0, -(17 + 3), 2 - 1, -(98 + 2));
					v55.BackgroundTransparency = 434 - (153 + 280);
					FlatIdent_8F59B = 1;
				end
				if (FlatIdent_8F59B == 2) then
					v49 = 10 + 1;
					break;
				end
			end
		end
		if (v49 == (0 + 0)) then
			local FlatIdent_7A75F = 0;
			while true do
				if (FlatIdent_7A75F == 1) then
					v17.ResetOnSpawn = false;
					v18 = Instance.new(v7("\124\218\228\91\95", "\224\58\168\133\54\58\146"), v17);
					FlatIdent_7A75F = 2;
				end
				if (FlatIdent_7A75F == 2) then
					v49 = 1 + 0;
					break;
				end
				if (FlatIdent_7A75F == 0) then
					v17 = Instance.new(v7("\141\241\211\199\63\192\149\107\183", "\30\222\146\161\162\90\174\210"), game:GetService(v7("\198\65\98\15\194\91\121", "\106\133\46\16")));
					v17.Name = v7("\125\52\118\238\84\73\76\57\91\233\88\127\110\116", "\32\56\64\19\156\58");
					FlatIdent_7A75F = 1;
				end
			end
		end
		if (v49 == 1) then
			v18.Name = v7("\116\87\66\243", "\107\57\54\43\157\21\230\231");
			v18.Size = UDim2.new(0 + 0, 377 + 143, 0 - 0, 235 + 145);
			v18.Position = UDim2.new(667.5 - (89 + 578), -(186 + 74), 0.5 - 0, -(1239 - (572 + 477)));
			v18.BackgroundColor3 = v15.Default.Main;
			v49 = 1 + 1;
		end
		if (7 == v49) then
			local FlatIdent_6F0B1 = 0;
			while true do
				if (0 == FlatIdent_6F0B1) then
					v21.TextSize = 20;
					v21.BackgroundTransparency = 1422 - (107 + 1314);
					FlatIdent_6F0B1 = 1;
				end
				if (FlatIdent_6F0B1 == 1) then
					v54 = Instance.new(v7("\122\174\200\102\3\194\79\161\66", "\196\46\203\176\18\79\163\45"), v19);
					v54.Text = v7("\155\48\123\31\48\254\235\248\32\103\94\16\250\248\177\58\100\80", "\143\216\66\30\126\68\155");
					FlatIdent_6F0B1 = 2;
				end
				if (FlatIdent_6F0B1 == 2) then
					v49 = 4 + 4;
					break;
				end
			end
		end
		if (v49 == (8 - 5)) then
			local FlatIdent_7FA00 = 0;
			while true do
				if (FlatIdent_7FA00 == 2) then
					v49 = 4;
					break;
				end
				if (FlatIdent_7FA00 == 1) then
					v18.InputBegan:Connect(function(v321)
						if (v321.UserInputType == Enum.UserInputType.MouseButton1) then
							local FlatIdent_29B3D = 0;
							local v351;
							local v352;
							while true do
								if (FlatIdent_29B3D == 1) then
									while true do
										if (v351 == (0 + 0)) then
											v352 = 1910 - (716 + 1194);
											while true do
												if (v352 == (87 - (84 + 2))) then
													v53 = v18.Position;
													break;
												end
												if (v352 == (0 - 0)) then
													local FlatIdent_5C540 = 0;
													while true do
														if (FlatIdent_5C540 == 1) then
															v352 = 1 + 0;
															break;
														end
														if (FlatIdent_5C540 == 0) then
															v50 = true;
															v52 = v321.Position;
															FlatIdent_5C540 = 1;
														end
													end
												end
											end
											break;
										end
									end
									break;
								end
								if (FlatIdent_29B3D == 0) then
									v351 = 0 - 0;
									v352 = nil;
									FlatIdent_29B3D = 1;
								end
							end
						end
					end);
					v18.InputChanged:Connect(function(v322)
						if (v322.UserInputType == Enum.UserInputType.MouseMovement) then
							v51 = v322;
						end
					end);
					FlatIdent_7FA00 = 2;
				end
				if (FlatIdent_7FA00 == 0) then
					v20.Color = Color3.fromRGB(25 + 15, 40, 99 - 49);
					v50, v51, v52, v53 = nil;
					FlatIdent_7FA00 = 1;
				end
			end
		end
	end
end;
local v23, v24, v25 = v16:CreateBase();
local v26 = nil;
v16.SetTheme = function(v57, v58)
	local FlatIdent_8BF78 = 0;
	local v59;
	local v60;
	while true do
		if (FlatIdent_8BF78 == 0) then
			v59 = 0;
			v60 = nil;
			FlatIdent_8BF78 = 1;
		end
		if (1 == FlatIdent_8BF78) then
			while true do
				if (v59 == (842 - (497 + 345))) then
					local FlatIdent_52551 = 0;
					while true do
						if (FlatIdent_52551 == 0) then
							v60 = v15[v58] or v15.Default;
							v11:Create(v18, TweenInfo.new(0.3 + 0), {[v7("\223\178\83\78\123\205\242\166\94\65\95\208\241\188\66\22", "\191\157\211\48\37\28")]=v60.Main}):Play();
							FlatIdent_52551 = 1;
						end
						if (FlatIdent_52551 == 1) then
							v59 = 504 - (74 + 429);
							break;
						end
					end
				end
				if (v59 == (1 + 0)) then
					local FlatIdent_2D88C = 0;
					while true do
						if (1 == FlatIdent_2D88C) then
							v59 = 2 + 0;
							break;
						end
						if (FlatIdent_2D88C == 0) then
							v11:Create(v19, TweenInfo.new(0.3 + 0), {[v7("\253\30\247\23\61\205\16\225\18\62\252\16\248\19\40\140", "\90\191\127\148\124")]=v60.Sidebar}):Play();
							v11:Create(v21, TweenInfo.new(1333.3 - (605 + 728)), {[v7("\76\130\54\3\91\136\34\24\106\212", "\119\24\231\78")]=v60.Accent}):Play();
							FlatIdent_2D88C = 1;
						end
					end
				end
				if (v59 == (3 - 1)) then
					v14.Theme = v58;
					break;
				end
			end
			break;
		end
	end
end;
v16.CreateTab = function(v61, v62)
	local v63 = 0 + 0;
	local v64;
	local v65;
	while true do
		if (v63 == (0 - 0)) then
			v64 = Instance.new(v7("\182\40\189\94\254\85\5\150\34\171", "\113\226\77\197\42\188\32"), v24);
			v64.Size = UDim2.new(1, 0 + 0, 0 - 0, 38);
			v64.BackgroundColor3 = Color3.fromRGB(23 + 7, 519 - (457 + 32), 17 + 23);
			v63 = 1403 - (832 + 570);
		end
		if ((1 + 0) == v63) then
			local FlatIdent_AC2F = 0;
			while true do
				if (FlatIdent_AC2F == 0) then
					v64.Text = v62;
					v64.Font = Enum.Font.GothamSemibold;
					FlatIdent_AC2F = 1;
				end
				if (FlatIdent_AC2F == 1) then
					v64.TextColor3 = Color3.fromRGB(42 + 118, 566 - 406, 170);
					v63 = 1 + 1;
					break;
				end
			end
		end
		if (v63 == (799 - (588 + 208))) then
			v65.Size = UDim2.new(2 - 1, 1093 - (277 + 816), 1801 - (884 + 916), 0 - 0);
			v65.BackgroundTransparency = 1 + 0;
			v65.Visible = false;
			v63 = 979 - (815 + 160);
		end
		if ((2 + 0) == v63) then
			local FlatIdent_28F3E = 0;
			while true do
				if (FlatIdent_28F3E == 0) then
					v64.TextSize = 59 - 45;
					Instance.new(v7("\15\63\215\186\40\24\241\167", "\213\90\118\148"), v64).CornerRadius = UDim.new(0 - 0, 659 - (232 + 421));
					FlatIdent_28F3E = 1;
				end
				if (FlatIdent_28F3E == 1) then
					v65 = Instance.new(v7("\104\45\166\89\65\87\39\186\81\107\73\47\185\83", "\45\59\78\212\54"), v25);
					v63 = 1892 - (1569 + 320);
					break;
				end
			end
		end
		if (v63 == (1 + 3)) then
			local FlatIdent_98388 = 0;
			local v238;
			while true do
				if (FlatIdent_98388 == 0) then
					v238 = 0 + 0;
					while true do
						if (v238 == (1894 - (1222 + 671))) then
							v64.MouseButton1Click:Connect(function()
								local FlatIdent_29E69 = 0;
								while true do
									if (FlatIdent_29E69 == 1) then
										v64.TextColor3 = Color3.fromRGB(1708 - (666 + 787), 680 - (360 + 65), 239 + 16);
										v26 = {[v7("\131\41\8\249", "\59\211\72\111\156\176")]=v65,[v7("\108\147\237", "\77\46\231\131")]=v64};
										break;
									end
									if (FlatIdent_29E69 == 0) then
										if v26 then
											local FlatIdent_19F98 = 0;
											local v417;
											while true do
												if (FlatIdent_19F98 == 0) then
													v417 = 0 - 0;
													while true do
														if (v417 == (0 - 0)) then
															v26.Page.Visible = false;
															v26.Btn.TextColor3 = Color3.fromRGB(765 - (316 + 289), 418 - 258, 8 + 162);
															break;
														end
													end
													break;
												end
											end
										end
										v65.Visible = true;
										FlatIdent_29E69 = 1;
									end
								end
							end);
							v63 = 259 - (79 + 175);
							break;
						end
						if ((0 - 0) == v238) then
							local FlatIdent_61800 = 0;
							while true do
								if (FlatIdent_61800 == 0) then
									v65.ScrollBarThickness = 2 + 0;
									Instance.new(v7("\37\127\175\130\149\58\129\241\9\89\150\159", "\144\112\54\227\235\230\78\205"), v65).Padding = UDim.new(679 - (642 + 37), 30 - 20);
									FlatIdent_61800 = 1;
								end
								if (FlatIdent_61800 == 1) then
									v238 = 1 + 0;
									break;
								end
							end
						end
					end
					break;
				end
			end
		end
		if (v63 == (1 + 4)) then
			local FlatIdent_DFF4 = 0;
			local v239;
			while true do
				if (FlatIdent_DFF4 == 0) then
					v239 = 0 - 0;
					while true do
						if (v239 == (454 - (233 + 221))) then
							local FlatIdent_7DFA5 = 0;
							while true do
								if (FlatIdent_7DFA5 == 0) then
									if not v26 then
										local FlatIdent_28014 = 0;
										local v406;
										while true do
											if (FlatIdent_28014 == 0) then
												v406 = 0;
												while true do
													if (v406 == (899 - (503 + 396))) then
														local FlatIdent_21449 = 0;
														while true do
															if (FlatIdent_21449 == 0) then
																v65.Visible = true;
																v64.TextColor3 = Color3.fromRGB(436 - (92 + 89), 494 - 239, 1796 - (718 + 823));
																FlatIdent_21449 = 1;
															end
															if (FlatIdent_21449 == 1) then
																v406 = 1 + 0;
																break;
															end
														end
													end
													if (v406 == (1 + 0)) then
														v26 = {[v7("\138\85\177\69", "\32\218\52\214")]=v65,[v7("\108\3\63", "\58\46\119\81\200\145\208\37")]=v64};
														break;
													end
												end
												break;
											end
										end
									end
									return v65;
								end
							end
						end
					end
					break;
				end
			end
		end
	end
end;
v16.AddToggle = function(v66, v67, v68, v69, v70)
	local v71 = 0 - 0;
	local v72;
	local v73;
	local v74;
	local v75;
	while true do
		if (v71 == 4) then
			local FlatIdent_20FE3 = 0;
			while true do
				if (FlatIdent_20FE3 == 1) then
					v74.Position = UDim2.new(1 + 0, -(167 - 112), 0.5 + 0, -11);
					v71 = 2 + 3;
					break;
				end
				if (FlatIdent_20FE3 == 0) then
					v74 = Instance.new(v7("\53\55\30\46\127\20\38\18\53\83", "\61\97\82\102\90"), v72);
					v74.Size = UDim2.new(0 + 0, 1271 - (636 + 589), 0 - 0, 20 + 2);
					FlatIdent_20FE3 = 1;
				end
			end
		end
		if (v71 == (8 - 2)) then
			v75 = v69;
			v74.MouseButton1Click:Connect(function()
				local v323 = 0;
				local v324;
				while true do
					if (v323 == (1244 - (485 + 759))) then
						local FlatIdent_5431F = 0;
						while true do
							if (FlatIdent_5431F == 0) then
								v75 = not v75;
								v324 = v15[v14.Theme].Accent;
								FlatIdent_5431F = 1;
							end
							if (FlatIdent_5431F == 1) then
								v323 = 2 - 1;
								break;
							end
						end
					end
					if (v323 == (1190 - (442 + 747))) then
						v11:Create(v74, TweenInfo.new(1187.2 - (1151 + 36)), {[v7("\135\171\32\21\20\22\200\68\171\174\0\17\31\11\213\2", "\49\197\202\67\126\115\100\167")]=((v75 and v324) or Color3.fromRGB(1185 - (832 + 303), 996 - (88 + 858), 19 + 41))}):Play();
						v70(v75);
						break;
					end
				end
			end);
			break;
		end
		if (v71 == (3 + 0)) then
			local FlatIdent_7E707 = 0;
			while true do
				if (FlatIdent_7E707 == 1) then
					v73.BackgroundTransparency = 2 - 1;
					v71 = 8 - 4;
					break;
				end
				if (FlatIdent_7E707 == 0) then
					v73.TextColor3 = Color3.fromRGB(9 + 201, 999 - (766 + 23), 1086 - 866);
					v73.TextSize = 18 - 4;
					FlatIdent_7E707 = 1;
				end
			end
		end
		if (v71 == (1 + 0)) then
			local FlatIdent_68856 = 0;
			local v245;
			while true do
				if (FlatIdent_68856 == 0) then
					v245 = 0 - 0;
					while true do
						if (v245 == (1073 - (1036 + 37))) then
							local FlatIdent_132C0 = 0;
							while true do
								if (FlatIdent_132C0 == 1) then
									v245 = 1 + 0;
									break;
								end
								if (0 == FlatIdent_132C0) then
									Instance.new(v7("\71\104\84\138\236\133\119\83", "\235\18\33\23\229\158"), v72).CornerRadius = UDim.new(0 + 0, 11 - 5);
									v73 = Instance.new(v7("\100\191\217\175\124\187\195\190\92", "\219\48\218\161"), v72);
									FlatIdent_132C0 = 1;
								end
							end
						end
						if (v245 == (1481 - (641 + 839))) then
							v73.Text = v7("\164\49", "\128\132\17\28\41\187\47") .. v68;
							v71 = 915 - (910 + 3);
							break;
						end
					end
					break;
				end
			end
		end
		if (v71 == (12 - 7)) then
			local FlatIdent_91608 = 0;
			while true do
				if (FlatIdent_91608 == 1) then
					Instance.new(v7("\153\7\136\68\213\89\27\27", "\105\204\78\203\43\167\55\126"), v74).CornerRadius = UDim.new(1 + 0, 808 - (329 + 479));
					v71 = 860 - (174 + 680);
					break;
				end
				if (FlatIdent_91608 == 0) then
					v74.BackgroundColor3 = (v69 and v15.Default.Accent) or Color3.fromRGB(1734 - (1466 + 218), 23 + 27, 1208 - (556 + 592));
					v74.Text = "";
					FlatIdent_91608 = 1;
				end
			end
		end
		if (v71 == (0 - 0)) then
			local FlatIdent_331F0 = 0;
			local v249;
			while true do
				if (FlatIdent_331F0 == 0) then
					v249 = 0 - 0;
					while true do
						if (v249 == (0 + 0)) then
							v72 = Instance.new(v7("\13\158\49\161\172", "\86\75\236\80\204\201\221"), v67);
							v72.Size = UDim2.new(2 - 1, -(869 - (464 + 395)), 739 - (396 + 343), 4 + 41);
							v249 = 1478 - (29 + 1448);
						end
						if (v249 == (1390 - (135 + 1254))) then
							v72.BackgroundColor3 = Color3.fromRGB(15 + 15, 113 - 83, 35);
							v71 = 838 - (467 + 370);
							break;
						end
					end
					break;
				end
			end
		end
		if ((9 - 7) == v71) then
			local FlatIdent_912A7 = 0;
			while true do
				if (FlatIdent_912A7 == 0) then
					v73.Size = UDim2.new(1 + 0, -(205 - 145), 1 + 0, 0 - 0);
					v73.TextXAlignment = Enum.TextXAlignment.Left;
					FlatIdent_912A7 = 1;
				end
				if (FlatIdent_912A7 == 1) then
					v73.Font = Enum.Font.Gotham;
					v71 = 523 - (150 + 370);
					break;
				end
			end
		end
	end
end;
v16.AddSlider = function(v76, v77, v78, v79, v80, v81, v82)
	local FlatIdent_5724B = 0;
	local v83;
	local v84;
	local v85;
	local v86;
	local v87;
	local v88;
	local v89;
	local v90;
	while true do
		if (FlatIdent_5724B == 2) then
			v87 = nil;
			v88 = nil;
			FlatIdent_5724B = 3;
		end
		if (FlatIdent_5724B == 4) then
			while true do
				if (v83 == (574 - (102 + 472))) then
					v84 = Instance.new(v7("\17\73\222\36\133", "\62\87\59\191\73\224\54"), v77);
					v84.Size = UDim2.new(4 - 3, -(10 + 0), 390 - (14 + 376), 95 - 40);
					v84.BackgroundColor3 = Color3.fromRGB(30, 30, 20 + 15);
					Instance.new(v7("\210\43\217\198\245\12\255\219", "\169\135\98\154"), v84).CornerRadius = UDim.new(0 + 0, 1551 - (320 + 1225));
					v83 = 1 - 0;
				end
				if (v83 == (2 + 1)) then
					v86 = Instance.new(v7("\209\225\61\223\242", "\178\151\147\92"), v84);
					v86.Size = UDim2.new(1 + 0, -(1494 - (157 + 1307)), 1859 - (821 + 1038), 14 - 8);
					v86.Position = UDim2.new(0 + 0, 14 + 1, 0.7 - 0, 0 + 0);
					v86.BackgroundColor3 = Color3.fromRGB(123 - 73, 1076 - (834 + 192), 160 - 100);
					v83 = 1872 - (708 + 1160);
				end
				if (v83 == (1 + 6)) then
					v88.InputBegan:Connect(function(v325)
						if (v325.UserInputType == Enum.UserInputType.MouseButton1) then
							v90 = true;
						end
					end);
					v10.InputEnded:Connect(function(v326)
						if (v326.UserInputType == Enum.UserInputType.MouseButton1) then
							v90 = false;
						end
					end);
					v10.InputChanged:Connect(function(v327)
						if (v90 and (v327.UserInputType == Enum.UserInputType.MouseMovement)) then
							v89(v327);
						end
					end);
					break;
				end
				if (v83 == (2 + 3)) then
					local FlatIdent_1468D = 0;
					while true do
						if (FlatIdent_1468D == 2) then
							v83 = 11 - 5;
							break;
						end
						if (FlatIdent_1468D == 0) then
							Instance.new(v7("\16\248\121\85\161\43\212\72", "\211\69\177\58\58"), v87);
							v88 = Instance.new(v7("\131\224\97\225\203\222\163\241\118\251", "\171\215\133\25\149\137"), v86);
							FlatIdent_1468D = 1;
						end
						if (FlatIdent_1468D == 1) then
							v88.Size = UDim2.new(1 + 0, 0 - 0, 28 - (10 + 17), 304 - (300 + 4));
							v88.BackgroundTransparency = 1733 - (1400 + 332);
							FlatIdent_1468D = 2;
						end
					end
				end
				if (v83 == 6) then
					v88.Text = "";
					v89 = nil;
					function v89(v328)
						local FlatIdent_56EE2 = 0;
						local v329;
						local v330;
						local v331;
						local v332;
						while true do
							if (2 == FlatIdent_56EE2) then
								while true do
									if (v329 == (2 - 1)) then
										v332 = nil;
										while true do
											if ((0 + 0) == v330) then
												local FlatIdent_21CA5 = 0;
												while true do
													if (FlatIdent_21CA5 == 0) then
														v331 = math.clamp((v328.Position.X - v86.AbsolutePosition.X) / v86.AbsoluteSize.X, 0 + 0, 363 - (112 + 250));
														v87.Size = UDim2.new(v331, 0 - 0, 1 + 0, 0 + 0);
														FlatIdent_21CA5 = 1;
													end
													if (FlatIdent_21CA5 == 1) then
														v330 = 2 - 1;
														break;
													end
												end
											end
											if (v330 == (1 - 0)) then
												local FlatIdent_1AB05 = 0;
												while true do
													if (FlatIdent_1AB05 == 0) then
														v87.BackgroundColor3 = v15[v14.Theme].Accent;
														v332 = math.floor(v79 + ((v80 - v79) * v331));
														FlatIdent_1AB05 = 1;
													end
													if (1 == FlatIdent_1AB05) then
														v330 = 1663 - (909 + 752);
														break;
													end
												end
											end
											if (v330 == (4 - 2)) then
												v85.Text = v7("\161\136", "\34\129\168\82\154\143\80\156") .. v78 .. v7("\197\232\115", "\233\229\210\83\107\40\46") .. v332;
												v82(v332);
												break;
											end
										end
										break;
									end
									if (v329 == (0 - 0)) then
										local FlatIdent_43BEE = 0;
										while true do
											if (FlatIdent_43BEE == 1) then
												v329 = 1 + 0;
												break;
											end
											if (0 == FlatIdent_43BEE) then
												v330 = 0 + 0;
												v331 = nil;
												FlatIdent_43BEE = 1;
											end
										end
									end
								end
								break;
							end
							if (1 == FlatIdent_56EE2) then
								v331 = nil;
								v332 = nil;
								FlatIdent_56EE2 = 2;
							end
							if (FlatIdent_56EE2 == 0) then
								v329 = 0 + 0;
								v330 = nil;
								FlatIdent_56EE2 = 1;
							end
						end
					end
					v90 = false;
					v83 = 4 + 3;
				end
				if (v83 == 1) then
					local FlatIdent_6C967 = 0;
					while true do
						if (FlatIdent_6C967 == 0) then
							v85 = Instance.new(v7("\255\114\60\64\209\50\202\206\123", "\168\171\23\68\52\157\83"), v84);
							v85.Text = v7("\180\49", "\231\148\17\149\205\69\77") .. v78 .. v7("\192\253\135", "\159\224\199\167\155\55") .. v81;
							FlatIdent_6C967 = 1;
						end
						if (FlatIdent_6C967 == 1) then
							v85.Size = UDim2.new(1 + 0, 0 - 0, 0 + 0, 1163 - (1076 + 57));
							v85.TextXAlignment = Enum.TextXAlignment.Left;
							FlatIdent_6C967 = 2;
						end
						if (2 == FlatIdent_6C967) then
							v83 = 1 + 1;
							break;
						end
					end
				end
				if (v83 == (3 + 1)) then
					local FlatIdent_360E8 = 0;
					while true do
						if (FlatIdent_360E8 == 0) then
							Instance.new(v7("\185\212\111\61\0\66\127\158", "\26\236\157\44\82\114\44"), v86);
							v87 = Instance.new(v7("\12\60\212\86\47", "\59\74\78\181"), v86);
							FlatIdent_360E8 = 1;
						end
						if (FlatIdent_360E8 == 2) then
							v83 = 11 - 6;
							break;
						end
						if (FlatIdent_360E8 == 1) then
							v87.Size = UDim2.new((v81 - v79) / (v80 - v79), 0, 1415 - (1001 + 413), 0 + 0);
							v87.BackgroundColor3 = v15.Default.Accent;
							FlatIdent_360E8 = 2;
						end
					end
				end
				if (v83 == (2 + 0)) then
					local FlatIdent_33DE6 = 0;
					while true do
						if (FlatIdent_33DE6 == 2) then
							v83 = 605 - (512 + 90);
							break;
						end
						if (FlatIdent_33DE6 == 1) then
							v85.TextSize = 706 - (627 + 66);
							v85.BackgroundTransparency = 2 - 1;
							FlatIdent_33DE6 = 2;
						end
						if (0 == FlatIdent_33DE6) then
							v85.Font = Enum.Font.Gotham;
							v85.TextColor3 = Color3.fromRGB(112 + 98, 617 - (174 + 233), 1102 - (244 + 638));
							FlatIdent_33DE6 = 1;
						end
					end
				end
			end
			break;
		end
		if (FlatIdent_5724B == 1) then
			v85 = nil;
			v86 = nil;
			FlatIdent_5724B = 2;
		end
		if (FlatIdent_5724B == 3) then
			v89 = nil;
			v90 = nil;
			FlatIdent_5724B = 4;
		end
		if (0 == FlatIdent_5724B) then
			v83 = 1527 - (389 + 1138);
			v84 = nil;
			FlatIdent_5724B = 1;
		end
	end
end;
v16.AddDropdown = function(v91, v92, v93, v94, v95, v96)
	local v97 = Instance.new(v7("\231\80\51\219\0", "\101\161\34\82\182"), v92);
	v97.Size = UDim2.new(1907 - (1665 + 241), -(727 - (373 + 344)), 0 + 0, 12 + 33);
	v97.BackgroundColor3 = Color3.fromRGB(79 - 49, 70 - 40, 58 - 23);
	Instance.new(v7("\221\36\122\241\201\236\135\60", "\78\136\109\57\158\187\130\226"), v97).CornerRadius = UDim.new(1099 - (35 + 1064), 5 + 1);
	local v101 = Instance.new(v7("\10\58\225\229\28\42\237\229\49\49", "\145\94\95\153"), v97);
	v101.Text = v7("\189\141", "\215\157\173\116\181\46") .. v93 .. v7("\117\238\203", "\186\85\212\235\146") .. v95;
	v101.Size = UDim2.new(2 - 1, 0 + 0, 1 + 0, 1236 - (298 + 938));
	v101.BackgroundTransparency = 1260 - (233 + 1026);
	v101.TextColor3 = Color3.fromRGB(1866 - (636 + 1030), 103 + 97, 932 - (478 + 244));
	v101.Font = Enum.Font.Gotham;
	v101.TextSize = 14 + 0;
	v101.TextXAlignment = Enum.TextXAlignment.Left;
	local v111 = false;
	v101.MouseButton1Click:Connect(function()
		v111 = not v111;
		if v111 then
			local v276 = 0 + 0;
			while true do
				if (v276 == (0 + 0)) then
					v97.Size = UDim2.new(1 + 0, -(231 - (55 + 166)), 0, 45 + (#v94 * (23 + 7)));
					for v371, v372 in ipairs(v94) do
						local FlatIdent_1BAD7 = 0;
						local v373;
						while true do
							if (FlatIdent_1BAD7 == 0) then
								v373 = Instance.new(v7("\246\132\14\234\27\251\76\214\142\24", "\56\162\225\118\158\89\142"), v97);
								v373.Text = v372;
								FlatIdent_1BAD7 = 1;
							end
							if (FlatIdent_1BAD7 == 1) then
								v373.Size = UDim2.new(1 + 0, 0 + 0, 0 - 0, 1475 - (695 + 750));
								v373.Position = UDim2.new(297 - (36 + 261), 0 - 0, 0 - 0, (1413 - (34 + 1334)) + ((v371 - 1) * 30));
								FlatIdent_1BAD7 = 2;
							end
							if (FlatIdent_1BAD7 == 2) then
								v373.BackgroundColor3 = Color3.fromRGB(14 + 21, 81 - 46, 45);
								v373.BorderSizePixel = 0 + 0;
								FlatIdent_1BAD7 = 3;
							end
							if (FlatIdent_1BAD7 == 4) then
								v373.TextSize = 34 - (20 + 1);
								v373.MouseButton1Click:Connect(function()
									local FlatIdent_35AC5 = 0;
									local v407;
									while true do
										if (FlatIdent_35AC5 == 0) then
											v407 = 0 + 0;
											while true do
												if (v407 == (271 - (239 + 30))) then
													for v456, v457 in ipairs(v97:GetChildren()) do
														if (v457:IsA(v7("\39\208\154\239\200\210\7\193\141\245", "\167\115\181\226\155\138")) and (v457 ~= v101)) then
															v457:Destroy();
														end
													end
													break;
												end
												if (v407 == (0 + 0)) then
													local FlatIdent_654E4 = 0;
													while true do
														if (FlatIdent_654E4 == 0) then
															v101.Text = v7("\28\69", "\184\60\101\160\207\66") .. v93 .. v7("\113\216\60", "\220\81\226\28") .. v372;
															v96(v372);
															FlatIdent_654E4 = 1;
														end
														if (FlatIdent_654E4 == 1) then
															v407 = 1;
															break;
														end
													end
												end
												if (v407 == 1) then
													local FlatIdent_2A75 = 0;
													while true do
														if (FlatIdent_2A75 == 0) then
															v111 = false;
															v97.Size = UDim2.new(320 - (134 + 185), -(1143 - (549 + 584)), 0 - 0, 45);
															FlatIdent_2A75 = 1;
														end
														if (FlatIdent_2A75 == 1) then
															v407 = 687 - (314 + 371);
															break;
														end
													end
												end
											end
											break;
										end
									end
								end);
								break;
							end
							if (FlatIdent_1BAD7 == 3) then
								v373.TextColor3 = Color3.fromRGB(1463 - (1035 + 248), 30 + 150, 489 - (176 + 123));
								v373.Font = Enum.Font.Gotham;
								FlatIdent_1BAD7 = 4;
							end
						end
					end
					break;
				end
			end
		else
			local FlatIdent_7AA3 = 0;
			local v277;
			local v278;
			while true do
				if (0 == FlatIdent_7AA3) then
					v277 = 0 - 0;
					v278 = nil;
					FlatIdent_7AA3 = 1;
				end
				if (FlatIdent_7AA3 == 1) then
					while true do
						if (v277 == (968 - (478 + 490))) then
							v278 = 0 + 0;
							while true do
								if (v278 == (1172 - (786 + 386))) then
									v97.Size = UDim2.new(1, -(32 - 22), 1379 - (1055 + 324), 22 + 23);
									for v431, v432 in ipairs(v97:GetChildren()) do
										if (v432:IsA(v7("\214\39\255\72\89\100\210\246\45\233", "\166\130\66\135\60\27\17")) and (v432 ~= v101)) then
											v432:Destroy();
										end
									end
									break;
								end
							end
							break;
						end
					end
					break;
				end
			end
		end
	end);
end;
v16.AddKeybind = function(v112, v113, v114, v115, v116)
	local v117 = 1340 - (1093 + 247);
	local v118;
	local v119;
	local v120;
	local v121;
	while true do
		if (v117 == (3 + 0)) then
			local FlatIdent_52EE1 = 0;
			while true do
				if (FlatIdent_52EE1 == 1) then
					v120.Position = UDim2.new(1 + 0, -(256 - 166), 0.5 - 0, -(5 + 7));
					v120.BackgroundColor3 = Color3.fromRGB(50, 192 - 142, 27 + 33);
					FlatIdent_52EE1 = 2;
				end
				if (FlatIdent_52EE1 == 2) then
					v117 = 7 - 3;
					break;
				end
				if (FlatIdent_52EE1 == 0) then
					v120 = Instance.new(v7("\130\176\254\196\148\160\242\196\185\187", "\176\214\213\134"), v118);
					v120.Size = UDim2.new(0 + 0, 317 - 237, 0 - 0, 23 + 2);
					FlatIdent_52EE1 = 1;
				end
			end
		end
		if ((13 - 9) == v117) then
			local FlatIdent_5D905 = 0;
			while true do
				if (2 == FlatIdent_5D905) then
					v117 = 11 - 6;
					break;
				end
				if (FlatIdent_5D905 == 1) then
					v120.Font = Enum.Font.GothamBold;
					v120.TextSize = 32 - 20;
					FlatIdent_5D905 = 2;
				end
				if (FlatIdent_5D905 == 0) then
					v120.Text = v115.Name;
					v120.TextColor3 = Color3.fromRGB(193 + 62, 652 - 397, 943 - (364 + 324));
					FlatIdent_5D905 = 1;
				end
			end
		end
		if ((2 + 3) == v117) then
			Instance.new(v7("\193\132\149\219\186\88\92\230", "\57\148\205\214\180\200\54"), v120).CornerRadius = UDim.new(0 - 0, 4);
			v121 = false;
			v120.MouseButton1Click:Connect(function()
				local FlatIdent_8BE54 = 0;
				local v333;
				while true do
					if (FlatIdent_8BE54 == 0) then
						v333 = 0 - 0;
						while true do
							if (v333 == (0 + 0)) then
								v120.Text = v7("\92\179\123", "\22\114\157\85\84");
								v121 = true;
								break;
							end
						end
						break;
					end
				end
			end);
			v10.InputBegan:Connect(function(v334)
				if (v121 and (v334.UserInputType == Enum.UserInputType.Keyboard)) then
					local FlatIdent_270C = 0;
					local v360;
					while true do
						if (FlatIdent_270C == 0) then
							v360 = 0 - 0;
							while true do
								if (v360 == (0 - 0)) then
									v120.Text = v334.KeyCode.Name;
									v121 = false;
									v360 = 610 - (295 + 314);
								end
								if (v360 == (1269 - (1249 + 19))) then
									v116(v334.KeyCode);
									break;
								end
							end
							break;
						end
					end
				end
			end);
			break;
		end
		if ((2 + 0) == v117) then
			local FlatIdent_8A8EC = 0;
			while true do
				if (0 == FlatIdent_8A8EC) then
					v119.Font = Enum.Font.Gotham;
					v119.TextColor3 = Color3.fromRGB(210, 210, 856 - 636);
					FlatIdent_8A8EC = 1;
				end
				if (2 == FlatIdent_8A8EC) then
					v117 = 3 + 0;
					break;
				end
				if (FlatIdent_8A8EC == 1) then
					v119.TextSize = 14;
					v119.BackgroundTransparency = 1087 - (686 + 400);
					FlatIdent_8A8EC = 2;
				end
			end
		end
		if (v117 == (1756 - (1178 + 577))) then
			local FlatIdent_78D43 = 0;
			while true do
				if (FlatIdent_78D43 == 0) then
					v119 = Instance.new(v7("\141\38\179\96\147\190\71\177\181", "\212\217\67\203\20\223\223\37"), v118);
					v119.Text = v7("\250\205", "\178\218\237\200") .. v114;
					FlatIdent_78D43 = 1;
				end
				if (FlatIdent_78D43 == 2) then
					v117 = 2 + 0;
					break;
				end
				if (1 == FlatIdent_78D43) then
					v119.Size = UDim2.new(1, -(329 - (73 + 156)), 1 + 0, 811 - (721 + 90));
					v119.TextXAlignment = Enum.TextXAlignment.Left;
					FlatIdent_78D43 = 2;
				end
			end
		end
		if (v117 == (0 + 0)) then
			local FlatIdent_40FD3 = 0;
			while true do
				if (FlatIdent_40FD3 == 1) then
					v118.BackgroundColor3 = Color3.fromRGB(500 - (224 + 246), 30, 35);
					Instance.new(v7("\123\57\20\117\92\30\50\104", "\26\46\112\87"), v118).CornerRadius = UDim.new(0 - 0, 23 - 17);
					FlatIdent_40FD3 = 2;
				end
				if (FlatIdent_40FD3 == 2) then
					v117 = 1162 - (160 + 1001);
					break;
				end
				if (FlatIdent_40FD3 == 0) then
					v118 = Instance.new(v7("\98\88\207\120\53", "\80\36\42\174\21"), v113);
					v118.Size = UDim2.new(1 - 0, -(312 - (115 + 187)), 0 - 0, 35 + 10);
					FlatIdent_40FD3 = 1;
				end
			end
		end
	end
end;
local v33 = v16:CreateTab(v7("\231\196\30\198\92\226", "\200\164\171\115\164\61\150"));
local v34 = v16:CreateTab(v7("\136\253\16\80\130\178\231", "\227\222\148\99\37"));
local v35 = v16:CreateTab(v7("\30\93\68\243\244\54\92\70", "\153\83\50\50\150"));
local v36 = v16:CreateTab(v7("\110\115\103\8\122\165\74\78", "\45\61\22\19\124\19\203"));
v16:AddToggle(v33, v7("\228\28\12\247\14\117\189\129\51\4\248\0\127\173", "\217\161\114\109\149\98\16"), false, function(v122)
	v14.AimbotEnabled = v122;
end);
v16:AddSlider(v33, v7("\51\41\53\126\179\96\82\19\40\121\185\112", "\20\114\64\88\28\220"), 1 - 0, 88 + 12, 19 + 81, function(v124)
	v14.AimbotSpeed = v124 / (3 + 97);
end);
v16:AddSlider(v33, v7("\23\46\228\244\202\209\185\56\20\193", "\221\81\97\178\212\152\176"), 8 + 2, 800, 298 - 148, function(v126)
	v14.AimbotFOV = v126;
end);
v16:AddToggle(v33, v7("\254\239\18\236\90\235\200\43\187\57\196\245\30\247\31", "\122\173\135\125\155"), false, function(v128)
	v14.ShowFOV = v128;
end);
v16:AddToggle(v33, v7("\183\200\12\188\49\37\136\165\200\13", "\168\228\161\96\217\95\81"), false, function(v130)
	v14.SilentAim = v130;
end);
v16:AddToggle(v34, v7("\254\223\47\94\35\82\155\244\29\108", "\55\187\177\78\60\79"), false, function(v132)
	v14.ESPEnabled = v132;
end);
v16:AddToggle(v34, v7("\3\207\82\238\6\234\179\29", "\224\77\174\63\139\38\175"), false, function(v134)
	v14.NameESP = v134;
end);
v16:AddToggle(v34, v7("\166\78\64\110\161\114\104", "\78\228\33\56"), false, function(v136)
	v14.BoxESP = v136;
end);
v16:AddToggle(v34, v7("\230\123\179\15\145\198\62\144\2\151", "\229\174\30\210\99"), false, function(v138)
	v14.HealthESP = v138;
end);
v16:AddToggle(v34, v7("\40\230\131\93\232\41\54\21\173\163\98\221", "\89\123\141\230\49\141\93"), false, function(v140)
	v14.SkeletonESP = v140;
end);
v16:AddToggle(v35, v7("\192\97\243\9\20\10\219\112\245\7", "\42\147\17\150\108\112"), false, function(v142)
	v14.SpeedHack = v142;
end);
v16:AddSlider(v35, v7("\57\167\33\106\226", "\136\111\198\77\31\135"), 53 - 37, 250, 997 - (525 + 372), function(v144)
	v14.SpeedValue = v144;
end);
v16:AddToggle(v35, v7("\44\6\164\90\180\244", "\201\98\105\199\54\221\132\119"), false, function(v146)
	v14.Noclip = v146;
end);
v16:AddKeybind(v36, v7("\148\9\141\52\66\26\188\188\2\204\2\14\58\191\188", "\204\217\108\227\65\98\85"), v14.MenuKey, function(v148)
	v14.MenuKey = v148;
end);
v16:AddDropdown(v36, v7("\115\198\251\240\108\244\86\198\248\224", "\160\62\163\149\133\76"), {v7("\242\165\11\46\214\218\180", "\163\182\192\109\79"),v7("\2\39\13\208\252\38\35", "\149\84\70\96\160"),v7("\29\11\8\255\57\10\9", "\141\88\102\109"),v7("\158\90\206\126\19\58\93\213", "\161\211\51\170\16\122\93\53")}, v7("\223\171\180\41\238\162\166", "\72\155\206\210"), function(v150)
	v16:SetTheme(v150);
end);
v16:AddDropdown(v36, v7("\99\73\100\78\16\73\118\91\28", "\83\38\26\52\110"), {v7("\123\14\38\72", "\38\56\119\71"),v7("\193\234\92", "\54\147\143\56\182\69"),v7("\241\147\250\76\209", "\191\182\225\159\41"),v7("\28\26\33\65\142", "\162\75\114\72\53\235\231"),v7("\181\57\72\238\92\21", "\98\236\92\36\130\51")}, v7("\135\0\13\180", "\80\196\121\108\218\37\200\213"), function(v151)
	if (v151 == v7("\35\106\3\113", "\234\96\19\98\31\43\110")) then
		v14.ESPColor = Color3.fromRGB(864 - (196 + 668), 1006 - 751, 528 - 273);
	elseif (v151 == v7("\52\26\86", "\235\102\127\50\167\204\18")) then
		v14.ESPColor = Color3.fromRGB(1088 - (171 + 662), 93 - (4 + 89), 0 - 0);
	elseif (v151 == v7("\119\179\240\38\74", "\78\48\193\149\67\36")) then
		v14.ESPColor = Color3.fromRGB(0 + 0, 701 - 446, 0);
	elseif (v151 == v7("\7\22\137\12\68", "\33\80\126\224\120")) then
		v14.ESPColor = Color3.fromRGB(1119 - 864, 100 + 155, 1741 - (35 + 1451));
	elseif (v151 == v7("\213\173\15\200\83\251", "\60\140\200\99\164")) then
		v14.ESPColor = Color3.fromRGB(1708 - (28 + 1425), 2248 - (941 + 1052), 0 + 0);
	end
end);
local function v37()
	local FlatIdent_74B46 = 0;
	local v152;
	local v153;
	local v154;
	local v155;
	while true do
		if (FlatIdent_74B46 == 0) then
			v152 = 0 + 0;
			v153 = nil;
			FlatIdent_74B46 = 1;
		end
		if (FlatIdent_74B46 == 2) then
			while true do
				local v175 = 0 - 0;
				while true do
					if (v175 == (1514 - (822 + 692))) then
						if (v152 == (0 - 0)) then
							local FlatIdent_79729 = 0;
							while true do
								if (FlatIdent_79729 == 1) then
									v152 = 1 + 0;
									break;
								end
								if (0 == FlatIdent_79729) then
									v153, v154 = nil, v14.AimbotFOV;
									v155 = Vector2.new(v13.ViewportSize.X / (1 + 1), v13.ViewportSize.Y / (299 - (45 + 252)));
									FlatIdent_79729 = 1;
								end
							end
						end
						if (v152 == (1 + 0)) then
							for v384, v385 in ipairs(v8:GetPlayers()) do
								local FlatIdent_340E5 = 0;
								while true do
									if (FlatIdent_340E5 == 0) then
										if ((v385 == v12) or (v14.AimbotTeamCheck and (v385.Team == v12.Team))) then
											continue;
										end
										if (v385.Character and v385.Character:FindFirstChild(v14.AimbotBone)) then
											local FlatIdent_4BE81 = 0;
											local v421;
											local v422;
											local v423;
											while true do
												if (FlatIdent_4BE81 == 1) then
													v422, v423 = v13:WorldToViewportPoint(v385.Character[v14.AimbotBone].Position);
													if v423 then
														local v450 = 0;
														local v451;
														while true do
															if (v450 == (0 - 0)) then
																v451 = (Vector2.new(v422.X, v422.Y) - v155).Magnitude;
																if (v451 < v154) then
																	local v464 = 433 - (114 + 319);
																	while true do
																		if (v464 == (0 - 0)) then
																			v154 = v451;
																			v153 = v385;
																			break;
																		end
																	end
																end
																break;
															end
														end
													end
													break;
												end
												if (FlatIdent_4BE81 == 0) then
													v421 = v385.Character:FindFirstChildOfClass(v7("\175\225\9\39\172\136\253\0", "\194\231\148\100\70"));
													if (not v421 or (v421.Health <= (0 - 0))) then
														continue;
													end
													FlatIdent_4BE81 = 1;
												end
											end
										end
										break;
									end
								end
							end
							return v153;
						end
						break;
					end
				end
			end
			break;
		end
		if (FlatIdent_74B46 == 1) then
			v154 = nil;
			v155 = nil;
			FlatIdent_74B46 = 2;
		end
	end
end
local v38 = {};
local function v39(v156)
	local FlatIdent_43E8E = 0;
	local v157;
	local v158;
	while true do
		if (FlatIdent_43E8E == 0) then
			v157 = 0 - 0;
			v158 = nil;
			FlatIdent_43E8E = 1;
		end
		if (FlatIdent_43E8E == 1) then
			while true do
				if (v157 == (2 - 0)) then
					local FlatIdent_89126 = 0;
					while true do
						if (FlatIdent_89126 == 2) then
							v157 = 1 + 2;
							break;
						end
						if (FlatIdent_89126 == 1) then
							v158.HealthBar = Drawing.new(v7("\113\255\76\129\80\235", "\224\34\142\57"));
							v158.HealthBar.Thickness = 2 - 1;
							FlatIdent_89126 = 2;
						end
						if (FlatIdent_89126 == 0) then
							v158.Name.Outline = true;
							v158.Name.Visible = false;
							FlatIdent_89126 = 1;
						end
					end
				end
				if (v157 == (3 + 1)) then
					v38[v156] = v158;
					break;
				end
				if (v157 == (0 - 0)) then
					local FlatIdent_2E949 = 0;
					while true do
						if (FlatIdent_2E949 == 1) then
							v158.Box.Thickness = 1 - 0;
							v158.Box.Filled = false;
							FlatIdent_2E949 = 2;
						end
						if (FlatIdent_2E949 == 0) then
							v158 = {};
							v158.Box = Drawing.new(v7("\117\93\212\162\228\205", "\168\38\44\161\195\150"));
							FlatIdent_2E949 = 1;
						end
						if (FlatIdent_2E949 == 2) then
							v157 = 1;
							break;
						end
					end
				end
				if ((2 - 1) == v157) then
					local FlatIdent_59521 = 0;
					while true do
						if (FlatIdent_59521 == 0) then
							v158.Box.Visible = false;
							v158.Name = Drawing.new(v7("\180\249\154\98", "\118\224\156\226\22\80\136\214"));
							FlatIdent_59521 = 1;
						end
						if (FlatIdent_59521 == 1) then
							v158.Name.Size = 1977 - (556 + 1407);
							v158.Name.Center = true;
							FlatIdent_59521 = 2;
						end
						if (FlatIdent_59521 == 2) then
							v157 = 1208 - (741 + 465);
							break;
						end
					end
				end
				if (v157 == (468 - (170 + 295))) then
					local FlatIdent_8770C = 0;
					while true do
						if (FlatIdent_8770C == 2) then
							v157 = 3 + 1;
							break;
						end
						if (FlatIdent_8770C == 1) then
							v158.Skeleton = {};
							for v336 = 1, 364 - (5 + 349) do
								local FlatIdent_245AA = 0;
								local v337;
								local v338;
								while true do
									if (0 == FlatIdent_245AA) then
										v337 = 0 + 0;
										v338 = nil;
										FlatIdent_245AA = 1;
									end
									if (FlatIdent_245AA == 1) then
										while true do
											if (v337 == (0 + 0)) then
												local FlatIdent_1077D = 0;
												local v386;
												while true do
													if (0 == FlatIdent_1077D) then
														v386 = 0;
														while true do
															if (v386 == (2 - 1)) then
																v337 = 1 + 0;
																break;
															end
															if (v386 == (0 + 0)) then
																local FlatIdent_71B9C = 0;
																while true do
																	if (FlatIdent_71B9C == 0) then
																		v338 = Drawing.new(v7("\242\174\203\216", "\110\190\199\165\189\19\145\61"));
																		v338.Thickness = 1;
																		FlatIdent_71B9C = 1;
																	end
																	if (FlatIdent_71B9C == 1) then
																		v386 = 1 + 0;
																		break;
																	end
																end
															end
														end
														break;
													end
												end
											end
											if (v337 == (1697 - (561 + 1135))) then
												v338.Visible = false;
												table.insert(v158.Skeleton, v338);
												break;
											end
										end
										break;
									end
								end
							end
							FlatIdent_8770C = 2;
						end
						if (FlatIdent_8770C == 0) then
							v158.HealthBar.Filled = true;
							v158.HealthBar.Visible = false;
							FlatIdent_8770C = 1;
						end
					end
				end
			end
			break;
		end
	end
end
local function v40(v159)
	local FlatIdent_85FF9 = 0;
	local v160;
	local v161;
	while true do
		if (FlatIdent_85FF9 == 0) then
			v160 = 1230 - (957 + 273);
			v161 = nil;
			FlatIdent_85FF9 = 1;
		end
		if (FlatIdent_85FF9 == 1) then
			while true do
				if (v160 == (0 + 0)) then
					v161 = v38[v159];
					if v161 then
						local FlatIdent_8A0A6 = 0;
						while true do
							if (FlatIdent_8A0A6 == 1) then
								v161.HealthBar.Visible = false;
								for v363, v364 in pairs(v161.Skeleton) do
									v364.Visible = false;
								end
								break;
							end
							if (FlatIdent_8A0A6 == 0) then
								v161.Box.Visible = false;
								v161.Name.Visible = false;
								FlatIdent_8A0A6 = 1;
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end
for v162, v163 in ipairs(v8:GetPlayers()) do
	if (v163 ~= v12) then
		v39(v163);
	end
end
v8.PlayerAdded:Connect(v39);
v8.PlayerRemoving:Connect(function(v164)
	if v38[v164] then
		local FlatIdent_FC26 = 0;
		local v182;
		while true do
			if (FlatIdent_FC26 == 0) then
				v182 = 0;
				while true do
					if (v182 == (0 + 0)) then
						for v366, v367 in pairs(v38[v164]) do
							if (type(v367) == v7("\206\234\117\228\142", "\167\186\139\23\136\235")) then
								for v424, v425 in pairs(v367) do
									v425:Remove();
								end
							else
								v367:Remove();
							end
						end
						v38[v164] = nil;
						break;
					end
				end
				break;
			end
		end
	end
end);
local v41 = Drawing.new(v7("\57\188\154\14\22\176", "\109\122\213\232"));
v41.Thickness = 3 - 2;
v41.NumSides = 452 - (212 + 176);
v41.Visible = false;
v9.RenderStepped:Connect(function()
	v41.Visible = v14.ShowFOV;
	v41.Radius = v14.AimbotFOV;
	v41.Position = Vector2.new(v13.ViewportSize.X / 2, v13.ViewportSize.Y / (907 - (250 + 655)));
	v41.Color = v15[v14.Theme].Accent;
	local v172 = v12.Character;
	if v172 then
		local FlatIdent_5EF9 = 0;
		local v183;
		local v184;
		while true do
			if (FlatIdent_5EF9 == 1) then
				while true do
					if (v183 == (2 - 1)) then
						if v14.Noclip then
							for v409, v410 in ipairs(v172:GetDescendants()) do
								if v410:IsA(v7("\33\199\100\73\51\199\101\88", "\44\99\166\23")) then
									v410.CanCollide = false;
								end
							end
						end
						break;
					end
					if (v183 == (0 - 0)) then
						local FlatIdent_76EB7 = 0;
						while true do
							if (1 == FlatIdent_76EB7) then
								v183 = 4 - 3;
								break;
							end
							if (FlatIdent_76EB7 == 0) then
								v184 = v172:FindFirstChildOfClass(v7("\198\226\175\49\224\248\171\52", "\80\142\151\194"));
								if (v184 and v14.SpeedHack) then
									v184.WalkSpeed = v14.SpeedValue;
								elseif v184 then
									v184.WalkSpeed = 48 - 32;
								end
								FlatIdent_76EB7 = 1;
							end
						end
					end
				end
				break;
			end
			if (FlatIdent_5EF9 == 0) then
				v183 = 0 - 0;
				v184 = nil;
				FlatIdent_5EF9 = 1;
			end
		end
	end
	if (v14.AimbotEnabled and v10:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)) then
		local FlatIdent_16F8D = 0;
		local v185;
		local v186;
		while true do
			if (FlatIdent_16F8D == 1) then
				while true do
					if (v185 == (0 + 0)) then
						v186 = v37();
						if (v186 and v186.Character) then
							local FlatIdent_3EC52 = 0;
							local v390;
							local v391;
							while true do
								if (FlatIdent_3EC52 == 0) then
									v390 = 0 - 0;
									v391 = nil;
									FlatIdent_3EC52 = 1;
								end
								if (FlatIdent_3EC52 == 1) then
									while true do
										if (v390 == (0 + 0)) then
											v391 = v186.Character:FindFirstChild(v14.AimbotBone);
											if v391 then
												local FlatIdent_73680 = 0;
												local v458;
												local v459;
												local v460;
												local v461;
												local v462;
												while true do
													if (FlatIdent_73680 == 2) then
														v462 = nil;
														while true do
															if ((0 - 0) == v458) then
																local FlatIdent_185A5 = 0;
																while true do
																	if (FlatIdent_185A5 == 1) then
																		v458 = 3 - 2;
																		break;
																	end
																	if (0 == FlatIdent_185A5) then
																		v459 = v13:WorldToViewportPoint(v391.Position);
																		v460 = Vector2.new(v13.ViewportSize.X / (953 - (783 + 168)), v13.ViewportSize.Y / (6 - 4));
																		FlatIdent_185A5 = 1;
																	end
																end
															end
															if (v458 == (1 + 0)) then
																local FlatIdent_696E1 = 0;
																while true do
																	if (FlatIdent_696E1 == 0) then
																		v461 = (v459.X - v460.X) * v14.AimbotSpeed;
																		v462 = (v459.Y - v460.Y) * v14.AimbotSpeed;
																		FlatIdent_696E1 = 1;
																	end
																	if (FlatIdent_696E1 == 1) then
																		v458 = 313 - (309 + 2);
																		break;
																	end
																end
															end
															if (v458 == (5 - 3)) then
																if (math.abs(v461) < (1213 - (1090 + 122))) then
																	v461 = v459.X - v460.X;
																end
																if (math.abs(v462) < 1) then
																	v462 = v459.Y - v460.Y;
																end
																v458 = 1 + 2;
															end
															if ((9 - 6) == v458) then
																mousemoverel(v461, v462);
																break;
															end
														end
														break;
													end
													if (FlatIdent_73680 == 0) then
														v458 = 0;
														v459 = nil;
														FlatIdent_73680 = 1;
													end
													if (FlatIdent_73680 == 1) then
														v460 = nil;
														v461 = nil;
														FlatIdent_73680 = 2;
													end
												end
											end
											break;
										end
									end
									break;
								end
							end
						end
						break;
					end
				end
				break;
			end
			if (FlatIdent_16F8D == 0) then
				v185 = 1780 - (389 + 1391);
				v186 = nil;
				FlatIdent_16F8D = 1;
			end
		end
	end
	for v176, v177 in pairs(v38) do
		local v178 = v176.Character;
		local v179 = v178 and v178:FindFirstChild(v7("\84\226\36\55\61\171\117\243\27\57\60\176\76\246\59\34", "\196\28\151\73\86\83"));
		local v180 = v178 and v178:FindFirstChildOfClass(v7("\219\22\36\17\140\87\17\114", "\22\147\99\73\112\226\56\120"));
		if (v14.ESPEnabled and v180 and (v180.Health > (0 + 0)) and v179 and (v176.Team ~= v12.Team)) then
			local v317, v318 = v13:WorldToViewportPoint(v179.Position);
			if v318 then
				local v343 = v13:WorldToViewportPoint(v179.Position + Vector3.new(0 + 0, 1121 - (628 + 490), 0 + 0));
				local v344 = math.abs(v343.Y - v13:WorldToViewportPoint(v179.Position - Vector3.new(0, 3, 0 - 0)).Y);
				local v345 = v344 * (0.6 + 0);
				if v14.BoxESP then
					local FlatIdent_6B92D = 0;
					while true do
						if (FlatIdent_6B92D == 1) then
							v177.Box.Position = Vector2.new(v317.X - (v345 / (897 - (557 + 338))), v317.Y - (v344 / 2));
							v177.Box.Color = v14.ESPColor;
							break;
						end
						if (FlatIdent_6B92D == 0) then
							v177.Box.Visible = true;
							v177.Box.Size = Vector2.new(v345, v344);
							FlatIdent_6B92D = 1;
						end
					end
				end
				if v14.NameESP then
					local FlatIdent_3EEB1 = 0;
					while true do
						if (FlatIdent_3EEB1 == 1) then
							v177.Name.Position = Vector2.new(v317.X, (v317.Y - (v344 / (1 + 1))) - (42 - 27));
							v177.Name.Color = v14.ESPColor;
							break;
						end
						if (FlatIdent_3EEB1 == 0) then
							v177.Name.Visible = true;
							v177.Name.Text = v176.Name;
							FlatIdent_3EEB1 = 1;
						end
					end
				end
				if v14.HealthESP then
					local FlatIdent_95359 = 0;
					local v403;
					local v404;
					while true do
						if (1 == FlatIdent_95359) then
							while true do
								if (v403 == (774 - (431 + 343))) then
									v404 = v180.Health / v180.MaxHealth;
									v177.HealthBar.Visible = true;
									v403 = 2 - 1;
								end
								if (v403 == (802 - (499 + 302))) then
									local FlatIdent_54124 = 0;
									while true do
										if (FlatIdent_54124 == 0) then
											v177.HealthBar.Size = Vector2.new(3 - 1, v344 * v404);
											v177.HealthBar.Position = Vector2.new((v317.X - (v345 / (5 - 3))) - (4 + 1), (v317.Y + (v344 / (1 + 1))) - (v344 * v404));
											FlatIdent_54124 = 1;
										end
										if (FlatIdent_54124 == 1) then
											v403 = 1697 - (556 + 1139);
											break;
										end
									end
								end
								if (v403 == (7 - 5)) then
									v177.HealthBar.Color = Color3.fromRGB(255 * ((16 - (6 + 9)) - v404), 255 * v404, 0 - 0);
									break;
								end
							end
							break;
						end
						if (0 == FlatIdent_95359) then
							v403 = 0 - 0;
							v404 = nil;
							FlatIdent_95359 = 1;
						end
					end
				end
				if v14.SkeletonESP then
					local function v405(v411, v412, v413)
						local v414, v415 = v178:FindFirstChild(v411), v178:FindFirstChild(v412);
						if (v414 and v415) then
							local v440 = 0 + 0;
							local v441;
							local v442;
							local v443;
							local v444;
							local v445;
							while true do
								if ((1 + 0) == v440) then
									local FlatIdent_5B476 = 0;
									while true do
										if (FlatIdent_5B476 == 0) then
											v443 = nil;
											v444 = nil;
											FlatIdent_5B476 = 1;
										end
										if (FlatIdent_5B476 == 1) then
											v440 = 2;
											break;
										end
									end
								end
								if (v440 == (169 - (28 + 141))) then
									local FlatIdent_E47D = 0;
									while true do
										if (FlatIdent_E47D == 1) then
											v440 = 1;
											break;
										end
										if (FlatIdent_E47D == 0) then
											v441 = 0 - 0;
											v442 = nil;
											FlatIdent_E47D = 1;
										end
									end
								end
								if ((1 + 1) == v440) then
									v445 = nil;
									while true do
										if ((0 - 0) == v441) then
											v442, v443 = v13:WorldToViewportPoint(v414.Position);
											v444, v445 = v13:WorldToViewportPoint(v415.Position);
											v441 = 1 + 0;
										end
										if (v441 == (1318 - (486 + 831))) then
											if (v443 and v445) then
												local FlatIdent_2E7F5 = 0;
												local v465;
												local v466;
												while true do
													if (FlatIdent_2E7F5 == 1) then
														while true do
															if (v465 == (2 - 1)) then
																local FlatIdent_3B2E6 = 0;
																while true do
																	if (FlatIdent_3B2E6 == 1) then
																		v465 = 6 - 4;
																		break;
																	end
																	if (FlatIdent_3B2E6 == 0) then
																		v466.From = Vector2.new(v442.X, v442.Y);
																		v466.To = Vector2.new(v444.X, v444.Y);
																		FlatIdent_3B2E6 = 1;
																	end
																end
															end
															if (v465 == (1503 - (1395 + 108))) then
																local FlatIdent_6BDA4 = 0;
																while true do
																	if (FlatIdent_6BDA4 == 0) then
																		v466 = v177.Skeleton[v413];
																		v466.Visible = true;
																		FlatIdent_6BDA4 = 1;
																	end
																	if (FlatIdent_6BDA4 == 1) then
																		v465 = 1;
																		break;
																	end
																end
															end
															if ((1 + 1) == v465) then
																v466.Color = v14.ESPColor;
																break;
															end
														end
														break;
													end
													if (FlatIdent_2E7F5 == 0) then
														v465 = 0;
														v466 = nil;
														FlatIdent_2E7F5 = 1;
													end
												end
											end
											break;
										end
									end
									break;
								end
							end
						end
					end
					v405(v7("\144\112\227\241", "\237\216\21\130\149"), v7("\183\94\79\90\162\253\81\144\93\80", "\62\226\46\63\63\208\169"), 3 - 2);
					v405(v7("\208\9\69\134\13\57\32\76\246\22", "\62\133\121\53\227\127\109\79"), v7("\60\27\37\240\196\154\173\2\7\61", "\194\112\116\82\149\182\206"), 2);
					v405(v7("\12\184\92\29\210\214\1\43\187\67", "\110\89\200\44\120\160\130"), v7("\135\198\77\82\118\90\43\72\185\226\89\75", "\45\203\163\43\38\35\42\91"), 1207 - (7 + 1197));
					v405(v7("\254\128\218\55\178\185\68\215\151\253\49\138", "\52\178\229\188\67\231\201"), v7("\13\68\86\16\219\83\52\36\83\113\22\250", "\67\65\33\48\100\151\60"), 1267 - (668 + 595));
					v405(v7("\234\247\190\221\225\235\232\188\203\252", "\147\191\135\206\184"), v7("\182\33\161\201\204\102\162\148\45\180\224\202\94", "\210\228\72\198\161\184\51"), 5 + 0);
					v405(v7("\4\64\244\24\103\251\38\89\246\2\82\220\59", "\174\86\41\147\112\19"), v7("\105\9\138\3\49\35\30\188\94\18\172\25\40", "\203\59\96\237\107\69\111\113"), 2 + 4);
					v405(v7("\8\25\187\228\35\196\216\54\5\163", "\183\68\118\204\129\81\144"), v7("\34\168\118\240\62\146\30\168\98\200\14\133", "\226\110\205\16\132\107"), 326 - (27 + 292));
					v405(v7("\199\198\230\205\116\251\211\229\203\109\238\196", "\33\139\163\128\185"), v7("\123\93\2\202\123\87\19\219\69\116\1\217", "\190\55\56\100"), 21 - 13);
					v405(v7("\122\160\43\27\1\215\252\68\188\51", "\147\54\207\92\126\115\131"), v7("\63\56\50\117\25\75\29\33\48\111\33\123\10", "\30\109\81\85\29\109"), 299 - (23 + 267));
					v405(v7("\205\120\83\190\34\235\236\239\116\70\154\51\217", "\156\159\17\52\214\86\190"), v7("\156\230\186\180\186\195\178\171\171\253\145\185\169", "\220\206\143\221"), 1954 - (1129 + 815));
				end
			else
				v40(v176);
			end
		else
			v40(v176);
		end
	end
end);
v10.InputBegan:Connect(function(v173)
	if (v173.KeyCode == v14.MenuKey) then
		local FlatIdent_3B79 = 0;
		while true do
			if (FlatIdent_3B79 == 0) then
				v14.MenuVisible = not v14.MenuVisible;
				v18.Visible = v14.MenuVisible;
				break;
			end
		end
	end
end);
Rayfield:Notify({[v7("\178\116\57\27\221", "\178\230\29\77\119\184\172")]=v7("\208\170\15\9\121\241\225\167\74\51\98\250", "\152\149\222\106\123\23"),[v7("\254\41\248\87\176\211\50", "\213\189\70\150\35")]=v7("\108\71\113\9\91\80\112\72\77\76\52\60\78\66\125\16\85\27", "\104\47\53\20"),[v7("\135\89\147\29\168\6\172\66", "\111\195\44\225\124\220")]=4});