   M S B A M L   `   `   `  ����C  ?Workload, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullm;clr-namespace:Workload.TabelWindow.CreateAndEditFieldsPages-Workload.TabelWindow.CreateAndEditFieldsPages  5      9!clr-namespace:Workload.PropertiesWorkload.Properties  5      @    :Workload.TabelWindow.CreateAndEditFieldsPages.WorkLoadEdit   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Mlocal;clr-namespace:Workload.TabelWindow.CreateAndEditFieldsPages     5      8
properties!clr-namespace:Workload.Properties     5        N� Title$  WorkLoadEdit��5
       � 	Resources 5      =   7Workload.TabelWindow.CreateAndEditFieldsPages.FreeHours   	FreeHours:   4Workload.TabelWindow.CreateAndEditFieldsPages.Groups 
 Groups@   :Workload.TabelWindow.CreateAndEditFieldsPages.HoursOnTutor  HoursOnTutorN   HWorkload.TabelWindow.CreateAndEditFieldsPages.HoursOnTutorFormatedString  HoursOnTutorFormatedString��%t   &	        &	      &	 &     &	 9       5   
   6     5   
   6     5   
   6     5   
   6+   5      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $��25 �6   �� 5       � ColumnDefinitions 5   
   �� 5      $	��100 �6   �� 5      $
��0.5* �6   �� 5      $
��0.5* �6   �� 5      $	��300 �6   .+�5   
    � -   5          �Name$ ParametersFrame��5   >   $��0��6   $��0��6   $��3��6-   $��Stretch=�6W   $��Stretch=�6s   &   System.Windows.Controls.DataGrid  5    
   -   5          Name$ SubdetailsGrid��5       $��0��6+   $��1��68   $��2��6H   $��1.5,1.5q�6\      SelectionMode$ Single=�6m      AutoGenerateColumns .  {�.  .@�5!      4  .System.Windows.Controls.DataGridTemplateColumn     CellEditingTemplate 5"      �� 5#      .R�5$      ��   ValidationTip#��[ 6$   $
��Auto��6K   $
��Autoq�6Y   5%      5'      	   Columns	 5(      0  *System.Windows.Controls.DataGridTextColumn  5)      -   5        	SubTutCol��,  &System.Windows.Controls.DataGridColumn
   Header$
 Викладач��5)   8      
IsReadOnly . 1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6\   ��  �� Path$ TEACHERS_TBL.TEACHER_NAME�  5*      -   5        
SubHourCol��$
 Години��5*   9    .   6I   �� $ HOURS�6h     5+      $
 
Групи��6%   -   5        GroupCol�� .  5+   F   ��  �� 	Converter# [ 6|   5-      �� 5/   
   $)��#Доступні викладачі��6   $��1��6-   $��1��6:   $��Stretch=�6J   $��Center=�6f   $��Center=�6�   $��Stretch=�6�     50   
   -   5        $ AvaliebleTutors��50      $��2��6,   $��1��69   $��1��6I   $��1.5,1.5q�6]   $ Single=�6n      
IsReadOnly .  .  	 51        52      $
 ПІБ��6%    .  6D   �� $ TEACHER_NAME�  53      $
 Години��6)    .    MinWidth$ 80Q�6K      CellTemplate 54      �� 55      .R�56      � .+�57   "   �  � Minimum$ 0Q�6.   $��Stretch=�6�   $��Stretch=�6   � Maximum 6:   �� "
  Workload.Properties.Settings 
  Default �� Source# Z $ MaxHoursPerTeacher� �� Mode$ OneWay=� � Value 6�   �� # [ $ OneWay=�6  �� 58   "   ��6,   �� # [ $ OneWay=�59      5:      5<      5>      �� 5@   
   $��Набори груп��6   $��1��6&   $��2��63   $��Stretch=�6C   $��Center=�6_   $��Center=�6�   $��Stretch=�6�    � 5A   
   -   5        $ GroupSelectFrame��5A      $��2��6*   $��2��6:   $��1.5,1.5q�6G   {�.  6X     5B   
   -   5        $ 	MainsGrid��5B      $��0��6&   $��3��63   $��1.5,1.5q�6C   $ Single=�6T    .     CanUserAddRows .  	 5C        5D      $
 Дисципліна��6%    .  6K   �� $ SUBJECTS_TBL.SUBJECT_NAME�  5E      -	   5        
EduFormCol��$
 
Форма��5E   9    .  6\   �� $ EDUFORMS_TBL.EDUFORM_NAME�  5F      -
   5        
EduTypeCol��$
 Тип��5F   9    .  6Z   �� $ EDUTYPES_TBL.EDUTYPE_NAME�  5G      -   5        	CourseCol��$
 Курс��5G   8    .  6Z   �� $ 	COURSE_NO�  5H      -   5        SemesterCol��$
 Семестр��5H   :    .  6_   �� $ SEMESTER_NO�5J        5K   
   -   5        $ DetailsGrid��5K      $��1��6(   $��2��65   $��3��6F   $��1.5,1.5q�6V   $ Single=�6g    .   .  	 5L        5M      $
 Вид роботи��6%    .  6K   �� $ WORKS_TBL.WORK_NAME�  5N      $
 Вільно��6%    .  65   �� # [  6n   5P      5Q      5R      