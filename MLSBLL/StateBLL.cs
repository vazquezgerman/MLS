using MLSDAL;
using MLSOBJ;


namespace MLSBLL
{
    public class StateBLL
    {
        StateDAL stateDAL;

        public StateBLL()
        {
            this.stateDAL = new StateDAL();
        }

        public void SaveSate(StateOBJ stateOBJ)
        {
            stateDAL.SaveSate(stateOBJ);
        }
    }
}
