Sleep, 5000

Loop
{
    Random, xmid, 180, 780
    Random, ymid, 560, 570
    click, %xmid%, %ymid% Right ; Window [v1.1.05+]: 与 Relative 效果相同, 但由于含义清晰, 因此建议使用.
    Random, Delay, 500, 1500
    Sleep, % Delay
}

^!p::Pause ; pause script with Ctrl+Alt+P
^!q::ExitApp ; quit script with Ctrl+Alt+P
return