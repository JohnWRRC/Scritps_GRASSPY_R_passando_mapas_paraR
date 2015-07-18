#!/c/Python25 python
#import sys, os, numpy #sys, os, PIL, numpy, Image, ImageEnhance
import grass.script as grass
from PIL import Image
import wx
import random
import re
import time
import math
#from rpy2 import robjects
from datetime import tzinfo, timedelta, datetime
import win32gui
from win32com.shell import shell, shellcon
import os
import unicodedata


import sys
from subprocess import Popen
import zipfile
import win32com.client as win32

#p = Popen("R.exe --no-save")
p = Popen(["Rscript.exe", "teste.R"], cwd=r"F:\data\john_pc2\teste_grass-R")