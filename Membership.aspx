<%@ Page Title="" Language="VB" MasterPageFile="~/searchMasterPage.master" AutoEventWireup="false" CodeFile="Membership.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>وحدة البحث والابتكار</title>
     
    <link href="Content/css/Styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #form1
        {
            margin-top: 80px;
            margin-bottom:180px;
           
        }
        
        #space
        {
            margin-bottom:50px;
           
        }
    </style>
</asp:Content>


       

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

 <h4 align="right" id="space">نشكر اهتمامك بالانضمام لوحدة البحث والابتكار الطلابي ،لاكمال الطلب يُرجى تعبئة النموذج أدناه
<form id="form1" runat="server" dir="rtl" align="right">
 
 <table >
     
      <tr>
      <td><asp:Label ID="Label2" runat="server" Text="الاسم ثلاثي" ></asp:Label></td>
      <td><asp:TextBox ID="Name" runat="server" TextMode="SingleLine" Height="22px" Width="300px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBox1" runat="server" ControlToValidate="Name"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
      </td>  
      </tr>

       <tr>
       <td><asp:Label ID="Label3" runat="server" Text="الرقم الجامعي"></asp:Label></td>
       <td><asp:TextBox ID="St_ID" runat="server" Height="22px" Width="300px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="St_ID"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
       </td>
       </tr>

         <tr>
         <td><asp:Label ID="Label4" runat="server" Text="الكلية"></asp:Label></td>
         <td>
             <asp:DropDownList ID="Collage_List" runat="server" Height="22px" Width="300px" >
                 <asp:ListItem Value="1">كلية الإدارة والأعمال </asp:ListItem>
                 <asp:ListItem Value="2">كلية العلوم</asp:ListItem>
                 <asp:ListItem Value="3">كلية علوم الحاسب والمعلومات</asp:ListItem>
                 <asp:ListItem Value="4">كلية الآداب</asp:ListItem>
                 <asp:ListItem Value="5">كلية اللغات والترجمة</asp:ListItem>
                 <asp:ListItem Value="6">كلية الاقتصاد المنزلي</asp:ListItem>
                 <asp:ListItem Value="7 ">كلية التصاميم والفنون </asp:ListItem>
                 <asp:ListItem Value="8">كلية التربية </asp:ListItem>
                 <asp:ListItem Value="9 ">كلية الخدمة الاجتماعية </asp:ListItem>
                 <asp:ListItem Value="10">كلية التمريض </asp:ListItem>
                 <asp:ListItem Value="11">كلية الصيدلة </asp:ListItem>
                 <asp:ListItem Value="12">كلية طب الأسنان</asp:ListItem>
                 <asp:ListItem Value="13">كلية الطب البشري</asp:ListItem>
                 <asp:ListItem Value="14">كلية الصحة وعلوم التأهيل</asp:ListItem>
                 <asp:ListItem Value="15">عمادة خدمة المجتمع والتعليم المستمر</asp:ListItem>
                 <asp:ListItem Value="16">عمادة السنة التحضيرية</asp:ListItem>
                 <asp:ListItem Value="17">كلية المجتمع</asp:ListItem>
                 <asp:ListItem Value="18">معهد تعليم اللغة العربية للناطقات بغيرها</asp:ListItem>
                 <asp:ListItem Value="19">السنة التأسيسية</asp:ListItem>
                 <asp:ListItem Value="20">أخرى</asp:ListItem>
             </asp:DropDownList>
            
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Collage_List"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
         </td>
        </tr>

        <tr>
         <td><asp:Label ID="Label5" runat="server" Text="القسم"></asp:Label></td>
         <td><asp:TextBox ID="Dept" runat="server"  Height="22px" Width="300px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Dept"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator> </td>
       </tr>

        <tr>
        <td><asp:Label ID="Label6" runat="server" Text="المستوى الدراسي"></asp:Label></td>
        <td><asp:TextBox ID="St_level" runat="server"  Height="22px" Width="300px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="St_level"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
        </td>
        </tr>

         <tr> 
         <td><asp:Label ID="Label7" runat="server" Text="البريد الالكتروني"></asp:Label></td>
         <td><asp:TextBox ID="Email" runat="server"  Height="22px" Width="300px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Email"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
         </td>
        </tr>

        <tr>
        <td><asp:Label ID="Label8" runat="server" Text="رقم الجوال"></asp:Label></td>
        <td><asp:TextBox ID="PhoneNum" runat="server"  Height="22px" Width="300px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="PhoneNum"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
        </td>
        </tr>

    <tr>
        <td><asp:Label ID="Label9" runat="server" Text="في أي مجال ترغبين المشاركة "></asp:Label></td>
        <td><asp:DropDownList ID="ScopeList" runat="server" Width="300px">
            <asp:ListItem>البحث</asp:ListItem>
            <asp:ListItem>الابتكار</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ScopeList"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
       <td><asp:Label ID="Label10" runat="server" Text="عنوان فكرتك (يمكنك تعديلها لاحقاً)"></asp:Label></td>
       <td><asp:TextBox ID="tittle" runat="server"  Height="22px" Width="300px"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tittle"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
       </td>
    </tr>

    <tr>
       <td><asp:Label ID="Label11" runat="server" Text="اشرحي فكرة بحثك /ابتكارك"></asp:Label></td>
        <td><asp:TextBox ID="Exp_Idea" runat="server" TextMode="MultiLine" Height="200px" Width="300px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Exp_Idea"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr>
       <td><asp:Label ID="Label12" runat="server" Text="هل قمت بإجراء بحث عن وجود </br>أفكار مشابهة لفكرتك"></asp:Label></td>
       <td><asp:DropDownList ID="Pre_List" runat="server" Width="300px" >
            <asp:ListItem>لا</asp:ListItem>
            <asp:ListItem>نعم</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Pre_List"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
        </td>
        
    </tr>

   
    <tr>
        <td><asp:Label ID="Label13" runat="server" Text="هل توجد أفكار مشابهة لفكرتك "></asp:Label></td>
       <td><asp:DropDownList ID="Same_List" runat="server" Width="300px">
            <asp:ListItem>لا</asp:ListItem>
            <asp:ListItem>نعم</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Same_List"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
        
        </td>
    </tr>
    
<tr>
     <td><asp:Label ID="Label14" runat="server" Text="في حال وجدت أفكار مشابهه لفكرتك،</br> هل تسعين لإضافة عدد من الخصائص </br>التي تميز مشروعك"></asp:Label></td>
     <td><asp:DropDownList ID="Add_List" runat="server" Width="300px">
        <asp:ListItem>لا</asp:ListItem>
        <asp:ListItem>نعم</asp:ListItem>
         <asp:ListItem></asp:ListItem>
    </asp:DropDownList> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Add_List"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
   
    </td>
</tr>

<tr>
     <td><asp:Label ID="Label15" runat="server" Text="هل قمت بحفظ فكرتك في مكتب براءات الاختراع"></asp:Label></td>
     <td><asp:DropDownList ID="Save_List" runat="server" Width="300px">
        <asp:ListItem>لا</asp:ListItem>
        <asp:ListItem>نعم</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="Save_List"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
   
    </td>
</tr>

<tr>
  <td><asp:Label ID="Label16" runat="server" Text="اشرحي الأسباب التي تساهم في </br>اختيارك لعضوية الوحدة"></asp:Label></td>
  <td><asp:TextBox ID="Reasons" runat="server" TextMode="MultiLine" Height="200px" Width="300px"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Reasons"
         Display="Dynamic" ForeColor="Red" CssClass="dropdown" ErrorMessage="This field is required*"></asp:RequiredFieldValidator>
   
  </td>
</tr>

  <tr>
  <td><asp:Label ID="Label1" runat="server" Text="يرجى ارفاق نموذج تسجيل بحث /ابتكار بعد تعبئته"></asp:Label></td>
  <td>
   
   
        <asp:FileUpload  Visible="True" ID="FileUpload_Form" Width="220px" 
            runat="server" style="font-size: medium" Height="24px"  /> 

       <asp:Button ID="delForm" runat="server" Text="حذف" Visible="False"  Width="50px" 
            style="font-size: medium" Height="24px" />

       <asp:Button ID="upForm" runat="server" Text="رفع"  Visible="True"  Width="50px" 
            ValidationGroup="p1" style="font-size: medium" Height="24px"   />

             <asp:HyperLink  Visible="False" ID="HyperLink2" runat="server" 
             ForeColor="Blue" Font-Underline="True" Target="_blank" Width="76px" 
            style="font-size: small; text-align: center;" Height="16px">صورة المرفق</asp:HyperLink>

            </td>
            <asp:Label ID="lblErrFileForm" visible ="false" runat="server" Text="  "></asp:Label>
  </tr>
  
<tr>
  <td><asp:Label ID="Label17" runat="server" Text=" يرجى ارفاق السيرة الذاتية "></asp:Label></td>

  <td>
   
   
        <asp:FileUpload  Visible="True" ID="FileUploadID_CV" Width="220px" 
            runat="server" style="font-size: medium" Height="24px"  /> 

       <asp:Button ID="delCv" runat="server" Text="حذف" Visible="False"  Width="50px" 
            style="font-size: medium" Height="24px" />

       <asp:Button ID="upCv" runat="server" Text="رفع"  Visible="True"  Width="50px" 
            ValidationGroup="p1" style="font-size: medium" Height="24px"   />

             <asp:HyperLink  Visible="False" ID="HyperLink1" runat="server" 
             ForeColor="Blue" Font-Underline="True" Target="_blank" Width="76px" 
            style="font-size: small; text-align: center;" Height="16px">صورة المرفق</asp:HyperLink>

            </td>
        <asp:Label ID="lblErrFileCV" visible ="false" runat="server" Text="  "></asp:Label>    
</tr>
  <tr>
  <td><asp:Button ID="Button3" runat="server" Text="ارسال" align="center" Font-Bold="True"  Height="50px" Width="100px" /></td>
  </tr>
       </table>
      </form>
</asp:Content>

