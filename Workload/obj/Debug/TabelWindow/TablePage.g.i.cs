﻿#pragma checksum "..\..\..\TabelWindow\TablePage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "3CE008CB63C955EE2C00453E605B19A76729982F56053775F35F4DD91171A5F2"
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
using Workload;


namespace Workload {
    
    
    /// <summary>
    /// TablePage
    /// </summary>
    public partial class TablePage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 18 "..\..\..\TabelWindow\TablePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ColumnDefinition CreateEditColumn;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\..\TabelWindow\TablePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ImportBut;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\TabelWindow\TablePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ExportBut;
        
        #line default
        #line hidden
        
        
        #line 25 "..\..\..\TabelWindow\TablePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button PrintBut;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\..\TabelWindow\TablePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button SortBut;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\..\TabelWindow\TablePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button DelBut;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\TabelWindow\TablePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddBut;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\..\TabelWindow\TablePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid tableGrid;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\TabelWindow\TablePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DockPanel CreateEditPanel;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Workload;component/tabelwindow/tablepage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\TabelWindow\TablePage.xaml"
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
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.CreateEditColumn = ((System.Windows.Controls.ColumnDefinition)(target));
            return;
            case 2:
            this.ImportBut = ((System.Windows.Controls.Button)(target));
            return;
            case 3:
            this.ExportBut = ((System.Windows.Controls.Button)(target));
            return;
            case 4:
            this.PrintBut = ((System.Windows.Controls.Button)(target));
            return;
            case 5:
            this.SortBut = ((System.Windows.Controls.Button)(target));
            return;
            case 6:
            this.DelBut = ((System.Windows.Controls.Button)(target));
            return;
            case 7:
            this.AddBut = ((System.Windows.Controls.Button)(target));
            return;
            case 8:
            this.tableGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 9:
            this.CreateEditPanel = ((System.Windows.Controls.DockPanel)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

