   M S B A M L   `   `   `  ����C  ?Workload, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:WorkloadWorkload  5      9!clr-namespace:Workload.PropertiesWorkload.Properties  5          Workload.App   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      (localclr-namespace:Workload     5      8
properties!clr-namespace:Workload.Properties     5        �� 	Resources  5         Workload.ColorToBrush   ColorToBrush  ValidationTip �� 
TargetType �� Property �� Value �� Orientation �� Triggers P� Property P� Value �� RelativeSource	 �� Path=  7System.Windows.Controls.Primitives.DataGridColumnHeader*  $System.Windows.Controls.DataGridCell"  Workload.Properties.Settings
   Default �� Source �� Mode �� 	Converter ^� 
Conditions �� Binding �� Value �� Mode �� AncestorType&   System.Windows.Controls.DataGrid��%L	  &	        &	      '�� �    '�� t    '  �    '  �    7   'Q� �    '      '� v    7     5   
   6   �� 5	   
   " ��6&   �5
      �� 5       �@=�ErrorTemplate 5      �� 5      .R�5      �� $ 
Horizontal=�6)   .+�5   "   �� 
���  ��$��2q�6;   ._�5   &   �� 5   #   5      5      5      �� 5       � ��$ 5,1.5q�6+   �� 5       � ��$ 20��6+    5      P� 5       �@=�HasError . . �5      ��  �@�ToolTip 5      ��  �� *Self+$)	 #(Validation.Errors)[0].ErrorContent�5      5       �� 5!   
   " ��6   �5"      �� 5#       � ��$ 5,1.5q�6+   �� 5$       � ��$ 20��6+   5&      �� 5'   
   " ��6   .�5(      ��  � ��$ 0q�60   �� 5)       � ��
 �iii�6+   �� 5*       � ��$ Segoe UI Semibold)�6+   �� 5+       � �� �	#FFE7E4E46+   �� 5,       � ��
 ���� 6,   �� 5-       � ��$ 20��6'   �� 5.       � ��$ 5,0,5,0q�6(   5/      �� 50   
   "  6   .�51      ��  � ��$	 0.5q�60   �� 52       � ��
 �iii�6,   �� 53       � ��
 �iii�6+   �� 54       � ��$ Segoe UI Semibold)�6+   �� 55       � �� �	#FFE7E4E46+   �� 56       � ��$ 20��6'   �� 57       � ��$ 5,0,5,0q�6(   58      �� 59   
   "  6   .�5:      ��  � ��
 �iii�6,   �� 5;       � ��$ Segoe UI)�6+   �� 5<       � ��
 �����6+   �� 5=       � ��$ 20��6'   �� 5>       � ��$	 0.1q�60    5?      P� 5@       �@ 
IsSelected . . �5A      ��  � �� 63   �� # Z
 $	 AccentColor�$ OneTime=�8   �� 5B       � ��
 �����63   5C      ^� 5D       5E      �� 5F       6$   ��  �� *Self+$	 
IsSelected� True6n   �� 5G       6$   ��  �� $ FindAncestor=�$ DataGridL�$	 IsKeyboardFocusWithin�	 False6�   0�5I      �� 5J       � ��
 �iii�67   �� 5K       � ��
 �����67   5M      5O      �� 5P   
   " Q�6   .�5Q      ��  � ��$ Segoe UI)�6+   5R      �� 5S   
   "  6   .�5T      ��  �@ HeadersVisibility$ Column=�62   5U      �� 5V   
   " �6   .�5W      ��  � �� 6+   �� # Z
 $	 AccentColor�$ OneTime=�8   5X      5Y      5Z      