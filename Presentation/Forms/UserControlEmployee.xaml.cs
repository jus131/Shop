using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Domain;
using Common;

namespace Presentation.Forms
{
    /// <summary>
    /// Lógica de interacción para UserControlEmployee.xaml
    /// </summary>
    public partial class UserControlEmployee : UserControl
    {
        private EmployeeModels models = new EmployeeModels();
        public UserControlEmployee()
        {
            InitializeComponent();
            ListEmployee();
        }

        private void ListEmployee()
        {
            ListViewEmployee.ItemsSource = models.GetAll();
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            //
        }

        private void txtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            ListViewEmployee.ItemsSource = models.FindByID(txtSearch.Text);
        }

        private void DialogHost_DialogClosing(object sender, MaterialDesignThemes.Wpf.DialogClosingEventArgs eventArgs)
        {

        }
    }
}
