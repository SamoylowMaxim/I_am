draw_set_font(font)

if skip > 0 || simv > 120{
draw_set_color(c_gray)
draw_text(20,700,"[Press any button to terminate the connection]")
}
draw_set_color(c_white)
draw_text(x,y,string_copy("Critical breach in Hull causes disruption to the main parts\nVisuals turning down...\n[There will be others]",0,simv))
