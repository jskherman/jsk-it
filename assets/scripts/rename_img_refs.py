import os, fnmatch, re


def findReplace(directory, filePattern):
    for path, dirs, files in os.walk(os.path.abspath(directory)):
        for filename in fnmatch.filter(files, filePattern):
            filepath = os.path.join(path, filename)
            with open(filepath, encoding="utf8") as f:
                s = f.read()
            s = re.sub(
                r"/img/(\S+)(.jpg|.jpeg|.png|.gif|.jfif)", "/img/webp/\\1.webp", s
            )
            with open(filepath, "w", encoding="utf8") as f:
                f.write(s)


findReplace("./content/posts/", "*.md")
print("Successfully renamed image references in .md files")
