using NUnit.Framework;

namespace NUnitDemo
{
    public class Calculator
    {
        public int Add(int a, int b)
        {
            return a + b;
        }
    }

    public class CalculatorTests
    {
        [Test]

        public void Add_Test()
        {
            Calculator calculator = new Calculator();

            int result = calculator.Add(10,20);

            Assert.AreEqual(30,result);
        }
    }
}