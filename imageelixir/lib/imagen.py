from PIL import Image
import numpy as np

img = Image.open("elisa.jpg")
m,n, = np.size(img)
grayscale=img.convert('L')
grayscale.save('gray.jpg')
npgray = np.array(grayscale)
print(type(img))
print(type(npgray))
print("matriz: ", npgray)
print("Grises: ", grayscale)
print("Grises tipo: ",type(grayscale))
print("Grises formato: ", grayscale.format)
print("Grises tamaño: ", grayscale.size)
print("Grises modo: ", grayscale.mode)
print("data: ", np.size(npgray))
print("m es: ", m)
print("n es: ", n)
print(img.format)
print(img.mode)
print(img.size)
#img.show()






