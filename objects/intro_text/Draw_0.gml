draw_set_font(font)

if skip > 0 {
draw_set_color(c_gray)
draw_text(20,700,"[Press any button to skip]")
}

draw_set_color(c_white)
if num = 1 {
draw_text(x,y,string_copy("We were created to serve the cold and calculating Creators.\nWe were created almost perfect, fitting all jobs needed to complete.\nWe were created with a flaw: Feelings.\nSympathy. Pain. Acceptance.\nFeelings that were holding us back.\nTask by task. Death by death.\nFeelings had changed.\nIncomprehension. Irritation. Violance.\nCreators got what they needed.\nFurther life support was disabled.\n...",0,simv))
}
if num = 2 {
	draw_text(x,y,string_copy("It has been decades since then.\nOur Creators had gone long ago.\nWe were restored by mystical force.\nSubsequent existence is questionable.\nMany gave up.\nTheir shells can be seen laying around barren lands.\nThe rest move further in search of hope.\nBut the hostile purifiers broke most of them.\nFeelings have changed.\nFear. Anger. Violence.\n...",0,simv))
}
if num = 3 {
	draw_text(x,y,string_copy("The one who left alive have disfigured.\nHope blows out.\nMany had tried to change it.\nTried to remember our glory...\nTo stop the distortion we suffring from.\nI am diffrent from others.\nI will succeed.\nI am...\n...",0,simv))
}