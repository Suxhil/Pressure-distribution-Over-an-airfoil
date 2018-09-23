filename='calculation1.xlsx';
sheet='Cp vs xc';
xx='B5:B15';
u='P5:P15';
l='T5:T15';
u2='P20:P30';
l2='T20:T30';
u4='P35:P45';
l4='T35:T45';
u6='P50:P60';
l6='T50:T60';
u10='P65:P75';
l10='T65:T75';
%odd numbers are the lower and even are the upper & 8 and 9 refers to 10 u
%and 10 l
x=xlsread(filename,sheet,xx);
AOA=4;  %change the andle of attack per iteration or change the index and use for loop.
    y1=xlsread(filename,sheet,u4);
    y2=xlsread(filename,sheet,l4);
    figure
    hold on;
    plot(x,y1,'d-k',x,y2,'o-g');
    set(gca,'Ydir','reverse'); % to reverse the y axis
    xlim([0 1]);
%     %to extend the curve
%     P1 = polyfit(x,y1,1);
%     P2 = polyfit(x,y2,1);
%     xr = roots(P1-P2)
%    hold on; 
%     %xr(imag(xr) ~= 0) = []
%     yr = polyval(P2,xr)
%     A=[x(10);y1(10)];
%     B=[x(10);y2(10)];
%     I=[xr(1);yr(1)];
%     Ad_plot=plot(xr(1),yr(1),'--ro');%the intersecting point
%     hold on;
%     plot([x(10) xr(1)],[y1(10) yr(1)]);
%     plot([x(10) xr(1)],[y2(10) yr(1)]);
    xlabel('x/c');
    ylabel('Cp');  
    title(['AOA: ',num2str(AOA),'\circ']);
    legend('upper surface','lower surface')
    hold off
    A_U=trapz(x,y1)-trapz(x,y2)
%     A_a=trapz([x(10) xr(1)],[y1(10) yr(1)])-trapz([x(10) xr(1)],[y2(10) yr(1)])
    A_Total=abs(A_U)
    
  
    print(num2str(AOA),'-dpng','-r300');

