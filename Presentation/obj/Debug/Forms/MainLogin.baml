   M S B A M L   `   `   `  ����G  CPresentation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Presentation.FormsPresentation.Forms  5   	   "    Presentation.Forms.MainLogin   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:Presentation.Forms     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  	MainLogin��5	   	   $	��500��6   $	��350��6(    � WindowStartupLocation$ CenterScreen=�5
   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	   $��Century Gothic)�5   	   .��5      � -   5         �Name$ pnlogin��5      .+�5   
   �� $	��280��5      $	��Top=�5      ��5      �� 5       �� EndPoint$ 0.5,1&�5       �� 
StartPoint$ 0.5,0&�5      .��5      �  � Color$ 	#FF2281D1��5      � 5      $ 	#FF34268A��5       � Offset$ 1Q�5      � 5      $ 	#FF33288B��5      $ 0.546Q�5      5      5!      �� 5#   
   $	��280��5$      $	��240��5%      $��Bottom=�5&      $
��0,80q�5'      	 �� RadiusX$	 10��5(      
 �� RadiusY$
 10��5)      
������� J� Effect 5+      3  -System.Windows.Media.Effects.DropShadowEffect  5,         
BlurRadius$ 15Q�5-         	Direction$ 0Q�5.         RenderingBias$ Quality=�5/         ShadowDepth$ 1Q�50         Color$ 	#FFBBBBBB��51      53      �� 55   
    �� Orientation$ 
Horizontal=�56      $	��Top=�57      $��Right=�58      .+�59      �� $��30��5:      $��30��5;      $��0q�5>      
������� � ToolTip$ Salir��5@      ��5<      Z� ��5=      Z� .��5A      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�5B      $��25��5C      $��25��5D      5E      5F      � 5H   
   $��Bottom=�5I      $��35,80q�5J      $	��240��5K      .+�5L      �� $��Iniciar Sesion��5M      $��Center=�5N      $	��Top=�5O      $��5q�5P      
�������$��18(�5R      �� 5T      $��Center=�5U      $��15q�5V      .+�5W      �� $
��0,10q�5X      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Usuario��5Y       %  !MaterialDesignFloatingHintTextBox#��[  5Z      $��18(�5[      G� 5\      $
��0,10q�5]      $ Contraseña��5^       ) %MaterialDesignFloatingHintPasswordBox#��[ 5_      $��18(�5`      5b      �� 5c      $��Error��5d      $��Center=�5e      $��Bottom=�5f      $
��0,30q�5g      
���  ��$y�	Collapsed=�5i      5j      �� 5k   
   $	��150��5l      $��Center=�5m      $��Bottom=�5n      $
��0,65q�5o      $��Entrar��5p      �� 5q   
   $��¿Olvido la Contraseña?��5r      $��Center=�5s      $��Bottom=�5t      $��30q�5u      
������� � Cursor$
 Hand��5w      �� 5x   
   $��/Assets/logo.png��5y      $	��150��5z      $	��150��5{      $	��Top=�5|      $��20q�5}      5      5�      