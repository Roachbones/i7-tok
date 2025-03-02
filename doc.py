"""
    “As a program, Indoc began as a rat's nest of Perl…”
        -Introduction to Indoc
"""

import re
import html

from pygments import highlight
from pygments.lexers import Inform7Lexer
from pygments.formatters import HtmlFormatter

with open("template.html") as file:
    template = file.read()

with open("Toki Pona.i7x") as file:
    i7x = file.read()

extension_name = i7x.split(" begins here")[0]
d = i7x.split("---- DOCUMENTATION ----")[1]

d = "\n".join(
    html.escape(line)
    if not line.startswith("<")
    else line
    for line in d.split("\n")
)

chapter = 0
section = 1

chapters = []
sections = []



d2 = ""
for line in d.split("\n"):
    if line.startswith("Chapter: "):
        chapter += 1
        line = line.replace("Chapter: ", "Chapter "+str(chapter)+": ")
        chapters.append((chapter, line))
        section = 1
    if line.startswith("Section: "):
        section_id = str(chapter)+"."+str(section)
        line = line.replace("Section:", "§"+section_id+".")
        sections.append((section_id, line))
        section += 1
    d2 += line + "\n"
d = d2

toc = "<nav>"
for chapter_number, chapter_title in chapters:
    c = str(chapter_number)
    toc += "<ul><li><a href='#"+c+"'>"+chapter_title+"</a></li>\n"
    for section_id, section_title in sections:
        if section_id.startswith(c):
            toc += "<li><a href='#"+section_id+"'>"+section_title+"</a></li>\n"
    toc += "</ul>"
toc += "</nav>"

d = re.sub(r"\[omit].+?\[/omit]", "", d)
d = re.sub(r"\[omit]\n(.+\n)+?\[/omit]", "", d)

d = re.sub("\n(Chapter (\d+).+)", "<hr><h1 class='chapterheading' id='\g<2>'>\g<1></h1>", d)
d = re.sub(r"\n§(.+)\. (.+)", r"<h2 class='sectionheading' id='\g<1>'>§\g<1>. \g<2></h2>", d)

d = re.sub(
    r"(·.+\n)+",
    "<ul>\n\g<0></ul>",
    d
)
d = re.sub(r"·(.+)", "<li>\g<1></li>", d) 

d = re.sub(r"\t.*", "\g<0><br>", d) 
d = re.sub(
    r"(\t.+\n)+",
    "<blockquote class='code'><p class='quoted'>\n\g<0></p></blockquote>",
    d
)
d = re.sub(r"\n([^<\n\t].+)", "\n<p>\\1</p>", d)


d = re.sub(r"\[html(.+)html\]", lambda x: html.unescape(x.group(1)), d)
d = d.replace("[html","").replace("html]","")
d = d.replace("\t","&nbsp;"*4).replace("\n"+"&nbsp;"*4,"\n\t")

# omit paste buttons. todo replace with copy buttons..?
d = d.replace("\n\t*: ", "\n")

d = d.replace("class=\"logographic\"", "class=\"logographic\" lang=\"tok-sitelenpona\"")

d = toc + d + "<hr><footer><p>for "+extension_name+"</p></footer><hr>"

#d = re.sub(r"\[html\n(·.+\n)+\nhtml\\]", lambda x: html.unescape(x.group(1)), d)

'''
for phrase in ["name", "end name"]:
    anchor="def-"+phrase.replace(" ","-")
    assert anchor in d
    new_d_lines = []
    for line in d.split("\n"):
        if line.startswith("\t") and line.endswith("<br>"):
            line = line.replace("["+phrase+"]",'<a class="deflink" href="#{}">[{}]</a>'.format(anchor, phrase))
        new_d_lines.append(line)
    d = "\n".join(new_d_lines)'''


with open("doc.html", "w", encoding="utf8") as file:
    file.write(template.replace("{{here}}",d))


    

"""

#d = re.sub(r"\t.*", "\g<0><br>", d) 
d = re.sub(
    r"(\t.+\n)+",
    (lambda x: "<blockquote class='code'><p class='quoted'>\n"
    + highlight(x.group(),Inform7Lexer(), HtmlFormatter(wrapcode=True,nowrap=False))
    + "</p></blockquote>"),
    d
)


"""
