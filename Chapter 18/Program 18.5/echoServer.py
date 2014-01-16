# echoserver.py 

import socket

HOST = ''       # host name
PORT = 5000     # port
s = socket.socket(socket.AF_INET, 
                          socket.SOCK_STREAM)
s.bind((HOST, PORT))
s.listen(1)
conn, addr = s.accept()
print 'Connected by', addr

while True:
    data = conn.recv(1024)
    if not data: 
        break
    print data
    conn.send(data)
conn.close()

