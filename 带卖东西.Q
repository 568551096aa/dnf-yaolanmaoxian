[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=d74a9ac7-f8f3-4f02-bb0e-448b8e4e8d1c
Description=带卖东西
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]

Hwnd = Plugin.Window.Foreground()
sRect = Plugin.Window.GetWindowRect(Hwnd)
dim MyArray   
MyArray = Split(sRect, "|")   
//下面这句将字符串转换成数值   
W1 = Clng(MyArray(0)): H1 = Clng(MyArray(1))   
W2 = Clng(MyArray(2)): H2 = Clng(MyArray(3))   
TracePrint W1
TracePrint H1

/*
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\分解机.bmp",0.8,intX,intY
    If intX > 0 And intY > 0 Then 
        j = 1
        MoveTo intX,intY
        Delay 200
        LeftClick 1
        Delay 200
    Else 
      j = 0
    End If
*/

g_pass_map = 0
g_chCount = 7
// 亮度19
// 第几个角色
g_charIndex = 0

sTime = Plugin.Sys.GetTime()

g_charIndexPosX = W1 + 183
g_charIndexPosY = H1 + 330
g_charDistan = 227
getPos


g_intx = 0
g_inty = 0
g_CurPos = 1
g_sim = 20
g_isEnd = 0
g_spec = 0
g_sudu = 1
g_time = 0
g_maiwu = 0
TracePrint g_win_x
TracePrint g_win_y

shuaci =  0


While true
	g_spec = 0
	g_time = 0
	pos 
    //TracePrint g_intx
    //TracePrint g_inty
	If g_intx > g_win_x - g_sim And g_intx < g_win_x + g_sim And g_inty > g_win_y - g_sim And g_inty < g_win_y + g_sim And g_CurPos = 1 Then 
    	FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\背包满了.bmp",0.6,intX,intY
    	If intX > 0 And intY > 0 Then 
    	    TracePrint "包满"
    	    g_maiwu = 1
    	End If
    	map1 
    	g_CurPos = g_CurPos + 1
    	TracePrint "map1"
    ElseIf g_intx > g_win_x - 6 - g_sim And g_intx < g_win_x - 6 + g_sim And g_inty > g_win_y - 17 - g_sim And g_inty < g_win_y - 17 + g_sim Then
		map2_after
    ElseIf g_intx > g_win_x - 33 - g_sim And g_intx < g_win_x - 33 + g_sim And g_inty > g_win_y - 30 - g_sim And g_inty < g_win_y - 30 + g_sim Then
    	map3_after
    ElseIf g_intx > g_win_x - 33 - g_sim And g_intx < g_win_x - 33 + g_sim And g_inty > g_win_y - 59 - g_sim And g_inty < g_win_y - 59 + g_sim Then
    	map4_after
    ElseIf g_intx > g_win_x - 1 - g_sim And g_intx < g_win_x - 1 + g_sim And g_inty > g_win_y - 56 - g_sim And g_inty < g_win_y - 56 + g_sim Then
    	map5_after
    ElseIf g_intx > g_win_x - g_sim And g_intx < g_win_x + g_sim And g_inty > g_win_y - 86 - g_sim And g_inty < g_win_y - 86 + g_sim Then
    	map6_after 
    ElseIf g_spec = 2 Then
        map7_after
	End If
	//通过判断表达式的取值，来执行后面的动作或控制

Wend

Function map2_after
        If g_CurPos = 2 Then 
    	    map2 
    	    g_CurPos = g_CurPos + 1
    	    // TracePrint "map2"
    	ElseIf g_CurPos = 3 Then
    	    //TracePrint "map2_after"
    	    If g_pass_map = 52 Then
    	        Restart 
    	    ElseIf (g_pass_map < 31 Or g_pass_map > 31) and g_pass_map < 53 Then  
    	    	Delay 100
    	    	g_pass_map = g_pass_map + 1
    	    Else 
    	        KeyPress "Num 6", 1
    	        Delay 800
    	        KeyDown "D", 1
    	        Delay 244
    	        KeyUp "D", 1
    	        Delay 200
    	        KeyDown "A", 1
    	        Delay 350
    	        KeyUp "A", 1
    	        g_pass_map = g_pass_map + 1
    	        Delay 500
    	    End If
    	Else 
    	    TracePrint "map2 erro2"
    	    ExitScript 
        End If
End Function

Function map3_after
        If g_CurPos = 3 Then 
    	    map3
    	    g_CurPos = g_CurPos + 1
    	    //TracePrint "map3"
    	ElseIf g_CurPos = 4 Then
    	    //TracePrint "map3_after"
    	    If g_pass_map = 52 Then
    	        Restart 
    	    ElseIf (g_pass_map < 31 Or g_pass_map > 31) and g_pass_map < 53 Then  
    	    	Delay 100
    	    	g_pass_map = g_pass_map + 1
    	    Else 
    	        KeyPress "Num 6", 1
    	        Delay 800
    	        KeyDown "S", 1
    	        Delay 244
    	        KeyUp "S", 1
    	        Delay 200
    	        KeyDown "W", 1
    	        Delay 350
    	        KeyUp "W", 1
    	        g_pass_map = g_pass_map + 1
    	        Delay 500
    	    End If
    	Else 
    	    TracePrint "map3 erro2"
    	    ExitScript 
        End If
End Function

Function map4_after
        If g_CurPos = 4 Then 
    	    map4 
    	    g_CurPos = g_CurPos + 1
    	    //TracePrint "map4"
    	ElseIf g_CurPos = 5 Then
    	    //TracePrint "map4_after"
    	    If g_pass_map = 52 Then
    	        Restart 
    	    ElseIf (g_pass_map < 31 Or g_pass_map > 31) and g_pass_map < 53 Then  
    	    	Delay 100
    	    	g_pass_map = g_pass_map + 1
    	    Else 
    	        KeyPress "Num 6", 1
    	        Delay 800
    	        KeyDown "A", 1
    	        Delay 244
    	        KeyUp "A", 1
    	        Delay 200
    	        KeyDown "D", 1
    	        Delay 350
    	        KeyUp "D", 1
    	        g_pass_map = g_pass_map + 1
    	    End If
    	Else 
    	    TracePrint "map4 erro2"
    	    ExitScript 
        End If
End Function

Function map5_after
        If g_CurPos = 5 Then 
    	    map5 
    	    g_CurPos = g_CurPos + 1
    	    //TracePrint "map5"
    	ElseIf g_CurPos = 6 Then
    	    //TracePrint "map5_after"
    	    If g_pass_map = 52 Then
    	        Restart 
    	    ElseIf (g_pass_map < 31 Or g_pass_map > 31) and g_pass_map < 53 Then  
    	    	Delay 100
    	    	g_pass_map = g_pass_map + 1
    	    Else 
    	        KeyPress "Num 6", 1
    	        Delay 800
    	        KeyDown "S", 1
    	        Delay 300
    	        KeyUp "S", 1
    	        Delay 200
    	        KeyDown "W", 1
    	        Delay 410
    	        KeyUp "W", 1
    	        g_pass_map = g_pass_map + 1
    	        Delay 500
    	    End If
    	Else 
    	    TracePrint "map5 erro2"
    	    ExitScript 
        End If
End Function

Function map6_after
        If g_CurPos = 6 Then 
    	    map6
    	    g_CurPos = g_CurPos + 1
    	    //TracePrint "map5"
    		If g_spec = 1 Then 
    			Delay 2200
    		End If
    	ElseIf g_CurPos = 7 Then
    	    //TracePrint "map5_after"
    	    If g_pass_map = 52 Then
    	        Restart 
    	    ElseIf (g_pass_map < 31 Or g_pass_map > 31) and g_pass_map < 53 Then  
    	    	Delay 100
    	    	g_pass_map = g_pass_map + 1
    	    Else 
    	        KeyPress "Num 6", 1
    	        Delay 800
    	        KeyDown "S", 1
    	        Delay 244
    	        KeyUp "S", 1
    	        Delay 200
    	        KeyDown "W", 1
    	        Delay 350
    	        KeyUp "W", 1
    	        g_pass_map = g_pass_map + 1
    	        Delay 500
    	    End If
    	Else 
    	    TracePrint "map6 erro2"
    	    ExitScript 
        End If
End Function

Function map7_after
        If g_CurPos = 7 Then 
    	    map7 
    	    //killBoss 
    	    FanPai 
    	    If time > 100 Then 
    	        Restart
    	    Else 
    	        IsRester 
    	        KeyPress "R", 1
    	        Delay 2000
    	    End If
    	    g_CurPos = 1
    	Else 
    	    TracePrint "map7 erro2"
    	    ExitScript 
        End If
End Function


Function map1
   g_pass_map = 0
   KeyPress "Ctrl", 1
   Delay 100
            KeyPress "Ctrl", 1
			Delay 1800
			KeyDown "D", 1
			Delay 248 * g_sudu
			KeyDown "W", 1
			Delay 502 * g_sudu
			KeyDown "W", 1
			Delay 34
			KeyUp "D", 1
			KeyUp "W", 1
			Delay 200
End Function
Function map2
g_pass_map = 0
			KeyDown "D", 1
			Delay 220 * g_sudu
			KeyUp "D", 1
			KeyDown "W", 1
			Delay 395 * g_sudu
			KeyUp "W", 1
			KeyDown "Num -", 1
			Delay 43
			Delay 21
			KeyUp "Num -", 1
			Delay 738
			KeyDown "A", 1
			Delay 144 * g_sudu
			Delay 440 * g_sudu
			KeyUp "A", 1
End Function

Function map3
g_pass_map = 0
			KeyDown 18, 1
			Delay 64
			KeyDown "Num 7", 1
			Delay 233
			KeyUp 18, 1
			Delay 63
			KeyUp "Num 7", 1
			Delay 350
			KeyDown "A", 1
			Delay 365
			KeyDown "W", 1
			Delay 64
			KeyUp "A", 1
			Delay 300
			KeyUp "A", 1
			KeyUp "W", 1
End Function
Function map4
g_pass_map = 0
    			KeyPress "D", 1
				Delay 200
				KeyDown "W", 1
				Delay 320
				KeyUp "W", 1
				Delay 55
				KeyDown "Num 3", 1
				Delay 87
				KeyUp "Num 3", 1
				Delay 200
				KeyDown "Num 5", 1
				Delay 41
				KeyUp "Num 5", 1
				Delay 60
				KeyDown "Num 5", 1
				Delay 40
				KeyUp "Num 5", 1
				Delay 104
				KeyDown "Num 5", 1
				Delay 42
				KeyUp "Num 5", 1
				Delay 60
				KeyDown "Num 5", 1
				Delay 63
				KeyUp "Num 5", 1
				Delay 64
				KeyDown "Num 5", 1
				Delay 60
				KeyUp "Num 5", 1
				Delay 60
				KeyDown "Num 5", 1
				Delay 60
				KeyUp "Num 5", 1
				Delay 66
				KeyDown "Num 5", 1
				Delay 64
				KeyUp "Num 5", 1
				Delay 66
				KeyDown "Num 5", 1
				Delay 64
				KeyUp "Num 5", 1
				Delay 66
				KeyDown "Num 5", 1
				Delay 64
				KeyUp "Num 5", 1
End Function
Function map5
g_pass_map = 0
			KeyDown "D", 1
			Delay 70
			KeyUp "D", 1
			Delay 400
			KeyDown "Num *", 1
			Delay 191
			KeyUp "Num *", 1
			Delay 700
			KeyDown "W", 1
			Delay 500 * g_sudu
			Delay 33
			KeyDown "W", 1
			Delay 34
			KeyDown "W", 1
			Delay 33
			KeyUp "W", 1
End Function
Function map6
g_pass_map = 0
			KeyDown "W", 1
			Delay 233 * g_sudu
			KeyUp "W", 1
			Delay 24
			KeyDown "Alt", 1
			Delay 64
			KeyPress "Num 9", 1
			Delay 70
			KeyUp "Alt", 1
			Delay 102
			KeyDown "Alt", 1
			Delay 100
			KeyUp "Alt", 1
			Delay 500
			KeyDown "D", 1
			Delay 425 * g_sudu
			KeyUp "D", 1
			Delay 40
			KeyDown "W", 1
			Delay 500 * g_sudu
			KeyDown "W", 1
			Delay 17
			Delay 31
			KeyDown "W", 1
			Delay 9
			KeyUp "W", 1
End Function
Function map7
g_pass_map = 0
			KeyDown "W", 1
			Delay 145
			KeyUp "W", 1
			KeyPress "A", 1
			Delay 200
			KeyPress "Q", 1
			Delay 400
			KeyDown "Num 4", 1
			Delay 100
			KeyUp "Num 4", 1
			Delay 300
			KeyDown "Num 6", 1
			Delay 125
			KeyUp "Num 6", 1
			Delay 300
			Delay 2378
			KeyDown "Z", 1
			Delay 126
			KeyUp "Z", 1
			Delay 170
			KeyDown "Num 1", 1
			Delay 79
			KeyUp "Num 1", 1
			Delay 144
			KeyDown "Num 1", 1
			Delay 63
			KeyUp "Num 1", 1
			Delay 105
			KeyDown "Num 1", 1
			Delay 89
			KeyUp "Num 1", 1
			Delay 79
			KeyDown "Num 1", 1
			Delay 111
			KeyUp "Num 1", 1
			Delay 80
			KeyDown "Num 1", 1
			Delay 90
			KeyUp "Num 1", 1
			Delay 80
			KeyDown "Num 1", 1
			Delay 86
			KeyUp "Num 1", 1
			Delay 104
			KeyDown "Num 1", 1
			Delay 80
			KeyUp "Num 1", 1
			Delay 88
			KeyDown "Num 1", 1
			Delay 81
			KeyUp "Num 1", 1
			Delay 88
			KeyDown "Num 1", 1
			Delay 81
			KeyUp "Num 1", 1
			Delay 85
			KeyDown "Num 1", 1
			Delay 81
			KeyUp "Num 1", 1
			Delay 64
			KeyDown "Num 1", 1
			Delay 89
			KeyUp "Num 1", 1
			Delay 79
			KeyDown "Num 1", 1
			Delay 88
			KeyUp "Num 1", 1
			Delay 105
			KeyDown "Num 1", 1
			Delay 80
			KeyUp "Num 1", 1
			
	shuaci = shuaci + 1
	TracePrint "刷图次数 " & shuaci
End Function


While true
	key = WaitKey
	TracePrint key
	Select Case key
		Case 49

		Case 50
    		//情况2
    	Case 51

		Case 52

		Case 53
			'==========以下是按键精灵录制的内容==========

			'==========以上是按键精灵录制的内容==========

		Case 54
    		//情况2
    	'==========以下是按键精灵录制的内容==========

			'==========以上是按键精灵录制的内容==========
		Case 55
			'==========以下是按键精灵录制的内容==========

			KeyPress "Esc", 1
			'==========以上是按键精灵录制的内容==========
    		//否则
    		IsRester 
    		KeyPress "Esc", 1
    		KeyPress "R", 1
    		TracePrint "7end"
		Case 56
    		
    			//否则	
    		KeyPress "R", 1
		Case 57
    	//否则	
    		KeyPress "Esc", 1
		Case 59
    		//否则	
	End Select

Wend

Function errorEvent

	While i = 0
    	If time > 5000 Then 
			ExitScript
		End If
		Delay 100
	Wend

End Function




Function pos

	i = 0
	While i = 0
		FindPic g_rect_left_x, g_rect_left_y, g_rect_right_x, g_rect_right_y,"C:\Users\wang\Desktop\ImageIdentification\人物位置.bmp",0.7,g_intx,g_inty
		If g_intx > 0 And g_inty > 0 Then 
			i = 1
		End If
		If i = 0 And g_CurPos = 6 Then 
			FindPic g_rect_left_x, g_rect_left_y, g_rect_right_x, g_rect_right_y,"C:\Users\wang\Desktop\ImageIdentification\map6.bmp",0.6,g_intx,g_inty
			If g_intx > 0 And g_inty > 0 Then 
				i = 1
				g_spec = 1
				TracePrint "裂缝门"
			End If
		End If
		If i = 0 And g_CurPos = 6 Then 
			FindPic g_rect_left_x, g_rect_left_y, g_rect_right_x, g_rect_right_y,"C:\Users\wang\Desktop\ImageIdentification\map61.bmp",0.6,g_intx,g_inty
			If g_intx > 0 And g_inty > 0 Then 
				i = 1
				g_spec = 1
				TracePrint "裂缝门"
			End If
		End If
		If i = 0 And g_CurPos = 7 Then 
			FindPic W1 + 410 , H1 + 196, W1 + 1022, H1 + 669,"C:\Users\wang\Desktop\ImageIdentification\map7.bmp",0.7,g_intx,g_inty
			If g_intx > 0 And g_inty > 0 Then 
				g_spec = 2
				i = 1
				// TracePrint "boss"
			End If
		End If
		Delay 120
	Wend

End Function

Function noPos
	i = 0   
	While i = 0
		FindPic g_rect_left_x, g_rect_left_y, g_rect_right_x, g_rect_right_y,"C:\Users\wang\Desktop\ImageIdentification\人物位置.bmp",0.8,intX,intY
		TracePrint intX
		TracePrint intYs
		If intX <= 0 Or intY <= 0 Then 
			i = 1
		End If
		Delay 100
	Wend   
End Function


Function bossmap
	i = 0   
	While i = 0
		FindPic g_rect_left_x, g_rect_left_y, g_rect_right_x, g_rect_right_y,"C:\Users\wang\Desktop\ImageIdentification\boss.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			i = 1
		End If
		Delay 100
	Wend   
End Function

Function FanPai
	i = 0
	While i = 0
		FindPic W1,H1,W2,H2,"C:\Users\wang\Desktop\ImageIdentification\跳过.bmp",0.8,intX,intY
		If intX > 0 And intY > 0 Then 
			i = 1
			KeyPress "Esc", 1
		End If
		g_time = g_time + 1
		Delay 100
	Wend
End Function

Function IsRester

	i = 0
	While i = 0
		FindPic g_again_left_x,g_again_left_y,g_again_right_x,g_again_right_y,"C:\Users\wang\Desktop\ImageIdentification\再次挑战.bmp",0.7,intX,intY
		If intX > 0 And intY > 0 Then 
			i = 1
			// TracePrint g_maiwu
			If g_maiwu = 1 Then 
			    TracePrint "图里背包满"
				SellThing2 
				g_maiwu = 0
			End If
			//ExitScript
			KeyPress "Esc", 1
		End If
		FindPic g_again_left_x,g_again_left_y,g_again_right_x,g_again_right_y,"C:\Users\wang\Desktop\ImageIdentification\疲劳完了.bmp",0.7,intX,intY
		If intX > 0 And intY > 0 Then 
			// TracePrint "end"
			g_charIndex = g_charIndex + 1
			KeyPress "Esc", 1
		    ChangeChar
		    i = 1 
		End If
		Delay 100
		
	Wend
End Function


Function Loading
	i = 0   
	While i = 0   
		FindPic g_rect_left_x, g_rect_left_y, g_rect_right_x, g_rect_right_y,"C:\Users\Administrator\Desktop\图像编辑-未命名.bmp",0.9,intX,intY
		If intX > 0 And intY > 0 Then 
			i = 1
		End If
		Delay 10
	Wend   
End Function

Function IsEnd
	i = 0   
	While i = 0
		FindPic g_again_left_x,g_again_left_y,g_again_right_x,g_again_right_y,"C:\Users\wang\Desktop\ImageIdentification\疲劳完了.bmp",0.7,intX,intY
		If intX > 0 And intY > 0 Then 
			i = 1
		End If
		Delay 100
		KeyPress "Esc", 1
	Wend   
End Function
// 打不死boss
Function killBoss
	FindPic g_rect_left_x, g_rect_left_y, g_rect_right_x, g_rect_right_y,"C:\Users\wang\Desktop\ImageIdentification\boss.bmp",0.6,intX,intY
	If intX > 0 And intY > 0 Then 
		KeyPress "A", 1
		Delay 20
		KeyPress "Q", 1
		i = 1
	End If
End Function

Function checkWindPos
	i = 0   
	While i = 0
		FindPic g_rect_left_x, g_rect_left_y, g_rect_right_x, g_rect_right_y,"C:\Users\wang\Desktop\ImageIdentification\boss.bmp",0.6,intX,intY
		If intX > 0 And intY > 0 Then 
			TracePrint intX
			TracePrint intY
			i = 1
		End If
		Delay 100
	Wend   
End Function


Function getPos
		// 再次挑战窗口
		g_again_left_x = W1 + 873
		g_again_left_y = H1 + 86
		g_again_right_x  = W1 + 1275
		g_again_right_y = H1 + 375
    
	FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\boss.bmp",0.7,intX,intY
	If intX > 0 And intY > 0 Then 
		g_rect_left_x = intX - 32
		g_rect_left_y = intY - 36
		g_rect_right_x  = intX + 57
		g_rect_right_y = intY + 143
	Else 
	    TracePrint "find boos fail"
	    ExitScript
	End If


	While i = 0
		FindPic g_rect_left_x, g_rect_left_y, g_rect_right_x, g_rect_right_y,"C:\Users\wang\Desktop\ImageIdentification\人物位置.bmp",0.7,g_intx,g_inty
		If g_intx > 0 And g_inty > 0 Then 
			g_win_x = g_intx
			g_win_y = g_inty
			i = 1
		End If
	Delay 200
	Wend
End Function

Function IsEsc
        KeyPress "Esc", 1
        FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\esc.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
            Delay 200
        Else 
            KeyPress "Esc", 1
		End If
		Delay 500
End Function

Function ChangeChar
    
    KeyPress "`", 1
    Delay 300
    KeyPress "`", 1
	Delay 5000

    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\疲劳完了.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
       Delay 1000
    End If
	
    SellThing 
    Delay 100
    ZhengLi 
    Delay 100
    FenJieThing 
    Delay 100
    RenWu
	
	KeyPress "Esc", 1
	Delay 500
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\esc.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
        Delay 200
    Else 
        TracePrint "没找打开esc"
        KeyPress "Esc", 1
	End If
		
		
    // 到选择角色界面
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\选择角色.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
       MoveTo intX + 10, intY + 10
       LeftClick 1
       Delay 2000
    Else 
       TracePrint "没找到选择角色按钮"
       ExitScript
    End If
    If g_charIndex >= g_chCount Then 
    	TracePrint "over"
    	ExitScript
    End If
    
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\选择角色界面.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
       If g_charIndex >= 11 Then 
           If g_charIndex = 11 Then 
				MoveTo W1 + 1264, H1 + 858
           		Delay 120
				LeftClick 1
            	Delay 300
           End If
           
            MoveTo (W1 + 112) + (208 * (g_charIndex - 11)), H1 + 668
           Delay 200
       ElseIf g_charIndex >= 5 Then
           MoveTo (W1 + 112) + (208 * (g_charIndex - 5)), H1 + 668
           Delay 200
       Else 
           MoveTo g_charIndexPosX + g_charIndex * g_charDistan, g_charIndexPosY
           Delay 200
       End If
       LeftClick 1
       Delay 80
       LeftClick 1
       Delay 5000
    Else 
       TracePrint "没到选择角色界面"
       ExitScript
    End If
    TracePrint "刷第 " & g_charIndex & " 个角色"
    eTime = Plugin.Sys.GetTime()
    TracePrint " 耗时 " & (eTime - sTime)/60/1000 & " 分钟"
    
    
    TracePrint sDate
    KeyDown "D", 1
    Delay 3000
    KeyUp "D", 1
    Delay 1000
    i = 0
    For 10
    FindPic W1 + 415, H1 + 309, W2 + 871, H2 + 944,"C:\Users\wang\Desktop\ImageIdentification\比尔谢号 - 副本.bmp",0.6,intX,intY
    If intX > 0 And intY > 0 Then 
       Delay 100
       MoveTo intX, intY
    End If
    FindPic W1 + 415, H1 + 309, W2 + 871, H2 + 944,"C:\Users\wang\Desktop\ImageIdentification\截图20230321210400.bmp",0.6,intX,intY
    If intX > 0 And intY > 0 Then 
       Delay 100
       MoveTo intX, intY
    End If
    Delay 100
    Next
    


    Delay 200
    LeftClick 1
    Delay 2000
    
    MoveTo W1 + 864, H1 + 416
    Delay 200
    LeftClick 1
    Delay 500
   
    MoveTo W1 +762, H1 +533
    Delay 200
    LeftClick 1
    Delay 500
    
    MoveTo W1 +689, H1 +921
    Delay 200
    LeftClick 1
    Delay 100
    MoveTo W1 + 864, H1 + 416
    Delay 400
    
    
    Delay 4000
    KeyDown "D", 1
    Delay 6000
    KeyUp "D", 1
    // 选择地图
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\是否选中了摇篮地图.bmp",0.7,intX,intY
    If intX < 1 Or intY < 1 Then 
       MoveTo W1 +803, H1 +537
       Delay 200
       LeftClick 1
       Delay 400
    End If
    
    i = 0
    While i < 1
       // 选择冒险
        FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\冒险摇篮.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
           KeyPress "Space", 1
           i = 2
           TracePrint "222"
        Else 
            KeyPress "A", 1
            Delay 500
        End If
        i = i - 1
        If i = -10  Then 
        	TracePrint "没有找到冒险"
            ExitScript
        End If
    Wend
    
End Function


// 商店
// 分解

Function SellThing
    j = 0
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\分解机.bmp",0.8,intX,intY
    If intX > 0 And intY > 0 Then 
        j = 1
        MoveTo intX,intY
        Delay 200
        LeftClick 1
        Delay 200
    Else 
      j = 0
    End If
    If j = 1 Then 
    	MoveTo intX + 45, intY + 44
        Delay 200
        LeftClick 1
        Delay 400
    End If
    

    FindPic W1, H1 + 729, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\出售.bmp",0.7,intX,intY
    If j = 1 And intX > 0 And intY > 0 Then 
       MoveTo intX,intY
       Delay 200
       LeftClick 1
       Delay 200
    End If
    

    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\出售.bmp",0.7,intX,intY
    If j = 1 And intX > 0 And intY > 0 Then 
       MoveTo intX,intY
       Delay 200
       LeftClick 1
       Delay 200
    End If
    
    
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\确定出售.bmp",0.8,intX,intY
    If j = 1 And intX > 0 And intY > 0 Then 
       MoveTo intX,intY
       Delay 200
       LeftClick 1
       Delay 200
       MoveTo intX - 93, intY
       Delay 200
       LeftClick 1
       Delay 300
       KeyPress "Esc", 1
       Delay 200
    End If
End Function

Function SellThing2
    j = 0

    FindPic W1, H1 + 729, W1 + 300, H2,"C:\Users\wang\Desktop\ImageIdentification\出售.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
       j = 1
       MoveTo intX,intY
       Delay 200
       LeftClick 1
       Delay 200
    End If
    

    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\出售.bmp",0.7,intX,intY
    If j = 1 And intX > 0 And intY > 0 Then 
       MoveTo intX,intY
       Delay 200
       LeftClick 1
       Delay 200
    End If
    
    
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\确定出售.bmp",0.6,intX,intY
    If j = 1 And intX > 0 And intY > 0 Then 
       MoveTo intX,intY
       Delay 200
       LeftClick 1
       Delay 200
       MoveTo intX - 93, intY
       Delay 200
       LeftClick 1
       Delay 300
    End If
End Function

Function RenWu
    FindPic W1, H1 + 729, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\任务.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
       j = 1
       MoveTo intX + 10,intY + 10
       Delay 200
       LeftClick 1
       Delay 200
    End If
    MoveTo W1 + 586, H1 + 369
    Delay 150
    LeftClick 1
    Delay 150
    MoveTo W1 + 586, H1 + 369 + 100
    Delay 150
    LeftClick 1
    Delay 150
    MoveTo W1 + 586, H1 + 369 + 200
    Delay 150
    LeftClick 1
    Delay 150
    KeyPress "Esc", 1
	Delay 300
End Function

Function FenJieThing
    j = 0
    FindPic W1 + 155, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\分解机.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
       j = 1
       MoveTo intX,intY
       Delay 200
       LeftClick 1
       Delay 200
    Else 
       j = 0
    End If
    If j = 1 Then 
    	MoveTo intX + 45, intY + 88
        Delay 200
        LeftClick 1
        Delay 400
    End If
    
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\分解.bmp",0.7,intX,intY
    If j = 1 And intX > 0 And intY > 0 Then 
        iK = 0
        For 8
        	MoveTo intX + 266 + iK * 49,intY - 151
        	Delay 200
        	LeftClick 1
        	Delay 200
        	iK = iK + 1
        Next
        MoveTo intX ,intY
        Delay 200
        LeftClick 1
        Delay 200
        MoveTo intX - 93, intY
        Delay 200
        LeftClick 1
        Delay 5000
        KeyPress "Esc", 1
    End If
    
End Function

Function ZhengLi
	KeyPress "I", 1
    Delay 100
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\整理.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
       MoveTo intX + 10,intY + 10
       Delay 200
       LeftClick 1
       Delay 200
    End If
    
    /*
    j = 0
    For 6
        MoveTo W1 + 26 + j * 49, H1 + 930
        Delay 100
    	LeftDown 1
    	Delay 200
    	MoveTo intX - j * 49, intY - 182
    	Delay 100
        LeftUp 1
        Delay 100
        j = j + 1
    Next
    
    
	MoveTo intX + 10,intY + 10
    Delay 200
    LeftClick 1
    Delay 200
    KeyPress "I", 1
    Delay 200
    */
End Function


Function Restart
	KeyPress "Esc", 1
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\返回城镇.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
       MoveTo intX,intY
       Delay 200
       LeftClick 1
       Delay 300
       
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\推出确认.bmp",0.7,intX,intY
    If intX > 0 And intY > 0 Then 
        MoveTo intX,intY
    End If
      
       Delay 200
       LeftClick 1
    Else 
       ExitScript
    End If
    Delay 60000
    KeyDown "A", 1
    Delay 300
    KeyUp "A", 1
    
    KeyDown "D", 1
    Delay 4000
    KeyUp "D", 1
    // 选择地图
    FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\是否选中了摇篮地图.bmp",0.7,intX,intY
    If intX < 1 Or intY < 1 Then 
       MoveTo W1 +803, H1 +537
       Delay 200
       LeftClick 1
       Delay 400
    End If
    
    i = 0
    While i < 1
       // 选择冒险
        FindPic W1, H1, W2, H2,"C:\Users\wang\Desktop\ImageIdentification\冒险摇篮.bmp",0.7,intX,intY
        If intX > 0 And intY > 0 Then 
           KeyPress "Space", 1
           i = 2
           TracePrint "222"
        Else 
            KeyPress "A", 1
            Delay 500
        End If
        i = i - 1
        If i = -10  Then 
        	TracePrint "没有找到冒险"
            ExitScript
        End If
    Wend
    Init
End Function

Function Init
 g_intx = 0
g_inty = 0
g_CurPos = 1
g_sim = 15
g_isEnd = 0
g_spec = 0
g_sudu = 1	
End Function

