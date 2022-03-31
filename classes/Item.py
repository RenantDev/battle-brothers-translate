import os
import shutil

from config import VERSION, LAGUAGE
from classes.Extractor import Extractor
from classes.Translate import Translate

# inicia variaveis
cwd = os.getcwd()
translate = Translate()


# Tradução de itens do jogo
class Item:

    # Inicia o item
    def __init__(self):
        self.extractor = Extractor()

        self.folder = ''
        self.file = ''

        self.file_texts = ''
        self.name = ''
        self.description = ''

        self.data_file = ''

    # Busca as pastas
    def find_folders(self):
        return self.extractor.get_folders('en', VERSION, 'items')

    # Busca as subpastas
    def find_sub_folders(self, folder):
        return self.extractor.get_folders('en', VERSION, 'items\\' + folder)

    # Busca os arquivos
    def find_files(self, folder):
        return self.extractor.get_files('en', VERSION, 'items\\' + folder)

    # Busca o nome do item
    def find_name(self):
        result = self.extractor.get_item_texts('en', VERSION, self.folder, self.file)
        return result[0]

    # Busca a descrição do item
    def find_description(self):
        result = self.extractor.get_item_texts('en', VERSION, self.folder, self.file)
        return result[1]

    # Pega todos os textos do arquivo
    def get_full_text(self):
        self.data_file = open(cwd + "\\game_files\\en\\" + VERSION + "\\scripts\\items\\" + self.folder + "\\" + self.file, "r")

    # Insere o texto traduzido no conteudo antigo
    def insert_translate_text(self):
        pass

    # Cria uma nova pasta
    def create_folder(self):
        shutil.rmtree(cwd + "\\game_files\\pt\\" + VERSION)

        en_version = cwd + "\\game_files\\en\\" + VERSION
        pt_version = cwd + "\\game_files\\pt\\" + VERSION
        shutil.copytree(en_version, pt_version)



    # Escreve um novo arquivo
    def write_file(self):
        with open(cwd + "\\game_files\\" + LAGUAGE + "\\" + VERSION + "\\scripts\\items\\" + self.folder + "\\" + self.file, 'w', encoding='utf-8') as f:
            for line in self.data_file:
                if line.find('this.m.Name = "') == 2:
                    f.write(f'		this.m.Name = "{self.name}";\n')
                elif line.find('this.m.Description = "') == 2:
                    f.write(f'		this.m.Description = "{self.description}";\n')
                else:
                    f.write(line)

    def translate(self):
        self.name = self.find_name()
        self.description = self.find_description()

        self.name = translate.translate(self.name)
        self.description = translate.translate(self.description)

    def write_new_file(self):
        self.get_full_text()
        # self.create_folder()
        self.write_file()

