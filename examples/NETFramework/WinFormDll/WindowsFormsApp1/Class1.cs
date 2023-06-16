using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WindowsFormsApp1
{
    public class Class1
    {
        private static Form2 form = null;
        [STAThread]
        static public void ShowForm()
        {
            if (form == null)
                form = new Form2();
            form.Show();
        }
    }
}
