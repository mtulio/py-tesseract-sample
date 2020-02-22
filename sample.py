import pytesseract as ocr
from PIL import Image


phrase = ocr.image_to_string(Image.open('sample.jpg'))
print(phrase)
