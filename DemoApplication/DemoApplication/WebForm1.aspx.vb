
Imports Telerik.Web.UI
Public Class WebForm1
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Me.IsPostBack Then
            Dim countryList As New List(Of String)()
            countryList.Add("Canada")
            countryList.Add("Mexico")
            countryList.Add("USA")

            'Loop and add items from ArrayList.
            For Each item As Object In countryList
                RadDropDownCountry.Items.Add(item.ToString())
            Next
        End If

    End Sub

    Protected Sub RadDropDownCountry_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs)

        Dim selectedItem As DropDownListItem = RadDropDownCountry.SelectedItem

        RadWindowManager1.RadAlert("selcted country: " + selectedItem.Text, 400, 100, "My Alert", "callBackFn")


    End Sub
End Class