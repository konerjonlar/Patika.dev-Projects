def reverseList(L):

    # L boş listeyse fonksiyonu sonlandır
    if len(L) == 0:
        return

    # 1 eleman var
    if len(L) == 1:
        
        # 2 ihtimal var içindeki eleman liste veya değil
        if isinstance(L[0], list):
            #listeyse nested olarak devam et
            return [reverseList(L[0])]
        else:
            return L
        
    # 1 den çok eleman var ise
    else:
        # ilk elemanı sona ekleyerek nested function olarak devam et
        return reverseList(L[1:]) + reverseList(L[:1])
