   M S B A M L   `   `   `  ����C  ?Workload, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullm;clr-namespace:Workload.TabelWindow.CreateAndEditFieldsPages-Workload.TabelWindow.CreateAndEditFieldsPages  5      A    ;Workload.TabelWindow.CreateAndEditFieldsPages.GroupEditForm   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Mlocal;clr-namespace:Workload.TabelWindow.CreateAndEditFieldsPages     5        N� Title$  Group��5	      .��5
      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      .+�5   
   �� $��
Назва��6   $��0��6    $��0��6-   $��Stretch=�6=   $��Stretch=�6Y   $
��Left=�6w   �� 5   
   -   5         ��Name$ GroupNameText��5      $��0��6)   $��1��66      ValidationTip#��[  6F   .��6m   ��5      �� 5        �� Path$
 Name�6    �� UpdateSourceTrigger$ PropertyChanged=�6&    �� ValidatesOnDataErrors .  �� ValidationRules 5!      5  /System.Windows.Controls.DataErrorValidationRule  5"      5$      .��5%      5&      �� 5(   
   $��Курс��6   $��1��6   $��0��6,   $��Stretch=�6<   $��Stretch=�6X   $
��Left=�6v   �� 5)   
   -   5        $ 
CourseText��5)      $��1��6&   $��1��63   $��Stretch=�6C   $��Right=�6_   $��20��6{   $��Center=�6�   $��Center=�6�   #��[  6�   .��6�   ��5*      �� 5+      $ Course�6   $ PropertyChanged=�6(    .  5,        5-      5/      .��50      51      �� 53   
   $!��Форма навчання��6   $��2��6)   $��0��66   $��2��6F   $��Stretch=�6Z   $��Stretch=�6v   $
��Left=�6�   �� 54   
   -   5         ��Name$ EducationalFormsList��54      $��3��61   $��3��6>   $��0��6O   $��2��6_   #��[  6s   $
��Auto��6�   ��55      �� 56      .R�57      �� ��6    �� $ EDUFORM_NAME�58      	 �� SelectedItem	 5:      �� 5;      $ EduForm�6   $ PropertyChanged=�6)    .  5<        5=      5?      5A      �� 5C   
   $1��+Абревіатура факультету��6   $��6��61   $��0��6>   $��Stretch=�6N   $��Stretch=�6j   $
��Left=�6�   �� 5D   
   -   5        $ FacultyAbreviationText��5D      $��6��62   $��1��6?   $��Stretch=�6O   $��Stretch=�6k   #��[  6�   .��6�   ��5E      �� 5F      $ Faculty�6   $ PropertyChanged=�6)    .  5G        5H      5J      .��5K      5L      �� 5N   
   $/��)Кількість бюджетників��6   $��7��60   $��0��6=   $��Stretch=�6M   $��Stretch=�6i   $
��Left=�6�   �� 5O   
   -   5        $ BudgetariesCountText��5O      $��7��60   $��1��6=   $��Stretch=�6M   $��Stretch=�6i   #��[  6�   .��6�   ��5P      �� 5Q      $ BudgetCount�6   $ PropertyChanged=�6-    .  5R        5S      5U      .��5V      5W      �� 5Y   
   $3��-Кількість контрактників��6   $��8��62   $��0��6?   $��Stretch=�6O   $��Stretch=�6k   $
��Left=�6�   �� 5Z   
   -   5        $ ContractorsCountText��5Z      $��8��60   $��1��6=   $��Stretch=�6M   $��Stretch=�6i   #��[  6�   .��6�   ��5[      �� 5\      $ ContractCount�6   $ PropertyChanged=�6/    .  5]        5^      5`      .��5a      5b      �� 5d   
   $��Нотації��6   $��9��6"   $��0��6/   $��Stretch=�6?   $��Stretch=�6[   $
��Left=�6y   �� 5e   
   -   5        $ 	NotesText��5e      $��10��6%   $��0��63   $��2��6C   $��Stretch=�6W   $��Stretch=�6s   
 �� TextWrapping$

 Wrap=�6�    �� AcceptsReturn . #��[  6�   $
��Auto��6�   .��6�   ��5f      �� 5g      $
 Misc�6   $ PropertyChanged=�6&    .  5h        5i      5k      .��5l      5m      5n      5o      