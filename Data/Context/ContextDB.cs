namespace Data.Context
{
    public class ContextDB : IContextDB
    {
        private readonly string _connectionString;
        private readonly SqlConnection _connection;

        public ContextDB(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("ConexionSQL");
            _connection = new SqlConnection(_connectionString);
        }

        public SqlConnection Connection => _connection;
    }
}
