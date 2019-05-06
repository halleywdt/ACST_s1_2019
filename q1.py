with open('C:/Users/10142/OneDrive/desktop/ACST890/as1/twain.txt','r',encoding='utf-8') as f: 
 contents=f.read()  
correction=contents.replace('Huck','HucK') 
with open('C:/Users/10142/OneDrive/desktop/ACST890/as1/twain.txt', 'w', encoding='utf-8') as w: 
 w.write(correction) 
