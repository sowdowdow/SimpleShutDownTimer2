   M S B A M L   `   `   `  ����R  NSimple Shutdown Timer 2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:Simple_Shutdown_Timer_2Simple_Shutdown_Timer_2  5   	   (    "Simple_Shutdown_Timer_2.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:Simple_Shutdown_Timer_2     5   	   -   5          �Name$  fenetre_principale��5   	    � Title$ Simple Shutdown Timer 2��5   	   $��98.369��6)   $��367.213��69    � WindowStartupLocation$ CenterScreen=�6I    � 
ResizeMode$ CanMinimize=�6n    � Icon$  iconmonstr-time-19-240.png��6�    � WindowStyle$ 
ToolWindow=�6�   
�������
���   �.��5	      � 
������� � ColumnDefinitions 5
   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��2* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ lbl_h��5      $��Heure(s)��6   $��Center=�62   $��Center=�6O   $��11(�6j   $��1��6x   $
��Bold"�6�   �� 5   
   -   5        	 ��Name$
	 tb_h��5      $��Center=�6    $��20��6=   $��0��6I   $��Center=�6R   $��30��6m   �� 5   
   -   5        $ lbl_m��5      $��	Minute(s)��6   $��1��63   $��Center=�6C   $��Center=�6`   $��11(�6{   $��1��6�   $
��Bold"�6�   �� 5   
   -   5        $
	 tb_m��5      $��1��6    $��Center=�60   $��20��6M   $��0��6Y   $��Center=�6b   $��30��6}   �� 5   
   -   5        $ lbl_s��5      $��
Seconde(s)��6   $��2��64   $��Center=�6D   $��Center=�6a   $��11(�6|   $��1��6�   $
��Bold"�6�   �� 5   
   -   5        $
	 tb_s��5      $��2��6    $��Center=�60   $��20��6M   $��0��6Y   $��Center=�6b   $��30��6}   �� 5   
   -   5        
 ��Name$
 bt_go��5      $
��Go !��6    $��4��6/   $��Center=�6?   $��Center=�6\   $	��120��6w   $��2q�6�    � Cursor$
 Hand��6�   �� 5   
   -	   5         ��Name$ combox_choice��5      $��3��6*   $��Center=�6:   $��1��6W   $��Center=�6d   $	��120��6   $��3��6�    �� SelectedIndex$ 0��6�   $��14(�6�   ��5      �� 5       �� EndPoint$	 0,1&�6&    �� 
StartPoint$	 0,0&�65   .��5      �  � Color$ 	#FFF0F0F0��6#    � Offset$ 0Q�65   � 5      $ 	#7FD6D6D6��6#   $ 1Q�65   5       5"      � 5#   
   -
   5         �Name$ progress_bar��5#      $
��Left=�6,   $��70��6G   $	��Top=�6S   $	��361��6k   $��4��6w    � LargeChange$ 0Q�6�    � Value$	 100Q�6�   ���	#FFE6E6E6$��2��6�    K� ZIndex$ -1��6�   ��5$      �� 5%      $	 1,1&�6&   $	 0,0&�65   .��5&      � $ 	#FF15E015��6#   $ 1Q�65   � 5'      $ 	#FF06B025��6#   5(      5*      5+      5,      