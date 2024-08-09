namespace Core.TerceroCore.Command.Delete.Handler
{
    public class TerceroDeleteHandler
    {
        private readonly IMapper _mapper;
        private readonly ITerceroContrac _Itercero;
        public TerceroDeleteHandler(ITerceroContrac Itercero, IMapper mapper)
        {
            _Itercero = Itercero;
            _mapper = mapper;
        }

        public async Task<TerceroDeleteResponse> DeleteTercero(TerceroDeleteRequest tercero)
        {
            var resp = await _Itercero.DeleteTerceroConsultModels(tercero.IdTercero);
            TerceroDeleteResponse response = new TerceroDeleteResponse();
            response.Mensaje = resp;
            return response;
        }
    }
}
