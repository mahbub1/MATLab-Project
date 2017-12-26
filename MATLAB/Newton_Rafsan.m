function [ root3, ea3 ] = Newton_Rafsan(xl )
f=@(x)x^3-1;
fp=@(x)3*x^2;
ea=inf;
root3=(inf);
ea3=(inf);
x2=0;
    for i=1:10
        if(i~=1)
            x2=root;
        end
        root=xl-(f(xl))/(fp(xl));
        ea=abs((root-x2)/root)*100;
        xl=root; 
        root3(i)=root;
    ea3(i)=ea;
    end 
end    
