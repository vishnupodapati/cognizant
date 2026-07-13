using NUnit.Framework;

namespace NUnitDemo
{
    public class StringTests
    {
        [Test]

        public void String_Not_Empty()
        {
            string name = "Yasin";

            Assert.IsNotEmpty(name);
        }
    }
}