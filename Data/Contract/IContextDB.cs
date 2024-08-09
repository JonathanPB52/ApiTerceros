namespace Data.Contract
{
    public interface IContextDB
    {
        SqlConnection Connection { get; }
    }
}
