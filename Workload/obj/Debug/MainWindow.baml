   M S B A M L   `   `   `  ����C  ?Workload, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Workload.PropertiesWorkload.Properties  5   	   #clr-namespace:WorkloadWorkload  5   	       Workload.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8
properties!clr-namespace:Workload.Properties     5   	   (localclr-namespace:Workload     5   	     � Title$  
MainWindow��5	   	   $	��700��6   $
��1200��6)   
���������66   Z� .��5
      � -   5         �Name$ DividerGrid��5
       � ColumnDefinitions 5   
   �� 5      $	��100��6   $	��150 �6.   �� 5      .+�5   
   �� -   5         ��Name$ PresentaionsList��5      $��0��6-   $��0��6:   $��Stretch=�6J   $��Stretch=�6f    �� SelectionMode$ Single=�6�   $��1.5,1,1.5,1.5q�6�   ��5      �� 5      .R�5      �� ��6    ��  �� Path$ PresentationName�5      ��5      �� 5       �� 
TargetType" ��6   .�5      -   5        5       �� 
GroupStyle 5      (  "System.Windows.Controls.GroupStyle  5         HeaderTemplate 5      �� 5      .R�5      �� 	 �� Padding$	 5,2,5,2q�6(   
�������$
��Bold"�6�   ��6:   �� "  Workload.Properties.Settings
   Default �� Source# Z
 $ AccentColor� �� Mode$ OneTime=�   ColorToBrush �� 	Converter# [  ��6�   �� $
 Name�5      5!      5#      �� 5$   
   $��0��6   $��1��6   $��Center=�6-   $��Center=�6J   $7��1Жодна вкладка не відчинена��5%      $��36(�62   
����·�$��0,0,0,50q�6Z   �� 5&   
   $��0��6   $��1��6   $��Center=�6-   $��Center=�6J   $d��^Для роботи натисніть на один з пунктів меню ліворуч��5'      
�����p�$��0,15,0,0q�6b   $��16(�6t   �� 5(   
   -   5         ��Name$ WorkTabs��5(      $��Stretch=�6'   $��0,0,0,0q�6E   $��Stretch=�6V   $��1��6r   ��5)      �� 5*      " ��6    �� Triggers 5+      �� 5,       �� Binding 6&   �� *Items.Count+ �� RelativeSource �� *Self+ �� Value 06l   .a�5-      ��  �� Property � y� �� Value$ Hidden=�6;   5.      50      52      53      54      