using MLSDAL;
using MLSOBJ;


namespace MLSBLL
{
    public class EstateBLL
    {
        EstateDAL stateDAL;

        public EstateBLL()
        {
            this.stateDAL = new EstateDAL();
        }

        public void SaveSate(EstateOBJ stateOBJ)
        {
            stateDAL.SaveSate(stateOBJ);
        }
    }
}
