using System;

namespace Checkbook.Framework.DAL 
{
    public partial class Fund
    {
        public int FundID { get; set; }
        public int FundTypeID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}