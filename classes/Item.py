import os
import shutil

from config import VERSION, LAGUAGE
from classes.Extractor import Extractor

# inicia variaveis do sistema
cwd = os.getcwd()


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
        pass

    # Cria uma nova pasta
    def create_folder(self):
        if not os.path.exists(cwd + "\\game_files\\" + LAGUAGE + "\\" + VERSION + "\\scripts\\items\\" + self.folder):
            os.makedirs(cwd + "\\game_files\\" + LAGUAGE + "\\" + VERSION + "\\scripts\\items\\" + self.folder)
        else:
            shutil.rmtree(cwd + "\\game_files\\" + LAGUAGE + "\\" + VERSION + "\\scripts\\items\\" + self.folder)
            os.makedirs(cwd + "\\game_files\\" + LAGUAGE + "\\" + VERSION + "\\scripts\\items\\" + self.folder)

    # Escreve um novo arquivo
    def write_file(self):
        self.create_folder()
