   M S B A M L   `   `   `  ����C  ?Workload, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Workload.PropertiesWorkload.Properties  5      #clr-namespace:WorkloadWorkload  5      #    Workload.TabelWindow.Settings   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8
properties!clr-namespace:Workload.Properties     5      (localclr-namespace:Workload     5        N� Title$  Settings��5
      .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      $��45 �6   �� 5      .+�5   
   �� $��0��6   $��0��6    $��Факультет��60   $��2��6C   .��5      ]� ��. .+�5      �� -   5         ��Name$ DeleteFacilityBut��5      $��Видалити��64   $��Right=�6G   $��Right=�6^   $
��5, 0q�6z   �� 5      -   5         ��Name$ FacilityText��5       �� 
IsEditable . $
��Left=�6�    �� Text 6C   �� "  Workload.Properties.Settings   Default �� Source# Z 	 �� Path$	 Facility�
 �� Mode$
 OneTime=���6�   �� # Z $	 FacilitiesList�$
 OneTime=�5      5      �� 5   
   $��1��6   $��0��6    $��Кафедра��60   $��2��6A   .��5      ]� .+�5       �� -   5        $ DeleteDepartmentBut��5       $��Видалити��66   $��Right=�6I   $��Right=�6`   $
��5, 0q�6|   �� 5!      -   5        $ DepartmentText��5!       .  6E   �� # Z $	 
Department�$
 OneWay=���6�   �� # Z $	 DepartmentsList�$
 OneTime=�5"      5#      �� 5$   
   $��База Даних��6   $��2��6'   $��0��64   $��2��6D   $y�Visible=�6X   .��5%      �� -   5        $ RestoreDBBut��5%      $,��&Відновити базу даних��6+   $
��Left=�6J   5&      �� 5'   
   $M��GМаксимальна кількість годин виклдання��6   $��3��6B   $��2��6O   .��5(      ��    ValidationTip#��[  6   .��6=   ��5)      �� 5*      # Z 6   $	 MaxHoursPerTeacher�6N   $
 TwoWay=�6h    �� ValidatesOnDataErrors .  �� UpdateSourceTrigger$ PropertyChanged=�6�    �� ValidationRules 5+      5  /System.Windows.Controls.DataErrorValidationRule  5,      5.      .��5/       50      51      52      53      