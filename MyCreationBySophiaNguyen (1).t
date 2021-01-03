%April 5, 2018
%Sophia Nguyen
%Ms. Krasteva
%This program shows a short animated movie of a singing festival underwater.
setscreen ("graphics:640,400")
View.Set ("offscreenonly")

%this procedure draws the ocean background
procedure background
    %this loop draws the sky, ocean, and sand floor
    for i : 0 .. 640
	%sky
	drawline (0 + i, 0, 0 + i, 400, 102)
	%ocean
	drawline (0 + i, 0, 0 + i, 370, 54)
	%sand floor
	drawline (0 + i, 0, 0 + i, 50, 91)
    end for
    %this loop draws the 3rd rock from the left
    for i : 0 .. 18
	%rock
	drawoval (110, 20, 10 + i, i, gray)
	drawoval (111, 20, 10 + i, i, 26)
    end for
    %this loop draws the 1st and 4th rock from the left
    for i : 0 .. 8
	%1st rock
	drawoval (30, 30, 5 + i, i, 24)
	drawoval (30, 29, 5 + i, i, gray)
	%4th rock
	drawoval (500, 30, 10 + i, i, gray)
	drawoval (501, 30, 10 + i, i, 24)
    end for
    %this loop draws the 2nd and last rock from the left and the bubbles
    for i : 0 .. 5
	%2nd rock
	drawoval (65, 25, 3 + i, i, 21)
	drawoval (66, 25, 3 + i, i, 24)
	%1st bubble from the left
	drawoval (50, 340, i, i, 100)
	%2nd bubble from the left
	drawoval (70, 330, i, i, 97)
	%3rd bubble from the left
	drawoval (210, 330, i, i, 100)
	%4th bubble from the left
	drawoval (270, 350, i, i, 97)
	%5th bubble from the left
	drawoval (310, 360, i, i, 100)
	%6th bubble from the left
	drawoval (430, 360, i, i, 97)
	%7th bubble from the left
	drawoval (620, 355, i, i, 100)
	%last rock from the left
	drawoval (630, 10, 5 + i, i, 21)
	drawoval (630, 11, 5 + i, i, 25)
    end for
    %this loop draws the outer layer of the cave
    for i : 0 .. 100
	drawarc (640, 20, i, 20 + i, 90, 180, 21)
	drawarc (641, 19, i, 20 + i, 90, 180, 21)
    end for
    %this loop draws the middle layer of the cave
    for i : 0 .. 85
	drawarc (640, 20, i, 20 + i, 90, 180, 20)
	drawarc (641, 20, i, 20 + i, 90, 180, 20)
    end for
    %this loop draws the inner layer of the cave
    for i : 0 .. 60
	drawarc (640, 20, i, 20 + i, 90, 180, 199)
	drawarc (641, 20, i, 20 + i, 90, 180, 199)
    end for
    %this loop draws the cave seaweed
    for i : 0 .. 7
	%first seaweed from the left, top
	drawarc (555, 50, 8 + i, 20, 90, 270, green)
	%first seaweed from the left, bottom
	drawarc (542, 20, 8 + i, 20, 270, 90, green)
	%second seaweed from the left, top
	drawarc (570, 50, 8 + i, 20, 90, 270, green)
	%second seaweed from the left, bottom
	drawarc (557, 20, 8 + i, 20, 270, 90, green)
	%third seaweed from the left
	drawarc (590, 20, 8 + i, 20, 90, 270, green)
    end for
    %this loop draws the singing festival sign
    for i : 0 .. 200
	drawline (220 + i, 5, 220 + i, 40, 137)
    end for
    %this loop draws the bolts on the sign
    for i : 0 .. 3
	%bolt 1 from the left
	drawoval (225, 35, i, i, white)
	%bolt 2 from the left
	drawoval (415, 10, i, i, white)
    end for
    var Font1 : int
    Font1 := Font.New ("Calibri:15")
    Draw.Text ("Sophia Nguyen", 505, 378, Font1, blue)
    Draw.Text ("Singing Festival", 255, 18, Font1, 186)
end background

%this procedure draws and animates the shark
procedure shark
    %this loop makes the shark swim left
    for i : 0 .. 265
	%erase
	drawfillbox (646 - i, 232, 786, 160, 54)
	%body
	drawfilloval (715 - i, 190, 70, 30, 25) %draw
	%eyes
	drawfilloval (670 - i, 193, 7, 7, white) %draw
	drawfilloval (670 - i, 193, 4, 4, black) %draw
	drawfilloval (710 - i, 193, 7, 7, white) %draw
	drawfilloval (710 - i, 193, 4, 4, black) %draw
	%mouth line
	drawline (670 - i, 177, 710 - i, 177, black) %draw
	%1st tooth from the left
	drawfillarc (675 - i, 176, 5, 5, 180, 0, white) %draw
	%2nd tooth from the left
	drawfillarc (685 - i, 176, 5, 5, 180, 0, white) %draw
	%3rd tooth from the left
	drawfillarc (695 - i, 176, 5, 5, 180, 0, white) %draw
	%4th tooth from the left
	drawfillarc (705 - i, 176, 5, 5, 180, 0, white) %draw
	%bottom fin
	drawfilloval (730 - i, 172, 10, 10, white) %draw
	%top fin
	drawfillarc (730 - i, 215, 12, 17, 0, 180, gray) %draw
	%tail
	drawfilloval (790 - i, 190, 10, 25, 20) %draw
	delay (10)
	View.Update
    end for
    %this loop makes the shark swim down
    for i : 0 .. 100
	%erase
	drawfillbox (380, 233 - i, 536, 162 - i, 54)
	%body
	drawfilloval (450, 190 - i, 70, 30, 25) %draw
	%eyes
	drawfilloval (405, 193 - i, 7, 7, white) %draw
	drawfilloval (405, 193 - i, 4, 4, black) %draw
	drawfilloval (445, 193 - i, 7, 7, white) %draw
	drawfilloval (445, 193 - i, 4, 4, black) %draw
	%mouth line
	drawline (405, 177 - i, 445, 177 - i, black) %draw
	%1st tooth from the left
	drawfillarc (410, 176 - i, 5, 5, 180, 0, white) %draw
	%2nd tooth from the left
	drawfillarc (420, 176 - i, 5, 5, 180, 0, white) %draw
	%3rd tooth from the left
	drawfillarc (430, 176 - i, 5, 5, 180, 0, white) %draw
	%4th tooth from the left
	drawfillarc (440, 176 - i, 5, 5, 180, 0, white) %draw
	%bottom fin
	drawfilloval (465, 172 - i, 10, 10, white) %draw
	%top fin
	drawfillarc (465, 215 - i, 12, 17, 0, 180, gray) %draw
	%tail
	drawfilloval (526, 190 - i, 10, 25, 20) %draw
	delay (10)
	View.Update
    end for
end shark

%this procedure draws and animates the goldfish
procedure goldfish
    %this loop makes the goldfish swim right
    for i : 0 .. 300
	%erase
	drawfillbox (-165, 102, -21 + i, 56, 54)
	%body
	drawfilloval (-100 + i, 80, 40, 20, 67) %draw
	%top tail
	drawfillarc (-140 + i, 92, 25, 15, 140, 320, 43) %draw
	%bottom tail
	drawfillarc (-140 + i, 65, 25, 15, 45, 220, 43) %draw
	%bottom fin
	drawfillarc (-100 + i, 75, 8, 15, 180, 0, 42) %draw
	%eye iris
	drawfilloval (-80 + i, 83, 5, 5, 92) %draw
	%eye pupil
	drawfilloval (-80 + i, 83, 2, 2, black) %draw
	%eye shine
	drawfillbox (-76 + i, 88, -80 + i, 85, white) %draw
	%mouth
	drawline (-85 + i, 70, -70 + i, 70, black) %draw
	delay (10)
	View.Update
    end for
    %this loop makes the goldfish swim up
    for i : 0 .. 100
	%erase
	drawfillbox (135, 102 + i, 240, 55 + i, 54)
	%body
	drawfilloval (200, 80 + i, 40, 20, 67) %draw
	%top tail
	drawfillarc (160, 92 + i, 25, 15, 140, 320, 43) %draw
	%bottom tail
	drawfillarc (160, 65 + i, 25, 15, 45, 220, 43) %draw
	%bottom fin
	drawfillarc (200, 75 + i, 8, 15, 180, 0, 42) %draw
	%eye iris
	drawfilloval (220, 83 + i, 5, 5, 92) %draw
	%eye pupil
	drawfilloval (220, 83 + i, 2, 2, black) %draw
	%eye shine
	drawfillbox (224, 88 + i, 220, 85 + i, white) %draw
	%mouth
	drawline (215, 70 + i, 230, 70 + i, black) %draw
	delay (10)
	View.Update
    end for
    %this loop makes the goldfish swim right
    for i : 0 .. 120
	%erase
	drawfillbox (134 + i, 202, 240 + i, 155, 54)
	%body
	drawfilloval (200 + i, 180, 40, 20, 67) %draw
	%top tail
	drawfillarc (160 + i, 192, 25, 15, 140, 320, 43) %draw
	%bottom tail
	drawfillarc (160 + i, 165, 25, 15, 45, 220, 43) %draw
	%bottom fin
	drawfillarc (200 + i, 175, 8, 15, 180, 0, 42) %draw
	%eye iris
	drawfilloval (220 + i, 183, 5, 5, 92) %draw
	%eye pupil
	drawfilloval (220 + i, 183, 2, 2, black) %draw
	%eye shine
	drawfillbox (224 + i, 188, 220 + i, 185, white) %draw
	%mouth
	drawline (215 + i, 170, 230 + i, 170, black) %draw
	delay (10)
	View.Update
    end for
    %this loop makes the goldfish open its mouth
    for i : 0 .. 5
	%opened mouth
	drawfillarc (342, 170, 8, 0 + i, 180, 0, black) %draw
	delay (15)
	View.Update
    end for
    %this plays the goldfish's song
    play (">>> 1a+ 1b+ 1e- 1f+ 1g+ 2b- 4c 4d 4e < 1f+ 2c- 4f")
    var Font1 : int
    Font1 := Font.New ("Calibri:15")
    Draw.Text ("...", 400, 140, Font1, blue)
    %this loop makes the goldfish swim right
    for i : 0 .. 500
	%erase
	drawfillbox (254 + i, 202, 360 + i, 155, 54)
	%body
	drawfilloval (320 + i, 180, 40, 20, 67) %draw
	%top tail
	drawfillarc (280 + i, 192, 25, 15, 140, 320, 43) %draw
	%bottom tail
	drawfillarc (280 + i, 165, 25, 15, 45, 220, 43) %draw
	%bottom fin
	drawfillarc (320 + i, 175, 8, 15, 180, 0, 42) %draw
	%eye iris
	drawfilloval (340 + i, 183, 5, 5, 92) %draw
	%eye pupil
	drawfilloval (340 + i, 183, 2, 2, black) %draw
	%eye shine
	drawfillbox (344 + i, 188, 340 + i, 185, white) %draw
	%opened mouth
	drawfillarc (342 + i, 170, 8, 5, 180, 0, black) %draw
	delay (10)
	View.Update
    end for
end goldfish

%this procedure draws and animates the whale
procedure whale
    %this loop makes the whale swim left
    for i : 0 .. 450
	%erase
	drawfillbox (680 - i, 340, 840, 220, 54)
	%body
	drawfilloval (760 - i, 270, 80, 50, 22) %draw
	%top fin
	drawfillarc (760 - i, 310, 15, 30, 0, 180, 25) %draw
	%bottom fin
	drawfillarc (790 - i, 265, 20, 40, 180, 0, 25) %draw
	%eye iris
	drawfilloval (740 - i, 275, 10, 10, 27) %draw
	%eye pupil
	drawfilloval (740 - i, 275, 5, 5, black) %draw
	%eye shine
	drawfillbox (742 - i, 282, 747 - i, 276, white) %draw
	%tongue
	drawfillarc (705 - i, 255, 15, 10, 180, 0, 89) %draw
	%teeth
	drawfillarc (705 - i, 255, 17, 6, 180, 0, white) %draw
	%teeth line
	drawline (705 - i, 255, 705 - i, 250, black) %draw
	delay (10)
	View.Update
    end for
    %this loop makes the whale swim down
    for i : 0 .. 80
	drawfillbox (230, 341 - i, 390, 220 - i, 54)
	%body
	drawfilloval (310, 270 - i, 80, 50, 22) %draw
	%top fin
	drawfillarc (310, 310 - i, 15, 30, 0, 180, 25) %draw
	%bottom fin
	drawfillarc (340, 265 - i, 20, 40, 180, 0, 25) %draw
	%eye iris
	drawfilloval (290, 275 - i, 10, 10, 27) %draw
	%eye pupil
	drawfilloval (290, 275 - i, 5, 5, black) %draw
	%eye shine
	drawfillbox (292, 282 - i, 297, 276 - i, white) %draw
	%tongue
	drawfillarc (255, 255 - i, 15, 10, 180, 0, 89) %draw
	%teeth
	drawfillarc (255, 255 - i, 17, 6, 180, 0, white) %draw
	%teeth line
	drawline (255, 255 - i, 255, 250 - i, black) %draw
	delay (10)
	View.Update
    end for
    %this loop makes the whale open its mouth
    for i : 0 .. 5
	%tongue
	drawfillarc (255, 175, 15, 10 + i, 180, 0, 89) %draw
	%teeth
	drawfillarc (255, 175, 17, 6 + i, 180, 0, white) %draw
	%teeth line
	drawline (255, 175, 255, 170 - i, black) %draw
	delay (10)
	View.Update
    end for
    %this plays the whale's song
    play ("c+ d+ c- d a b f+ g+ << 2f- 2e- 2d- 2c- >> 2g+ 2a+ 2b+")
    var Font1 : int
    Font1 := Font.New ("Calibri:15")
    Draw.Text ("...", 415, 140, Font1, blue)
    %this loop makes the shark swim left
    for i : 0 .. 400
	%erase
	drawfillbox (230 - i, 260, 391 - i, 140, 54)
	%body
	drawfilloval (310 - i, 190, 80, 50, 22) %draw
	%top fin
	drawfillarc (310 - i, 230, 15, 30, 0, 180, 25) %draw
	%bottom fin
	drawfillarc (340 - i, 185, 20, 40, 180, 0, 25) %draw
	%eye iris
	drawfilloval (290 - i, 195, 10, 10, 27) %draw
	%eye pupil
	drawfilloval (290 - i, 195, 5, 5, black) %draw
	%eye shine
	drawfillbox (292 - i, 202, 297 - i, 196, white) %draw
	%tongue
	drawfillarc (255 - i, 175, 15, 15, 180, 0, 89) %draw
	%teeth
	drawfillarc (255 - i, 175, 17, 11, 180, 0, white) %draw
	%teeth line
	drawline (255 - i, 175, 255 - i, 165, black) %draw
	delay (10)
	View.Update
    end for
end whale

%this procedure draws and animates the squid
procedure squid
    %this loop makes the squid swim right
    for i : 0 .. 420
	%erase
	drawfillbox (-129 + i, 268, -80 + i, 180, 54)
	%head
	drawfilloval (-100 + i, 248, 28, 20, gray) %draw
	%left head line
	drawline (-120 + i, 230, -110 + i, 265, white) %draw
	%right head line
	drawline (-80 + i, 230, -90 + i, 265, white) %draw
	%body
	drawfillbox (-120 + i, 240, -80 + i, 200, gray) %draw
	%left eyeball
	drawfilloval (-110 + i, 230, 7, 7, white) %draw
	%left eye pupil
	drawfilloval (-110 + i, 230, 4, 4, black) %draw
	%right eyeball
	drawfilloval (-90 + i, 230, 7, 7, white) %draw
	%right eye pupil
	drawfilloval (-90 + i, 230, 4, 4, black) %draw
	%mouth
	drawfillarc (-100 + i, 215, 10, 5, 180, 0, white) %draw
	%1st tentacle from the left
	drawfillarc (-114 + i, 200, 6, 20, 180, 0, gray) %draw
	%2nd tentacle from the left
	drawfillarc (-100 + i, 200, 6, 20, 180, 0, gray) %draw
	%3rd tentacle from the left
	drawfillarc (-86 + i, 200, 6, 20, 180, 0, gray) %draw
	delay (10)
	View.Update
    end for
    %this loop makes the squid open its mouth
    for i : 0 .. 5
	%opened mouth
	drawfillarc (320, 215, 10, 5 + i, 180, 0, white) %draw
	delay (5)
	View.Update
    end for
    %this plays the squid's song
    play ("<<< 2b+ 1c- 1d- 2e 2f 2g 2a- 1c- 1b 2e 2f- 2g+ 1a-")
    var Font1 : int
    Font1 := Font.New ("Calibri:15")
    Draw.Text ("...", 430, 140, Font1, blue)
    %this loop makes the squid swim right
    for i : 0 .. 421
	%erase
	drawfillbox (291 + i, 268, 340 + i, 180, 54)
	%head
	drawfilloval (320 + i, 248, 28, 20, gray) %draw
	%left head line
	drawline (300 + i, 230, 310 + i, 265, white) %draw
	%right head line
	drawline (340 + i, 230, 330 + i, 265, white) %draw
	%body
	drawfillbox (300 + i, 240, 340 + i, 200, gray) %draw
	%left eyeball
	drawfilloval (310 + i, 230, 7, 7, white) %draw
	%left eye pupil
	drawfilloval (310 + i, 230, 4, 4, black) %draw
	%right eyeball
	drawfilloval (330 + i, 230, 7, 7, white) %draw
	%right eye pupil
	drawfilloval (330 + i, 230, 4, 4, black) %draw
	%opened mouth
	drawfillarc (320 + i, 215, 10, 10, 180, 0, white) %draw
	%1st tentacle from the left
	drawfillarc (306 + i, 200, 6, 20, 180, 0, gray) %draw
	%2nd tentacle from the left
	drawfillarc (320 + i, 200, 6, 20, 180, 0, gray) %draw
	%3rd tentacle from the left
	drawfillarc (334 + i, 200, 6, 20, 180, 0, gray) %draw
	delay (10)
	View.Update
    end for
end squid

%this procedure draws and animates the crab
procedure crab
    %this loop makes the crab swim right
    for i : 0 .. 380
	%erase
	drawfillbox (-136 + i, 108, -5 + i, 53, 54)
	%body
	drawfilloval (-70 + i, 85, 40, 20, 40) %draw
	%left arm
	drawfillbox (-125 + i, 87, -110 + i, 93, red) %draw
	%right arm
	drawfillbox (-30 + i, 87, -15 + i, 93, red) %draw
	%left claw
	drawfillarc (-125 + i, 98, 10, 10, 20, 290, 40) %draw
	%right claw
	drawfillarc (-15 + i, 98, 10, 10, 250, 160, 40) %draw
	%left eyeball
	drawfilloval (-90 + i, 90, 5, 5, white) %draw
	%left eye pupil
	drawfilloval (-90 + i, 90, 2, 2, black) %draw
	%right eyeball
	drawfilloval (-50 + i, 90, 5, 5, white) %draw
	%right eye pupil
	drawfilloval (-50 + i, 90, 2, 2, black) %draw
	%mouth
	drawfillarc (-70 + i, 85, 5, 8, 180, 0, white) %draw
	%1eft leg
	Draw.ThickLine (-90 + i, 55, -85 + i, 65, 5, red) %draw
	%right leg
	Draw.ThickLine (-50 + i, 55, -55 + i, 65, 5, red) %draw
	delay (15)
	View.Update
    end for
    %this loop makes the crab swim up
    for i : 0 .. 100
	%erase
	drawfillbox (244, 103 + i, 375, 52 + i, 54)
	%body
	drawfilloval (310, 85 + i, 40, 20, 40) %draw
	%left arm
	drawfillbox (255, 87 + i, 270, 93 + i, red) %draw
	%right arm
	drawfillbox (350, 87 + i, 365, 93 + i, red) %draw
	%left claw
	drawfillarc (255, 98 + i, 10, 10, 20, 290, 40) %draw
	%right claw
	drawfillarc (365, 98 + i, 10, 10, 250, 160, 40) %draw
	%left eyeball
	drawfilloval (290, 90 + i, 5, 5, white) %draw
	%left eye pupil
	drawfilloval (290, 90 + i, 2, 2, black) %draw
	%right eyeball
	drawfilloval (330, 90 + i, 5, 5, white) %draw
	%right eye pupil
	drawfilloval (330, 90 + i, 2, 2, black) %draw
	%mouth
	drawfillarc (310, 85 + i, 5, 8, 180, 0, white) %draw
	%left leg
	Draw.ThickLine (290, 55 + i, 295, 65 + i, 5, red) %draw
	%right leg
	Draw.ThickLine (330, 55 + i, 325, 65 + i, 5, red) %draw
	delay (15)
	View.Update
    end for
    %this loop makes the crab open its mouth
    for i : 0 .. 5
	%opened mouth
	drawfillarc (310, 185, 5, 8 + i, 180, 0, white) %draw
	delay (5)
	View.Update
    end for
    %this plays the crab's song
    play ("2b+ 2c+ 1d+ < 1c- 4d- 2g 2e 1f 2e- >> 1f- 1c 2b 2a 2a+ 1b- < 2e+ 4a- 2f+ > 2g- >>> 1g+ 1d")
    var Font1 : int
    Font1 := Font.New ("Calibri:15")
    Draw.Text ("...", 445, 140, Font1, blue)
    %this loop makes the crab swim right
    for i : 0 .. 450
	%erase
	drawfillbox (244 + i, 208, 375 + i, 152, 54)
	%body
	drawfilloval (310 + i, 185, 40, 20, 40) %draw
	%left arm
	drawfillbox (255 + i, 187, 270 + i, 193, red) %draw
	%right arm
	drawfillbox (350 + i, 187, 365 + i, 193, red) %draw
	%left claw
	drawfillarc (255 + i, 198, 10, 10, 20, 290, 40) %draw
	%right claw
	drawfillarc (365 + i, 198, 10, 10, 250, 160, 40) %draw
	%left eyeball
	drawfilloval (290 + i, 190, 5, 5, white) %draw
	%left eye pupil
	drawfilloval (290 + i, 190, 2, 2, black) %draw
	%right eyeball
	drawfilloval (330 + i, 190, 5, 5, white) %draw
	%right eye pupil
	drawfilloval (330 + i, 190, 2, 2, black) %draw
	%opened mouth
	drawfillarc (310 + i, 185, 5, 13, 180, 0, white) %draw
	%left leg
	Draw.ThickLine (290 + i, 155, 295 + i, 165, 5, red) %draw
	%right leg
	Draw.ThickLine (330 + i, 155, 325 + i, 165, 5, red) %draw
	delay (15)
	View.Update
    end for
end crab

%this procedure draws and animates the clam
procedure clam
    for i : 0 .. 360
	%erase
	drawfillbox (-81 + i, 150, 0 + i, 55, 54)
	%top shell
	drawfilloval (-40 + i, 130, 40, 20, 92) %draw
	%line in top shell
	Draw.ThickLine (-75 + i, 130, -5 + i, 130, 5, 91) %draw
	%top part of bottom shell
	drawfillarc (-40 + i, 95, 40, 15, 0, 180, 66) %draw
	%bottom part of bottom shell
	drawfillarc (-40 + i, 95, 40, 40, 180, 360, 65) %draw
	%middle connector
	drawfillbox (-55 + i, 115, -25 + i, 108, 43) %draw
	delay (15)
	View.Update
    end for
    %this loop makes the clam close
    for i : 0 .. 10
	%top shell
	drawfilloval (320, 131 - i, 41, 21 - i, 54) %erase
	drawfilloval (320, 130 - i, 40, 20 - i, 92) %draw
	%line in top shell
	Draw.ThickLine (285, 130 - i, 355, 130 - i, 5, 91) %draw
	%bottom part of bottom shell
	drawfillarc (320, 94 + i, 41, 41, 180 + i, 360 - i, 54) %erase
	drawfillarc (320, 95 + i, 40, 40, 180 + i, 360 - i, 65) %draw
	%middle connector
	drawfillbox (305, 115, 335, 108, 43) %draw
	delay (100)
	View.Update
    end for
    %this loop makes the clam open
    for i : 0 .. 11
	%top shell
	drawfilloval (320, 120 + i, 41, 11 + i, 54) %erase
	drawfilloval (320, 120 + i, 40, 10 + i, 92) %draw
	%line in top shell
	Draw.ThickLine (285, 120 + i, 355, 120 + i, 5, 91) %draw
	%bottom part of bottom shell
	drawfillarc (320, 104 - i, 41, 41, 191 - i, 350 + i, 54) %erase
	drawfillarc (320, 105 - i, 40, 40, 190 - i, 350 + i, 65) %draw
	%middle connector
	drawfillbox (305, 115, 335, 108, 43) %draw
	delay (100)
	View.Update
    end for
    %this plays the clam's song
    play (">>> 2e- 2f 2e- 2f 2b- 2e- 2f 4g 2e- 2f 2b- > 2d 2c 2b- < 2g < 2e- > 2d 2c 2b- < 2g 2f > 2d 2c 2b- > 2d")
    var Font1 : int
    Font1 := Font.New ("Calibri:11")
    Draw.Text ("!!!!!!!!!!!!", 400, 140, Font1, blue)
    var Font2 : int
    Font2 := Font.New ("Calibri:13")
    Draw.Text ("The shark liked the clam's song so much that he declared the clam the winner!", 45, 240, Font2, blue)
    Draw.Text ("The prize was one of the shark's teeth, which was unusually made from pearls.", 45, 220, Font2, blue)
end clam

procedure ending
    %this loop makes the shark open its mouth
    for i : 0 .. 15
	drawfillarc (420, 76, 28, 5 + i, 180, 0, white) %draw
	delay (15)
	View.Update
    end for
    %this loop makes the pearl move from the shark's mouth
    for i : 0 .. 52
	drawfilloval (405 - i, 70, 9, 9, 54) %erase
	drawfilloval (400 - i, 70, 8, 8, white) %draw
	delay (10)
	View.Update
    end for
    %this loop makes the pearl move to the clam's mouth
    for i : 0 .. 20
	drawfilloval (348 - i, 70, 9, 9, 65) %erase
	drawfilloval (348 - i, 70, 8, 8, white) %draw
	delay (10)
	View.Update
    end for
    var Font1 : int
    Font1 := Font.New ("Calibri:15")
    Draw.Text ("And that's the story of how clams came to have pearls.", 90, 180, Font1, blue)
end ending

background
shark
goldfish
whale
squid
crab
clam
ending
