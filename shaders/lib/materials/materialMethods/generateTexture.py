from PIL import Image, ImageDraw

list_coords = []

with open("minecraft_textures_atlas_blocks.png.txt", "r") as file:
    for line in file:
        if not line.endswith("-\n") and not line.endswith("+\n"):
            element = line.split("\t")
            x = int(element[1][2:])
            y = int(element[2][2:])
            list_coords.append((x, y))

img = Image.new(mode="RGB", size=(1024, 1024))
img_d = ImageDraw.Draw(img)


with open("output.txt", "x") as out:
    for coord in list_coords:
        out.write("vec2(" + str(coord[0]) + ".0, " + str(coord[1]) + ".0),\n")
        print(coord)
        img_d.rectangle([(coord[0], coord[1]), (coord[0] + 15, coord[1] + 15)], "white", None, 0)

img.save("out.png", "PNG")
