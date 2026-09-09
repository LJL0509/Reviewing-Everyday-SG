from pathlib import Path

from PIL import Image, ImageDraw, ImageFont


ROOT = Path(__file__).resolve().parent
SIZE = 256
image = Image.new("RGBA", (SIZE, SIZE), (246, 242, 234, 255))
draw = ImageDraw.Draw(image)

draw.rounded_rectangle(
    (10, 10, 246, 246),
    radius=42,
    fill=(246, 242, 234, 255),
    outline=(36, 52, 58, 255),
    width=5,
)
draw.ellipse(
    (35, 35, 221, 221),
    fill=(189, 91, 70, 255),
    outline=(36, 52, 58, 255),
    width=7,
)
draw.ellipse((56, 56, 200, 200), outline=(246, 242, 234, 210), width=3)

font = ImageFont.truetype(r"C:\Windows\Fonts\msyh.ttc", 112, index=0)
text = "拾"
left, top, right, bottom = draw.textbbox((0, 0), text, font=font)
text_width, text_height = right - left, bottom - top
draw.text(
    ((SIZE - text_width) // 2 - left, (SIZE - text_height) // 2 - top - 3),
    text,
    font=font,
    fill=(246, 242, 234, 255),
)

draw.polygon(
    [(196, 22), (201, 34), (213, 39), (201, 44), (196, 57), (191, 44), (179, 39), (191, 34)],
    fill=(189, 91, 70, 255),
)

image.save(ROOT / "shiguang-icon.png")
image.save(
    ROOT / "shiguang-icon.ico",
    sizes=[(16, 16), (24, 24), (32, 32), (48, 48), (64, 64), (128, 128), (256, 256)],
)
