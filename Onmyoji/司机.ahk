Sleep, 5000

Loop
{
    Random, xmid, 1060, 1125
    Random, ymid, 565, 630
    click, %xmid%, %ymid% Right ; Window [v1.1.05+]: 与 Relative 效果相同, 但由于含义清晰, 因此建议使用.
    Random, Delay, 500, 1200
    Sleep, % Delay
}

^!p::Pause ; pause script with Ctrl+Alt+P
^!q::ExitApp ; quit script with Ctrl+Alt+P
return