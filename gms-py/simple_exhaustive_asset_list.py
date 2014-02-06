from random import choice
import re
import pprint
pp = pprint.PrettyPrinter(indent=4)
PROJECT_PATH = "..\Gremlin Kickball.gmx"

def main():
	sounds = []
	sprites = []
	backgrounds = []
	scripts = []
	fonts = []
	objects = []
	rooms = []

	with open(PROJECT_PATH + "\Gremlin Kickball.project.gmx") as lineFile:
 		lines = lineFile.read().split('\n')
	for line in lines:
		m = re.search('(?<= name=").*(?=">)', line)
		if (m): pp.pprint(m.group())


		m = re.search('(?<=<sound>).*(?=</sound>)',line)
		if (m): sounds.append(m.group(0))

		m = re.search('(?<=<background>).*(?=</background>)',line)
		if (m): backgrounds.append(m.group(0))

		m = re.search('(?<=<script>).*(?=</script>)',line)
		if (m): scripts.append(m.group(0))

		m = re.search('(?<=<font>).*(?=</font>)',line)
		if (m): fonts.append(m.group(0))

		m = re.search('(?<=<object>).*(?=</object>)',line)
		if (m): objects.append(m.group(0))

		m = re.search('(?<=<room>).*(?=</room>)',line)
		if (m): rooms.append(m.group(0))

	pp.pprint(sounds)
	pp.pprint(sprites)
	pp.pprint(backgrounds)
	pp.pprint(scripts)
	pp.pprint(fonts)
	pp.pprint(objects)
	pp.pprint(rooms)
if __name__ == "__main__":
	main()
