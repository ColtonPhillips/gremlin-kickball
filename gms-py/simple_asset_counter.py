from random import choice
PROJECT_PATH = "..\Gremlin Kickball.gmx"

def main():
	sound_count = 0
	sprite_count = 0
	background_count = 0
	script_count = 0
	font_count = 0
	object_count = 0
	room_count = 0
	constant_count = 0

	with open(PROJECT_PATH + "\Gremlin Kickball.project.gmx") as lineFile:
 		lines = lineFile.read().split('\n')
	for line in lines:
		print(str(len(line)) + " " + line)
		if ("<sound>" in line): sound_count+=1
		if ("<sprite>" in line): sprite_count+=1
		if ("<background>" in line): background_count+=1
		if ("<script>" in line): script_count+=1
		if ("<font>" in line): font_count+=1
		if ("<object>" in line): object_count+=1
		if ("<room>" in line): room_count+=1
		if ("</constant>" in line): constant_count+=1

	print('''
Sounds: {0}
Sprites: {1}
Backgrounds: {2}
Scripts: {3}
Fonts: {4}
Objects: {5}
Rooms: {6}
Constants: {7}
		'''.format(str(sound_count), str(sprite_count), str(background_count),
			str(script_count), str(font_count), str(object_count), 
			str(room_count), str(constant_count)))
if __name__ == "__main__":
	main()
