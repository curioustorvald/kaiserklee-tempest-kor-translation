import glob
import os
import shutil
import sys


def print_usage_and_quit():
	print("Usage: python cat.py [main|side|all]")
	sys.exit()


def cat_append(from_path, to_path):
	with open(to_path, "a") as out_file:
		with open(from_path, "r") as in_file:
			shutil.copyfileobj(in_file, out_file)


if len(sys.argv) != 2:
	print_usage_and_quit()

# read operation mode
mode = -1
if sys.argv[1] == "main":
	mode = 1
elif sys.argv[1] == "side":
	mode = 2
elif sys.argv[1] == "all":
	mode = 3
# assert it
if mode < 1 or mode > 3:
	print_usage_and_quit()


name_list = glob.glob("??-*.tex")

main_text_list = []
side_text_list = []

main_file = "./Tempest_kor.tex"
side_file = "./Tempest_side_kor.tex"


for name in name_list:
	if name[0:1] == "9": # if the file starts with 9
		side_text_list.append(name)
	else:
		main_text_list.append(name)

main_text_list.sort()
side_text_list.sort()

print(main_text_list)
print(side_text_list)

# main, all
if mode & 0b01 == 1:
	try:
		os.remove(main_file)
	except OSError:
		pass

	for i in main_text_list:
		print(i)
		cat_append(i, main_file)

# side, all
if (mode & 0b10) >> 1 == 1:
	try:
		os.remove(side_file)
	except OSError:
		pass

	for i in side_text_list:
		print(i)
		cat_append(i, side_file)

