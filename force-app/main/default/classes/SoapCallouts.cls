public with sharing class SoapCallouts {

    public static String[] getParksByCountry(String country){
        ParksServices.ParksImplPort parkService = new ParksServices.ParksImplPort();
        String[] parks = parkService.byCountry(country);
        System.debug(parks);
        return parks;

    }
    
    public static double doAddCallout(Double a, Double b){
        calculatorServices.CalculatorImplPort calService = new calculatorServices.CalculatorImplPort();
        Double sum = calService.doAdd(a, b);
        System.debug(a + 'add' + b + '=' + sum);
        return sum;
    }

    public static Double doMultiplyCallout(Double a, Double b) {
        CalculatorServices.CalculatorImplPort calcService = new CalculatorServices.CalculatorImplPort();
        Double mult = calcService.doMultiply(a, b);
        System.debug(a + ' multiply ' + b + ' = ' + mult);
        return mult;
    }
}