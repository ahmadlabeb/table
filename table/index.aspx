<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="table.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <script src="public/js/jquery-3.2.1.slim.min.js" ></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="public/js/popper.min.js" ></script>
<script src="public/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="public/css/bootstrap.min.css" >
    <script>
        function radioCheck(index) {
            var getClint = document.getElementById("<%=GridView1.ClientID%>");
            var rbs = getClint.getElementsByTagName("input");

            var row = index.parentNode.parentNode;
            for (var i = 0; i < rbs.length; i++) {
                if (rbs[i].type == "radio") {
                    if (rbs[i].checked && rbs[i] != index) {
                        rbs[i].checked = false;
                        break;
                    }
                }
            }
        }    
    </script>

</head>
<body class="bg-info">
    <script>
        
        $(document).ready(function () {
            //$('.table').sortable();
            //$('.table').disableSelection();
           // var selected = $('input[type=radio]:checked').val();
            //var id = $('#<%=GridView1.ClientID %> > tbody > tr > td >input[type=radio]').is(':checked');
            if ($('#<%=GridView1.ClientID %> > tbody > tr > td >input[type=radio]').is(':checked')) {
                $('.table').sortable({
                    items: 'tr:not(tr-first-child)',
                    cursor: 'crosshair',
                    connectwith: '.table',
                    axis: 'y',
                    droponempty: true,
                    receive: function (e, ui) {
                        $(this).find("tbody").append(ui, item);
                    }
                });
                $("[id*=GridView1 tr:not(tr-first-child").remove();
            });
            }
            $('.table').sortable({
                items: 'tr:not(tr-first-child)',
                cursor: 'crosshair',
                connectwith: '.table',
                axis: 'y',
                droponempty: true,
                receive: function (e, ui) {
                    $(this).find("tbody").append(ui, item);
                }
            });
            $("[id*=GridView1 tr:not(tr-first-child").remove();      
        });
    </script>
    <form runat="server">
       <div class="container">
           <asp:GridView CssClass="table table-success table-hover" ID="GridView1" runat="server" AutoGenerateColumns="false">
               <Columns>
                    <asp:TemplateField >
                       <ItemTemplate>
                           <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/public/image/addIcon.png" />
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="id" HeaderText="id" />
                   <asp:BoundField DataField="name_effect" HeaderText="name_effect" />
                   <asp:TemplateField  HeaderText="Groups">
                       <ItemTemplate>
                           <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="time" HeaderText="time" />
                   <asp:TemplateField  HeaderText="form" >
                       <ItemTemplate>
                           <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="decision">
                       <ItemTemplate>
                           <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="update" HeaderText="update" />
                   <asp:BoundField DataField="delete" HeaderText="delete" />
                   <asp:TemplateField HeaderText="srot">
                       <ItemTemplate>
                           <asp:RadioButton ID="RadioButton1" runat="server" onclick="radioCheck(this);"/>
                       </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
           </asp:GridView>
       </div>
       
    </form>
    
</body>
</html>
