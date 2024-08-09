namespace Core.TerceroCore.Query.ConsultForanea.Handler
{
    public class TercerosForaneasHandler
    {
        private readonly IMapper _mapper;
        private readonly ITerceroContrac _Itercero;
        public TercerosForaneasHandler(ITerceroContrac Itercero, IMapper mapper)
        {
            _Itercero = Itercero;
            _mapper = mapper;
        }

        public async Task<TercerosForaneasResponse> GetTerceroForaneas()
        {
            var resp = await _Itercero.GetForaneasConsultModels();
            var ListForaneas = _mapper.Map<TercerosForaneasResponse>(resp);
            return ListForaneas;
        }
    }
}
