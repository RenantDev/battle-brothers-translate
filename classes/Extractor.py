import os
import glob

# Variaveis de configuração
cwd = os.getcwd()


class Extractor:
    def __init__(self):
        self.folders = []
        self.files_list = []
        self.texts_list = []
        self.total_texts = 0

        self.name = ''
        self.description = ''

    # pega todas as pastas do tipo de objeto
    def get_folders(self, lang, version, type_object):
        os.chdir(cwd + "\\game_files\\" + lang + "\\" + version + "\\scripts\\" + type_object)
        arquivos = glob.glob('*/')  # procurar nome parecidos
        return arquivos

    # pega todos os arquivos do jogo
    def get_files(self, lang, version, type_object):
        os.chdir(cwd + "\\game_files\\" + lang + "\\" + version + "\\scripts\\" + type_object)
        arquivos = glob.glob('*.nut')  # procurar nome parecidos
        return arquivos

    # pega todos os textos do jogo
    def get_item_texts(self, lang, version, item, file):
        os.chdir(cwd + "\\game_files\\" + lang + "\\" + version + "\\scripts\\items\\" + item)

        with open(file) as f:
            lines = f.readlines()

        # print(lines)
        i = 0
        while len(lines) > i:
            if lines[i].find('this.m.Name = "') == 2:
                self.name = lines[i][lines[i].find('= "') + 3:lines[i].find('";')]
                # print(name)
            if lines[i].find('this.m.Description = "') == 2:
                self.description = lines[i][lines[i].find('= "') + 3:lines[i].find('";')]
                # print(description)
            i += 1
        return self.name, self.description

