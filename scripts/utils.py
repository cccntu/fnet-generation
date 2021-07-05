from collections import defaultdict
import time
class Timer:
    def __init__(self, cond=lambda: True):
        self.cond = cond
        self.total = defaultdict(lambda : 0.0)
        self.last = defaultdict(lambda : None)
        self.last_key = None

    def _start(self, key):
        if self.cond():
            self.last[key] = time.perf_counter()
    def _stop(self, key=None):
        if self.cond():
            t = time.perf_counter()
            self.total[key] += t - self.last[key]
            self.last[key] = t
    def start(self, key):
        if self.last_key is not None:
            self._stop(self.last_key)
        self._start(key)
        self.last_key = key
    def stop(self):
        if self.last_key is not None:
            self._stop(self.last_key)
            self.last_key = None
    def summary(self):
        return self.total
