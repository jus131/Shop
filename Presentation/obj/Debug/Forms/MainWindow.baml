   M S B A M L   `   `   `  ����G  CPresentation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:PresentationPresentation  5   	       Presentation.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Presentation     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  
MainWindow��5	   	   $	��700��6   $
��1224��6)    � WindowStartupLocation$ CenterScreen=�66    � 
ResizeMode$ NoResize=�6[    � WindowStyle$
 None=�6q   .��5
      � -   5        ���	#FFEEEEEE.+�5   
   �� $	��Top=�6   .+�5      � ���	#FF0069C0$��10��6*   � 5      $��5q�6   .+�5      �� $��Center=�6    �� Orientation$ 
Horizontal=�6:   .+�5      �� $��Sales System��6    $��Center=�64   $��20(�6O   $��Champagne & Limousines)�6]   $��	100 0 0 0q�6�   5      �� 5      $ 
Horizontal=�6   $��Right=�66   $
��10 0q�6R   .+�5       �� $��30��6   $��30��6(   $��0q�6a   
���������64   Z� ��6J   Z� .��5!      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ BellAddOutline=�62   5"      �� 5#      $��30��6   $��30��6(   $��0q�6a   
�������$��0 0 10 0q�6   ��64   Z� ��6J   Z� .��5$        $ Settings=�62   5%      �� 5&      $��30��6   $��30��6(   $��0q�6a   
���������64   Z� ��6J   Z� .��5'        $ Power=�62   5(      5)      5*      5+      � 5-   
   $��
250 55 0 0q�6   .+�5.      � -   5         �Name$ GridPricipal��5.      5/      � 50   
   $	��250��6   $
��Left=�6   ���	#FF222222.+�52      ?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  -   5          Name$ TrainsitionigContentSlide��52   2   C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase   OpeningEffect 6U   D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  *SlideInFromLeft+	   Duration$	 0:0:0.2X�.��53      � -   5        $ 
GridCursor��53      $��	0 100 0 0q�6+   ���	#FF0069C0$��10��6U   $
��Left=�6`   $��60��6{   $	��Top=�6�   54      �� 57      -   5        
 ��Name$
 ListViewMenu��57      $��0 100q�6-   
�������$��Champagne & Limousines)�6S   $��18(�6{    �� SelectedIndex$ 0��6�   .@�58      �� $��60��6   .��59      �� $ 
Horizontal=�6!   .+�5:        $
 Cart=�62   $��30��6>   $��30��6I   $��Center=�6U   $��5q�6p   �� 5;      $��Ventas��6$   $��17(�62   $��Center=�6@   $
��20 0q�6[   5<      5=      �� 5>      $��60��6   .��5?      �� $ 
Horizontal=�6!   .+�5@        $ Package=�62   $��30��6A   $��30��6L   $��Center=�6X   $��5q�6s   �� 5A      $��	Productos��6$   $��17(�65   $��Center=�6C   $
��20 0q�6^   5B      5C      �� 5D      $��60��6   .��5E      �� $ 
Horizontal=�6!   .+�5F        $ 
AccountBox=�62   $��30��6D   $��30��6O   $��Center=�6[   $��5q�6v   �� 5G      $��Clientes��6$   $��17(�64   $��Center=�6B   $
��20 0q�6]   5H      5I      �� 5J      $��60��6   .��5K      �� $ 
Horizontal=�6!   .+�5L        $ BusinessCard=�62   $��30��6F   $��30��6Q   $��Center=�6]   $��5q�6x   �� 5M      $��	Empleados��6$   $��17(�65   $��Center=�6C   $
��20 0q�6^   5N      5O      �� 5P      $��60��6   .��5Q      �� $ 
Horizontal=�6!   .+�5R        $ CartVariant=�62   $��30��6E   $��30��6P   $��Center=�6\   $��5q�6w   �� 5S      $��Compras��6$   $��17(�63   $��Center=�6A   $
��20 0q�6\   5T      5U      �� 5V      $��60��6   .��5W      �� $ 
Horizontal=�6!   .+�5X        $ ChartBox=�62   $��30��6B   $��30��6M   $��Center=�6Y   $��5q�6t   �� 5Y      $��Reportes��6$   $��17(�64   $��Center=�6B   $
��20 0q�6]   5Z      5[      5\      �� 5^      $ 
Horizontal=�6   $��Center=�62   $��Bottom=�6O   .+�5_      �� $��30��6   $��30��6$   $��0q�6]   
���������60   Z� ��6F   Z� .��5`        $ Facebook=�6.   5a      �� 5b      $��30��6   $��30��6$   $��0q�6]   
���������60   Z� ��6F   Z� .��5c        $ Github=�6.   5d      �� 5e      $��30��6   $��30��6$   $��0q�6]   
���������60   Z� ��6F   Z� .��5f        $ Discord=�6.   5g      5h      5i      5j      5k      