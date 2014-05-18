g=serial('COM3');
g.InputBufferSize=4096;
g.timeout=2;
g.BaudRate=9600;
g.Parity='none';
g.StopBits=1;
g.Terminator='LF';
g.FlowControl='none';
fopen(g);%打开串口设备对象g
fwrite(g,255);%以二进制的方式发送握手信号0xFF，缺省为异步通信方式
out=fread(g,33,'uint8')%接收单片机发送的33个数据（8位），并存入out数组中
%释放串口设备对象
fclose(g);
delete(g);
clear g;