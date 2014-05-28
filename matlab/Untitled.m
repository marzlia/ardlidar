g=serial('COM3');
g.InputBufferSize=4096;
g.timeout=2000;
g.BaudRate=9600;
g.Parity='none';
g.StopBits=1;
g.Terminator='LF';
g.FlowControl='none';
fopen(g);%打开串口设备对象g
%fwrite(g,255);%以二进制的方式发送握手信号0xFF，缺省为异步通信方式
out = fread(g,1440,'uint8')%接收单片机发送的33个数据（8位），并存入out数组中

%数据转换
    m=1;
    n=1;
if(out(n)==255)
    for i = 1:360
        distance(m)=9.85-3.54*[out(n+1)+out(n+2)]/100;
        angle(m)=m*2*pi/360;
        m=m+1;
        n=n+3;
        
    end;
else
    n=n+1;    
end;

%绘图--极坐标
polar(angle,distance,'.');
        hold on;
    
%释放串口设备对象
fclose(g);
delete(g);
clear g;