# pattern
# \*\*Chapter [0-9]+:

# while line_next is not null:
#	while line_next matches pattern:
#		flush buffer as a file
#		empty the buffer
import re

thestorm = "Tempest.md"
stormsplitter = "\*\*Chapter [0-9]+:"
stormsplittername = "-_Tempest_chapter_.md"

lines = []
outstormnumber = 0

with open(thestorm, "r") as f:
    lines = f.readlines()


outstormfile = open("%02d" % (outstormnumber) + stormsplittername, "w")
print "File: " + str(outstormnumber) + stormsplittername

for line in lines:
    # new file
    if re.match(stormsplitter, line):
        outstormfile.close()
        outstormnumber += 1
        outstormfile = open("%02d" % (outstormnumber) + stormsplittername, "w")
        print "File: " + str(outstormnumber) + stormsplittername

    outstormfile.write(line)

