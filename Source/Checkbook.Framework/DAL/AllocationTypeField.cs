using System;

namespace Checkbook.Framework.DAL 
{
    public partial class AllocationTypeField
    {
        public int AllocationTypeFieldID { get; set; }
        public int AllocationTypeID { get; set; }
        public int DataTypeID { get; set; }
        public string Label { get; set; }
        public bool Required { get; set; }
    }
}