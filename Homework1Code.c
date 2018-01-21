
#include <stdio.h>
#include <math.h>

double bisectionMethod (double neg, double pos, double p1);
double newtonMethod (double p0);
double secantMethod (double p0, double p1);
double functionCalc (double x);
double derivativeCalc (double x);

#define TOL 0.0001
#define LEFTBOUND -1
#define RIGHTBOUND 1
#define MAX 50

void main (){
    double neg = 0.0;
    double pos = 0.0;
    double p1 = 1000;
    double result = 0.0;
    result = functionCalc(LEFTBOUND);
    if(result > 0){
        pos = LEFTBOUND;
        neg = RIGHTBOUND;
    } else{
        neg = LEFTBOUND;
        pos = RIGHTBOUND;
    }
    result = bisectionMethod(neg, pos, p1);
    
    printf ("The result from the bisectionMethod is: %lf \n", result);
    printf("\n");
    
    double p0 = 1.0;
    result = newtonMethod(p0);
    
    printf ("The result from the newtonMethod is: %lf \n", result);
    printf("\n");
    
    p0 = 1.0;
    p1 = 0.99;
    
    result = secantMethod(p0, p1);
    
    printf ("The result from the secantMethod is: %lf \n", result);
    
    return;
}

double bisectionMethod (double neg, double pos, double p1){
    printf("Running bisectionMethod(f, %lf, %lf) \n", neg, pos);
    double p = 0.0;
    p = (neg + pos) / 2;
    double calcdP = functionCalc(p);
    printf("f(%lf) = %lf \n", p, calcdP);
    if(fabs(functionCalc(p)) < TOL || fabs(p - p1) < TOL || fabs(p - p1) / fabs(p) < TOL){
        return p;
    } else if(functionCalc(p) < 0){
        return bisectionMethod(p, pos, p);
    } else {
        return bisectionMethod(neg, p, p);
    }
}

double newtonMethod (double p0){
    int i = 0;
    double p = 0.0;
    while(i <= MAX){
        p = p0 - (functionCalc(p0) / derivativeCalc(p0));
        printf("Iteration %d, p = %lf \n", i+1, p);
        if(fabs(p - p0) < TOL){
            return p;
        }else {
            p0 = p;
            i++;
        }
    }
}

double secantMethod (double p0, double p1){
    int i = 0;
    double p = 0.0;
    while(i <= MAX){
        p = p1 - (functionCalc(p1) * (p1 - p0)) / (functionCalc(p1) - functionCalc(p0));
        printf("Iteration %d, p = %lf \n", i+1, p);
        if(fabs(p - p1) < TOL){
            return p;
        }else{
            p0 = p1;
            p1 = p;
            i++;
        }
    }
}

double functionCalc (double x){
  return (3.0 * pow (x, 3)) - (2.0 * pow (x, 2)) + (5.0 * x) - (2.0 * exp (x)) + 10.0;
}

double derivativeCalc (double x){
  return (9 * pow (x, 2)) - (4 * x) + 5 - (2 * exp (x));
}