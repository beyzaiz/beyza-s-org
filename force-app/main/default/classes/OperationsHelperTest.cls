@isTest
public class OperationsHelperTest {
    @isTest
    public static void largestOutOfTwoNumbersTest() {
        Decimal d1 = 10;
        Decimal d2 = 7.7;
        Decimal expectedMax = 10;
        Decimal actual = new OperationsHelper().largestOutOfTwoNumbers(d1, d2);
        assert.areEqual(expectedMax , actual);
  
    }
    @isTest 
    public static void smallestOutOfThreeNumbersTest() {
        Decimal d1 = 5;
        Decimal d2 = 1;
        Decimal d3 = 98;
        Decimal expectedMin = 1;
        Decimal actualMin= new OperationsHelper().smallestOutOfThreeNumbers(d1, d2, d3);
        assert.areEqual(expectedMin,actualMin);
        
    }
    @isTest
    public static void sumOfPositiveIntegerTest() {
        Integer n = 3;
        Integer expectedSum = 6;
        test.startTest();
        Integer actualSum = new OperationsHelper().sumOfPositiveInteger(n);
        test.stopTest();
        assert.areEqual(expectedSum, actualSum);
        
        
    }
}