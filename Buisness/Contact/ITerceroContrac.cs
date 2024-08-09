namespace Buisness.Contact
{
    public interface ITerceroContrac
    {
        public Task<List<TerceroConsultModels>> GetTerceroConsultModels();
        public Task<TerceroConsutlForaneasModels> GetForaneasConsultModels();
        public Task<string> CreateTerceroConsultModels(TerceroCreateModels tercero);
        public Task<string> EditTerceroConsultModels(TerceroEditModels tercero);
        public Task<string> DeleteTerceroConsultModels(int Id);

    }
}
