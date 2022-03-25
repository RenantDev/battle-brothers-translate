import time

from googletrans import Translator
from classes.Proxy import Proxy


class Translate:
    def __init__(self):
        self.language = 'pt'
        self.proxy = Proxy()
        self.proxy_ip = self.proxy.defineProxy()

    # Traduz o texto
    def translate(self, text, count=0):
        # Inicia uma nova lib de tradução
        translator = Translator(proxies={'http': self.proxy_ip})
        # print(self.proxy_ip)

        if count < 3 and text != '':
            try:
                text_translated = translator.translate(text, dest=self.language).text
                # print(" - " + text_translated)
                time.sleep(0.3)

                return text_translated
            except:
                # print("Texto: " + text)
                # print('Erro: Requer mudança de IP')
                # print('Mudando IP...')
                self.proxy_ip = self.proxy.defineProxy()
                time.sleep(3)
                count = count + 1
                return self.translate(text, count)
        else:
            # print('texto não traduzido...')
            return text
