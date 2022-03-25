from config import VERSION
from classes.Extractor import Extractor
from classes.Translate import Translate

extractor = Extractor()
translate = Translate()
folders = extractor.get_folders('en', VERSION, 'items')
# print(folders)
# files = files.get_files('en', VERSION, 'items\\accessory')
# result = extractor.get_item_texts('en', VERSION, 'accessory', 'bandage_item.nut')
# print(result)
i = 0
while len(folders) > i:
    # pegar as sub pastas
    sub_folders = extractor.get_folders('en', VERSION, 'items\\' + folders[i])
    if len(sub_folders) > 0:
        x = 0
        while len(sub_folders) > x:
            # print(folders[i] + '\\' + sub_folders[x])
            sub_files_list = extractor.get_files('en', VERSION, 'items\\' + folders[i] + '\\' + sub_folders[x])
            y = 0
            while len(sub_files_list) > y:
                texts = extractor.get_item_texts('en', VERSION, folders[i] + '\\' + sub_folders[x], sub_files_list[y])
                # print(sub_folders)
                name = translate.translate(str(texts[0]))
                description = translate.translate(str(texts[1]))
                print(f'Nome: \n {name} \nDescrição: \n {description} \n\n')
                y += 1
            # print(sub_files_list)
            x += 1
    # pegar a lista de arquivos da pasta
    files_list = extractor.get_files('en', VERSION, 'items\\' + folders[i])
    # print(len(files_list))
    k = 0
    while len(files_list) > k:
        texts = extractor.get_item_texts('en', VERSION, folders[i], files_list[k])
        k += 1
    i += 1
