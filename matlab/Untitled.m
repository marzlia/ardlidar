g=serial('COM3');
g.InputBufferSize=4096;
g.timeout=2000;
g.BaudRate=9600;
g.Parity='none';
g.StopBits=1;
g.Terminator='LF';
g.FlowControl='none';
fopen(g);%�򿪴����豸����g
%fwrite(g,255);%�Զ����Ƶķ�ʽ���������ź�0xFF��ȱʡΪ�첽ͨ�ŷ�ʽ
out = fread(g,1440,'uint8')%���յ�Ƭ�����͵�33�����ݣ�8λ����������out������

%����ת��
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

%��ͼ--������
polar(angle,distance,'.');
        hold on;
    
%�ͷŴ����豸����
fclose(g);
delete(g);
clear g;