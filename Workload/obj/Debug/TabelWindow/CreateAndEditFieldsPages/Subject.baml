   M S B A M L   `   `   `  ����C  ?Workload, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullm;clr-namespace:Workload.TabelWindow.CreateAndEditFieldsPages-Workload.TabelWindow.CreateAndEditFieldsPages  5      C    =Workload.TabelWindow.CreateAndEditFieldsPages.SubjectEditForm   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Mlocal;clr-namespace:Workload.TabelWindow.CreateAndEditFieldsPages     5        N� Title$  Subject��5	      .��5
      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      $��25 �6   �� 5      $��25 �6   �� 5      .+�5   
   �� $
��Name��6   $��0��6   $��0��6,   �� 5   
   -   5         ��Name$ NameText��5      $��0��6$   $��1��61   $��Stretch=�6A   $��Stretch=�6]      ValidationTip#��[  6{   .��6�   .��5   9   ��5      �� 5       �� Path$
 Name�6    �� UpdateSourceTrigger$ PropertyChanged=�6&    �� ValidatesOnDataErrors .  �� ValidationRules 5      5  /System.Windows.Controls.DataErrorValidationRule  5      5      .��5      5       �� 5!   
   $��Notes��6   $��1��6    $��0��6-   $��Stretch=�6=   $��Center=�6[   �� 5"   
   -   5        $ 	NotesText��5"      $��2��6%   $��0��62   $��2��6B   $��Stretch=�6V    �� TextWrapping$
 Wrap=�6t   	 �� AcceptsReturn	 . $��Stretch=�6�   #��[  6�   $
��Auto��6�   .��6�   ��5#      �� 5$      $
 Misc�6   $ PropertyChanged=�6&    .  5%        5&      5(      .��5)      5*      5+      5,      