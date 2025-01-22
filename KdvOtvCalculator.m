%Aylin Manav 
%210709031 
%Computer Engineering 
%CEN103 
%Project1 
%Fall2022
%DENİZ DAL

format long g

productValue=input("Please Enter Product Value: ");
kdvRate=0.18;

if productValue<120000

    % normal sistem kodları
    rate= 45;
    otvAmount=productValue*(rate/100);
    otvValue = productValue+otvAmount;
    totalAmount= otvValue + otvValue*kdvRate;
    
    % gradual system kodları
    gradualSystem = 45;
    gradualSystemRate=('45');
    gradualOtvAmount=productValue*(gradualSystem/100);
    gradualOtvValue=productValue+ gradualOtvAmount;
    gradualTotalAmount=gradualOtvValue+gradualOtvValue*kdvRate;

elseif  120000 <= productValue && productValue <150000
    
    %normal sistem kodları
    rate= 50;
    otvAmount=productValue*(rate/100);
    otvValue = productValue+otvAmount;
    totalAmount= otvValue + otvValue*kdvRate;

    %gradual sistem kodları
    gradualSystem= [ 45 ,50 ];
    gradualSystemRate=('45 and 50');
    gradualOtvAmount=(120000*(gradualSystem(1,1)/100))+ ((productValue-120000)*(gradualSystem(1,2)/100));
    gradualOtvValue=productValue+gradualOtvAmount;
    gradualTotalAmount=gradualOtvValue+gradualOtvValue*kdvRate;

elseif 150000 <= productValue && productValue<175000

    %normal sistem kodları
    rate= 60;
    otvAmount=productValue*(rate/100);
    otvValue= productValue+ otvAmount;
    totalAmount= otvValue + otvValue*kdvRate;
    
    %gradual sistem kodları
    gradualSystem= [ 45 ,50,60 ];
    gradualSystemRate=('45, 50 and 60');
    gradualOtvAmount=120000*((gradualSystem(1,1)/100))+ ((150000-120000)*(gradualSystem(1,2)/100)) + ((productValue-150000)*(gradualSystem(1,3)/100));
    gradualOtvValue=productValue+gradualOtvAmount;
    gradualTotalAmount=gradualOtvValue+gradualOtvValue*kdvRate;


elseif 175000 <= productValue && productValue< 200000

    %normal sistem kodları
    rate= 70;
    otvAmount=productValue*(rate/100);
    otvValue=productValue+otvAmount;
    totalAmount= otvValue + otvValue*kdvRate;

    %gradual sistem kodları
    gradualSystem= [ 45 ,50,60,70 ];
    gradualSystemRate=('45, 50, 60 and 70');
    gradualOtvAmount= 120000*((gradualSystem(1,1)/100))+ ((150000-120000)*(gradualSystem(1,2)/100)) + ((175000-150000)*(gradualSystem(1,3)/100)) + ((productValue-175000)*(gradualSystem(1,4)/100));
    gradualOtvValue=productValue+gradualOtvAmount;
    gradualTotalAmount=gradualOtvValue+gradualOtvValue*kdvRate;

else

    % normal sistem kodları
    rate= 80;
    otvAmount=productValue*(rate/100);
    otvValue=productValue+otvAmount;
    totalAmount= otvValue + otvValue*kdvRate;

    % gradual sistem kodları
    gradualSystem= [45 ,50,60,70, 80];
    gradualSystemRate=('45, 50, 60, 70 and 80');
    gradualOtvAmount= 120000*((gradualSystem(1,1)/100))+ ((150000-120000)*(gradualSystem(1,2)/100)) + ((175000-150000)*(gradualSystem(1,3)/100)) + ((200000-175000)*(gradualSystem(1,4)/100)) + ((productValue-200000)*(gradualSystem(1,5)/100));
    gradualOtvValue=productValue+gradualOtvAmount;
    gradualTotalAmount=gradualOtvValue+gradualOtvValue*kdvRate;

end
if productValue>0
    fprintf('                 Current System            Gradual System              Difference \n');
    fprintf('ÖTV Base(TL)    %14g        %21g       %10g\n',productValue,productValue,(productValue-productValue));
    fprintf('ÖTV Rate(%%)     %14d        %21s                -   \n',rate,gradualSystemRate);
    fprintf('ÖTV(TL)         %14g        %21g         %10g\n',otvAmount,gradualOtvAmount,(otvAmount-gradualOtvAmount));
    fprintf('ÖTV Base+ÖTV(TL)%14g        %21g         %10g\n',otvValue,gradualOtvValue,(otvValue-gradualOtvValue));
    fprintf('KDV (TL)        %14.2f        %21.2f         %10g\n',(otvValue*kdvRate),(gradualOtvValue*kdvRate),(otvValue*kdvRate-gradualOtvValue*kdvRate));
    fprintf('Total Tax       %14.2f        %21.2f         %10g\n', (otvAmount+otvValue*kdvRate) , (gradualOtvAmount+gradualOtvValue*kdvRate), ((otvAmount+otvValue*kdvRate)- (gradualOtvAmount+gradualOtvValue*kdvRate)));
    fprintf('Sale Price      %14.2f        %21.2f         %10g\n',totalAmount,gradualTotalAmount,(totalAmount-gradualTotalAmount));
else 
    disp('Value cannot be 0 or negative number!');%value cannot be negative or zero
end

 %to print table to the screen



