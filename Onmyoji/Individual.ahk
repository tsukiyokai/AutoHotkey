Sleep, 5000

Loop
{
    Random, xmid, 990, 1080
    Random, ymid, 550, 660
    click, %xmid%, %ymid% Right ; Window [v1.1.05+]: 与 Relative 效果相同, 但由于含义清晰, 因此建议使用.
    Random, Delay, 5000, 10000
    Sleep, % Delay
}

^!p::Pause ; pause script with Ctrl+Alt+P
^!q::ExitApp ; quit script with Ctrl+Alt+P
return