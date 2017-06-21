'Software made by Sowdowdow
Imports System.Timers
Imports System.Windows.Threading

Class MainWindow
    Dim active As Boolean = False
    ' Durée au bout de laquelle l'évènement est déclenché
    Dim duree As Int32

    'création du type de la variable
    Private timer As DispatcherTimer
    Public Sub New()
        timer = New DispatcherTimer With {
            .Interval = TimeSpan.FromMilliseconds(1000)
        }
        'évènement déclenché lors d'un tick
        AddHandler timer.Tick, AddressOf Timer_tick
    End Sub

    Private Sub chargement_fenetre_princ(sender As Object, e As RoutedEventArgs) Handles fenetre_principale.Loaded
        combox_choice.Items.Add("Arrêter")
        combox_choice.Items.Add("Veille")
        combox_choice.Items.Add("Déconnexion")
        combox_choice.Items.Add("Redémarrer")
    End Sub

    Private Sub bt_go_Click(sender As Object, e As RoutedEventArgs) Handles bt_go.Click

        'avoid activation when everything = 0
        If active Like False And (tb_h.Text * 60 * 60 + tb_m.Text * 60 + tb_s.Text) > 0 Then

            'la durée prend la valeur des txt_box
            duree = (tb_h.Text * 60 * 60 + tb_m.Text * 60 + tb_s.Text)
            'on met le maximum de la progress bar a la durée défini
            progress_bar.Maximum = duree
            timer.Start()

            bt_go.Content = "Annuler"
            tb_h.IsEnabled = False
            tb_m.IsEnabled = False
            tb_s.IsEnabled = False
            'on met la valeur "activé" a vrai
            active = True
        Else
            timer.Stop()
            bt_go.Content = "Go !"
            tb_h.IsEnabled = True
            tb_m.IsEnabled = True
            tb_s.IsEnabled = True
            'on met la valeur "activé" a faux
            active = False
        End If
    End Sub
    Private Sub Timer_tick()
        'On met à jour la progress barre
        progress_bar.Value = (tb_h.Text * 60 * 60 + tb_m.Text * 60 + tb_s.Text) - 1

        'Si s > 0
        If tb_s.Text > 0 Then
            tb_s.Text -= 1
            'Sinon
        Else
            'Si m > 0
            If tb_m.Text > 0 Then
                tb_m.Text -= 1
                tb_s.Text = 59
                'Sinon
            Else
                'Si h > 0
                If tb_h.Text > 0 Then
                    tb_h.Text -= 1
                    tb_m.Text = 59
                    tb_s.Text = 59
                End If
            End If
        End If
        'Si tout est à 0, on enclenche l'action
        If tb_s.Text = 0 And tb_m.Text = 0 And tb_h.Text = 0 Then
            progress_bar.Value = progress_bar.Minimum
            Select Case combox_choice.SelectedItem
                Case "Arrêter"
                    bt_go.Content = "arret"
                    Process.Start("C:\Windows\System32\shutdown.exe", "-s")
                Case "Veille"
                    bt_go.Content = "sleep"
                    'SetSuspendState("Suspend", True, False) --------------------------------------------------------
                Case "Redémarrer"
                    bt_go.Content = "restart"
                    Process.Start("C:\Windows\System32\shutdown.exe", "-r")
                Case "Déconnexion"
                    bt_go.Content = "log off"
                    Process.Start("C:\Windows\System32\shutdown.exe", "-l")
                Case Else
                    bt_go.Content = "Echec"
            End Select
            'Process.Start("C:\Windows\System32\shutdown.exe", "-r -t 10")
            'R pour redémarrer.
            'T pour insérer un délais
            'S pour éteindre. 
            'https://technet.microsoft.com/en-us/library/bb491003.aspx
        End If
    End Sub

    Private Sub tb_m_TextChanged(sender As Object, e As TextChangedEventArgs) Handles tb_m.TextChanged, tb_h.TextChanged, tb_s.TextChanged
        'variable de vidage
        Dim Void As Short

        If Not Int16.TryParse(sender.text, Void) Then
            sender.Background = New SolidColorBrush(Color.FromRgb(255, 0, 0))
            sender.text = ""
        Else
            sender.Background = New SolidColorBrush(Color.FromRgb(255, 255, 255))
        End If
    End Sub

End Class
