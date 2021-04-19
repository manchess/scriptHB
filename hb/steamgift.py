from selenium import webdriver
import time

# Donde se encuentra el driver
path = r"C:\Users\Manchess\Desktop\chromedriver.exe"

# Abrimos el navegador
driver = webdriver.Chrome(executable_path=path)

# Entramos a la pagina para aceptar los sorteos
driver.get("https://www.steamgifts.com/giveaways/search?type=wishlist")

# Esperamos hasta que se el usuario se loguee
while True:

    try:
        driver.find_element_by_class_name("nav__avatar-outer-wrap")
        break
    except:
        time.sleep(5)

# Obtenemos el bloque deseado, que es donde estan los sorteos
contenido = driver.find_element_by_xpath("/html/body/div[4]/div/div/div[2]/div[3]")

# Obtenemos cada link
sorteos = contenido.find_elements_by_class_name("giveaway__heading__name")

links = []

for sorteo in sorteos:
	links.append(sorteo.get_attribute("href"))

# Nos movemos al sorteo seleccionado y lo aceptamos
for link in links:
	driver.get(link)
	time.sleep(1)
	try:
		driver.find_element_by_class_name("sidebar__entry-insert").click()
	except:
		driver.back()
	finally:
		time.sleep(2)