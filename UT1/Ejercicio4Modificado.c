#include <stdio.h>

void main()
{
   if (0.1 + 0.2 != 0.3) {      
      printf("0.1 + 0.2 NO es igual a 0.3!!\n");
      printf("El resultado es: %.20f + %.20f = %.20f != %.20f \n\n",0.1, 0.2, 0.1+0.2, 0.3);}
   else {
      printf("0.1 + 0.2 es igual a 0.3\n");
           printf("El resultado es: %.20f + %.20f = %.20f == %.20f \n\n",0.1, 0.2, 0.1+0.2, 0.3);
   }

   float cerocoma1 = 0.1;
   float cerocoma2 = 0.2;
   if (cerocoma1+cerocoma2 != 0.3) {      
      printf("Utilizando float, 0.1 + 0.2 NO es igual a 0.3!!\n");
      printf("El resultado es: %.20f + %.20f = %.20f != %.20f \n\n",cerocoma1, cerocoma2, cerocoma1+cerocoma2, 0.3 );}
   else {
      printf("Utilizando float, 0.1 + 0.2 es igual a 0.3\n");
      printf("El resultado es: %.20f + %.20f = %.20f == %.20f \n\n",cerocoma1, cerocoma2, cerocoma1+cerocoma2, 0.3 );
   }  
   
   float cerocoma3 = 0.3;
   if (cerocoma1+cerocoma2 != cerocoma3) {      
      printf("Utilizando float en 0.3, 0.1 + 0.2 NO es igual a 0.3!!\n");
      printf("El resultado es: %.20f + %.20f = %.20f != %.20f \n\n",cerocoma1, cerocoma2, cerocoma1+cerocoma2, 0.3 );}
   else {
      printf("Utilizando float en 0.3, 0.1 + 0.2 es igual a 0.3\n");
      printf("El resultado es: %.20f + %.20f = %.20f == %.20f \n\n",cerocoma1, cerocoma2, cerocoma1+cerocoma2, cerocoma3 );
 }  
}
