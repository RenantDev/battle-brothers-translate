from fp.fp import FreeProxy


class Proxy:
    # Define as variaveis do proxy
    def __init__(self, country_id=['US', 'BR'], timeout=0.5, rand=True):
        # Location deve ser uma array
        self.timeout = timeout
        self.country_id = map(list, country_id)
        self.rand = rand

    # Retorna um novo proxy
    def defineProxy(self):
        # proxy = FreeProxy(country_id=['US', 'BR'], timeout=0.3, rand=True).get()
        proxy = FreeProxy(country_id=self.country_id, timeout=self.timeout, rand=self.rand).get()
        return proxy

