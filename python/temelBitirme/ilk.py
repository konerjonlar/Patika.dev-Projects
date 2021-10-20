el = []
def f(l):
  # i liste değilse el listesine ekle
  for i in l:
    if type(i) == list:
      f(i)
    else:
      el.append(i)
f(l)
