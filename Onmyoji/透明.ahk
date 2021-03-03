;CREATER: 月夜海-暮之霞
;
;
;使用说明：
;   左侧shift+滚轮下滑：减少透明度，一次10
;   左侧shift+滚轮上滑：增加透明度，一次20
;   左侧shift+中键按下：恢复透明度至255(完全不透明).
;
~LShift & WheelUp::
; 透明度调整，增加。
WinGet, Transparent, Transparent,A
If (Transparent="")
    Transparent=255
    ;Transparent_New:=Transparent+10
    Transparent_New:=Transparent+20    ;透明度增加速度。
    If (Transparent_New > 254)
                    Transparent_New =255
    WinSet,Transparent,%Transparent_New%,A
 
    tooltip now: ▲%Transparent_New%`nmae: __%Transparent%  ;查看当前透明度（操作之后的）。
    ;sleep 1500
    SetTimer, RemoveToolTip_transparent_Lwin__2016.09.20, 1500  ;设置统一的这个格式，label在最后。
return
 
~LShift & WheelDown::
;透明度调整，减少。
WinGet, Transparent, Transparent,A
If (Transparent="")
    Transparent=255
    Transparent_New:=Transparent-10  ;透明度减少速度。
    ;msgbox,Transparent_New=%Transparent_New%
            If (Transparent_New < 30)    ;最小透明度限制。
                    Transparent_New = 30
    WinSet,Transparent,%Transparent_New%,A
    tooltip now: ▲%Transparent_New%`nmae: __%Transparent%  ;查看当前透明度（操作之后的）。
    ;sleep 1500
    SetTimer, RemoveToolTip_transparent_Lwin__2016.09.20, 1500  ;设置统一的这个格式，label在最后。
return
 
;设置Lwin &Mbutton直接恢复透明度到255。
~Lshift & Mbutton:: 
WinGet, Transparent, Transparent,A
WinSet,Transparent,255,A 
tooltip ▲Restored ;查看当前透明度（操作之后的）。
;sleep 1500
SetTimer, RemoveToolTip_transparent_Lwin__2016.09.20, 1500  ;设置统一的这个格式，label在最后。
return
 
 
removetooltip_transparent_Lwin__2016.09.20:     ;LABEL
tooltip
SetTimer, RemoveToolTip_transparent_Lwin__2016.09.20, Off
return