#pragma checksum "..\..\..\..\TabelWindow\CreateAndEditFieldsPages\Main.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "D5592622E974BB510F00B8DF96F0912935E132E7B3695D16F95F0077FCC79999"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using Workload.TabelWindow.CreateAndEditFieldsPages;


namespace Workload.TabelWindow.CreateAndEditFieldsPages
{


    /// <summary>
    /// MainEditForm
    /// </summary>
    public partial class MainEditForm : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector
    {

#line default
#line hidden


#line 46 "..\..\..\..\TabelWindow\CreateAndEditFieldsPages\Main.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox AmountText;

#line default
#line hidden


#line 48 "..\..\..\..\TabelWindow\CreateAndEditFieldsPages\Main.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid AppliedWorksList;

#line default
#line hidden


#line 49 "..\..\..\..\TabelWindow\CreateAndEditFieldsPages\Main.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid UnappliedWorksList;

#line default
#line hidden

        private bool _contentLoaded;

        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent()
        {
            if (_contentLoaded)
            {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Workload;component/tabelwindow/createandeditfieldspages/main.xaml", System.UriKind.Relative);

#line 1 "..\..\..\..\TabelWindow\CreateAndEditFieldsPages\Main.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);

#line default
#line hidden
        }

        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target)
        {
            switch (connectionId)
            {
                case 1:
                    this.SubjectsList = ((System.Windows.Controls.ListView)(target));
                    return;
                case 2:
                    this.EduTypesList = ((System.Windows.Controls.ListView)(target));
                    return;
                case 3:
                    this.EduFormsList = ((System.Windows.Controls.ListView)(target));
                    return;
                case 4:
                    this.CourseChoose = ((System.Windows.Controls.ComboBox)(target));
                    return;
                case 5:
                    this.SemesterChoose = ((System.Windows.Controls.ComboBox)(target));
                    return;
                case 6:
                    this.AmountText = ((System.Windows.Controls.TextBox)(target));
                    return;
                case 7:
                    this.AppliedWorksList = ((System.Windows.Controls.DataGrid)(target));
                    return;
                case 8:
                    this.UnappliedWorksList = ((System.Windows.Controls.DataGrid)(target));
                    return;
            }
            this._contentLoaded = true;
        }

        internal System.Windows.Controls.Label SubjectNameLabel;
    }
}
