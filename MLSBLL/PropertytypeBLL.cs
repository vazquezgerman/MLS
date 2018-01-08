using MLSDAL;
using MLSOBJ;
using System.Data;

namespace MLSBLL
{
    public class PropertytypeBLL
    {
        PropertytypeDAL propertytypeDAL;

        public PropertytypeBLL()
        {
            this.propertytypeDAL = new PropertytypeDAL();
        }

        public DataTable GetPropertytype()
        {
            return propertytypeDAL.GetPropertytype();
        }
    }
}
