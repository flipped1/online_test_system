<%@ Page Language="c#"%>
<script runat="server">
	void Enter_Click1(Object Sender, EventArgs E)
        {	
		int sum = 0;
		if(sin1.SelectedItem !=null){
			if(sin1.SelectedItem.Value=="4")
				sum +=20;
		}else{
			sum +=0;}
	

		if(sin2.SelectedItem !=null){
			if(sin2.SelectedItem.Value=="1")
				sum +=20;
		}else{
			sum +=0;}


		//�����ж����е���
		if((sin3.Items[0].Selected==false)&&(sin3.Items[1].Selected==true)&&(sin3.Items[2].Selected==true)&&(sin3.Items[3].Selected==false))
			sum +=30;

		if((sin4.Items[0].Selected==true)&&(sin4.Items[1].Selected==false)&&(sin4.Items[2].Selected==true)&&(sin4.Items[3].Selected==true))
			sum +=30;	
	

		Message.Text = "���ķ���Ϊ:"+sum.ToString();
	}

	void Enter_Click2(Object Sender, EventArgs E)
	{
		if(sin1.SelectedItem !=null)
		sin1.SelectedItem.Selected=false;
		
		if(sin2.SelectedItem !=null)
		sin2.SelectedItem.Selected=false;

		//����������е���
		sin3.Items[0].Selected=false;
		sin3.Items[1].Selected=false;
		sin3.Items[2].Selected=false;
		sin3.Items[3].Selected=false;

		sin4.Items[0].Selected=false;
		sin4.Items[1].Selected=false;
		sin4.Items[2].Selected=false;
		sin4.Items[3].Selected=false;

		Message.Text ="";
}
</script>

<html>
<head>
	<title>���߿���ϵͳ</title>
</head>
<body>
	<h2 align=center>���߿���ϵͳ</h2>
	<center>
	<table background=1.jpg border=1 width=56% height=60%>
	<tr><td align=center>

	<form runat=server>
		<h4>һ����ѡ�⣨ÿ��20�֣�</h4>
		1��������һ�������ꣿ
		<asp:RadioButtonList
     			ID="sin1"
     			runat="server"
     			RepeatDirection="Horizontal">
         	<asp:ListItem value="1">2019��</asp:ListItem>
         	<asp:ListItem value="2">2017��</asp:ListItem>
		<asp:ListItem value="3">2015��</asp:ListItem>
		<asp:ListItem value="4">2018��</asp:ListItem>
		</asp:RadioButtonList> <br>
 
		2��2019��2���ж����죿
		<asp:RadioButtonList
     			ID="sin2"
     			runat="server"
     			RepeatDirection="Horizontal">
         	<asp:ListItem value="1">28��</asp:ListItem>
         	<asp:ListItem value="2">29��</asp:ListItem>
		<asp:ListItem value="3">30��</asp:ListItem>
		<asp:ListItem value="4">31��</asp:ListItem>
		</asp:RadioButtonList> <br>

		<h4>������ѡ�⣨ÿ��30�֣�</h4>
		3����������Щ�ط������Ĵ���
		<asp:CheckBoxList
    			ID="sin3"
    			runat="server"
    			RepeatDirection="Horizontal">
        	<asp:ListItem value="1">����</asp:ListItem>
        	<asp:ListItem value="2">�ɶ�</asp:ListItem>
        	<asp:ListItem value="3">��֦��</asp:ListItem>
        	<asp:ListItem value="4">����</asp:ListItem>
		</asp:CheckBoxList> <br>

		4��������Щ�ǻ�������λ��
		<asp:CheckBoxList
    			ID="sin4"
    			runat="server"
    			RepeatDirection="Horizontal">
        	<asp:ListItem value="1">ǰ�˹���ʦ</asp:ListItem>
        	<asp:ListItem value="2">��ѧ��ʦ</asp:ListItem>
        	<asp:ListItem value="3">������Թ���ʦ</asp:ListItem>
        	<asp:ListItem value="4">���ݷ���ʦ</asp:ListItem>
		</asp:CheckBoxList> <br>

		<asp:button id="enter1" text="�ύ" Onclick="Enter_Click1" runat="server" />
		<asp:button id="enter2" text="���" Onclick="Enter_Click2" runat="server" />
		<p>
		<asp:label id="Message"  runat=server/>
	</form>
</td></tr>
</table>
</body>
</html>

