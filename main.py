from classes.Item import Item
from classes.Extractor import Extractor
from config import VERSION

item = Item()
extractor = Extractor()

# item.create_folder()
folders = extractor.get_folders('en', VERSION, 'items')
i = 0
while len(folders) > i:
    # pegar as sub pastas
    sub_folders = extractor.get_folders('en', VERSION, 'items\\' + folders[i])
    if len(sub_folders) > 0:
        x = 0
        while len(sub_folders) > x:
            sub_files_list = extractor.get_files('en', VERSION, 'items\\' + folders[i] + sub_folders[x])
            y = 0
            while len(sub_files_list) > y:
                texts = extractor.get_item_texts('en', VERSION, folders[i] + '\\' + sub_folders[x], sub_files_list[y])

                item.file = sub_files_list[y]
                item.folder = folders[i] + sub_folders[x]

                item.name = str(texts[0])
                item.description = str(texts[1])
                item.translate()
                item.write_new_file()
                print(item.name)
                y += 1
            x += 1
        # pegar a lista de arquivos da pasta
        files_list = extractor.get_files('en', VERSION, 'items\\' + folders[i])
        k = 0
        while len(files_list) > k:
            texts = extractor.get_item_texts('en', VERSION, folders[i], files_list[k])

            item.file = files_list[k]
            item.folder = folders[i]

            item.name = str(texts[0])
            item.description = str(texts[1])
            item.translate()
            item.write_new_file()
            print(item.name)
            k += 1
    i += 1


