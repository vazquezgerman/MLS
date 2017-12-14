using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLSOBJ
{
    public class StateOBJ
    {
        public int Operacion { get; set; }
        public int Pais { get; set; }
        public int Provincia { get; set; }
        public int Localidad { get; set; }

        public string Calle { get; set; }
        public int Numero { get; set; }
        public string Piso { get; set; }
        public int MetrosCuadradosCubiertos { get; set; }
        public int MetrosCuadradosTotales { get; set; }
    }
}
