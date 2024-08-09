using AutoMapper;
using Core.TerceroCore.Query.Consult.Response;
using Core.TerceroCore.Query.ConsultForanea.Response;
using Data.Models.ClientModelsDB.Querie.Consult;

namespace Core.Globals
{
    public class MapperConfig
    {
        public static void Configure(IMapperConfigurationExpression cfg)
        {
            cfg.CreateMap<TerceroConsultModels, TerceroResponse> ();
            cfg.CreateMap<TerceroConsutlForaneasModels, TercerosForaneasResponse>();
        }
    }
}
