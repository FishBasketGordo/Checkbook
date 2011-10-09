using System;

namespace Checkbook.Framework.DAL 
{
    public partial class BillFrequency
    {
        public int BillFrequencyID { get; set; }
        public string FrequencyName { get; set; }
        public int ApproximateDays { get; set; }
    }
}