   M S B A M L   `   `   `  ����C  ?Workload, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:WorkloadWorkload  5          Workload.TablePage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:Workload     5        N� Title$  	TablePage��5	      .��5      � -   5         �Name$ MainGrid��5      
������� � RowDefinitions 5   
   �� 5      $��35 �6   �� 5      �� 5      $��35 �6    � ColumnDefinitions 5   
   �� 5      �� 5      -   5         ��Name$ CreateEditColumn��5      $	��300 �69   .+�5   
   ]� -   5         ]�Name$ ButtonsDock��5      $��0��6   $��0��6$   $��2��61   $��Stretch=�6E   $��Stretch=�6a   
������ .+�5      �� -   5         ��Name$ 	ImportBut��5      $��Імпортувати��6(   $
��Left=�6>   $��Center=�6Y   $��10,0,0,0q�6t   $	��100��6�   �� 5      -   5        $ 	ExportBut��5      $��Експортувати��6(   $
��Left=�6?   $��Center=�6Z   $��10,0,0,0q�6u   $	��100��6�   $y�	Collapsed=�6�   �� 5      -   5        $ PrintBut��5   ,   $y�	Collapsed=�6   $��Роздрукувати��6>   $
��Left=�6U   $��Center=�6p   $��10,0,0,0q�6�   $	��100��6�   �� 5      -   5        $ DelBut��5      $��Видалити��6%   $
��Left=�68   $��Center=�6S   $��10,0,0,0q�6n   $��75��6�   �� 5      -   5        $ AddBut��5      $��Додати��6%   $
��Left=�66   $��Center=�6Q   $��10,0,0,0q�6l   $��75��6~   5      &   System.Windows.Controls.DataGrid  5    
   -	   5          Name$ 	tableGrid��5       $��Stretch=�6&   $��1��6D   $��0��6Q   $��2��6a   $��Stretch=�6r      SelectionMode$ Single=�6�   	   
IsReadOnly	 . 
   CanUserDeleteRows
 .    AutoGenerateColumns .  
�������6�    � 5"   
   -
   5          �Name$ CreateEditPanel��5"      $��1��6)   $��1��69   $��Stretch=�6F   $��Stretch=�6b   $
��5, 5q�6�   ]� 5$   
   -   5        $ OkCreateDock��5$   k   $��1��6   $��2��6$   $��Stretch=�61   $��Stretch=�6M   .+�5%      �� -   5        $ OkBut��5%      $'��!Застосувати зміни��6$   $
��Left=�6@   $��Center=�6[   $��10,0,0,0q�6v   $	��125��6�   {�.  $��0��6�   $��0��6�   �� 5&      -   5        $ CompleteCreateBut��5&      $��Створити��60   $��Right=�6C   $��Center=�6_   $��0,0,10,0q�6z   $��75��6�   $��1��6�   $��0��6�   {�.  6�   5'      5(      5)      