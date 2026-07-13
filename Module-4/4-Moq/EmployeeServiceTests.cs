using Moq;
using NUnit.Framework;

public interface IMessage
{
    string GetMessage();
}

public class EmployeeService
{
    private readonly IMessage message;

    public EmployeeService(IMessage message)
    {
        this.message = message;
    }

    public string Display()
    {
        return message.GetMessage();
    }
}

public class EmployeeServiceTests
{
    [Test]

    public void Display_Test()
    {
        var mock = new Mock<IMessage>();

        mock.Setup(x => x.GetMessage())

            .Returns("Success");

        EmployeeService service =
            new EmployeeService(mock.Object);

        Assert.AreEqual("Success",
            service.Display());
    }
}