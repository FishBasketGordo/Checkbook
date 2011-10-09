using System;

namespace Checkbook.Framework.DAL 
{
    public partial class AllocationType
    {
        public int AllocationTypeID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}