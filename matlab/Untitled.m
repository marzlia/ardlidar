g=serial('COM3');
g.InputBufferSize=4096;
g.timeout=2;
g.BaudRate=9600;
g.Parity='none';
g.StopBits=1;
g.Terminator='LF';
g.FlowControl='none';
fopen(g);%�򿪴����豸����g
fwrite(g,255);%�Զ����Ƶķ�ʽ���������ź�0xFF��ȱʡΪ�첽ͨ�ŷ�ʽ
out=fread(g,33,'uint8')%���յ�Ƭ�����͵�33�����ݣ�8λ����������out������
%�ͷŴ����豸����
fclose(g);
delete(g);
clear g;