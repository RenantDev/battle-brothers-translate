from classes.Item import Item

item = Item()

item.folder = 'accessory'
item.file = 'bandage_item.nut'

item.name = item.find_name()
item.description = item.find_description()

item.create_folder()

print(f'Name: {item.name} \nDescription: {item.description} \nFolder & File: {item.folder}/{item.file}')
