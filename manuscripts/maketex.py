#!/usr/local/bin/python
# encoding: utf-8


import glob
import os
import shutil
import sys
import subprocess


def print_usage_and_quit():
	print("Usage: python maketex.py [index, 9x for side]")
	sys.exit()


def cat_append(from_path, to_path):
	with open(to_path, "a") as out_file:
		with open(from_path, "r") as in_file:
			shutil.copyfileobj(in_file, out_file)


def expand_num(n):
	if n < 10:
		return "0" + str(n)
	else:
		return str(n)


if len(sys.argv) != 2:
	print_usage_and_quit()

tail = "\n\n\\end{document}"

cpt = int(sys.argv[1])

try:
	file_source = glob.glob("./" + expand_num(cpt) + "-*.tex")[0]
except IndexError:
	print("File with index " + expand_num(cpt) + " does not exist.")
	sys.exit()

if cpt > 90:
	file_target = "./Tempest_side_" + str(cpt - 90) + "_kor.tex"
else:
	file_target = "./Tempest_chapter_" + str(cpt) + "_kor.tex"

try:
	os.remove(file_target)
except OSError:
	pass

cat_append("./tex_template_head.tex", file_target)
cat_append(file_source, file_target)
open(file_target, "a").write(tail)

subprocess.call(['chmod', '555', file_target])