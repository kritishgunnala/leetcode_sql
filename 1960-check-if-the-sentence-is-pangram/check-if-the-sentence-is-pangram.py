class Solution(object):
    def checkIfPangram(self, sentence):
        ex=set(sentence)
        if len(ex)==26:
            return bool(1)
        else:
            return bool(0)
        