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


		//依次判断所有的项
		if((sin3.Items[0].Selected==false)&&(sin3.Items[1].Selected==true)&&(sin3.Items[2].Selected==true)&&(sin3.Items[3].Selected==false))
			sum +=30;

		if((sin4.Items[0].Selected==true)&&(sin4.Items[1].Selected==false)&&(sin4.Items[2].Selected==true)&&(sin4.Items[3].Selected==true))
			sum +=30;	
	

		Message.Text = "您的分数为:"+sum.ToString();
	}

	void Enter_Click2(Object Sender, EventArgs E)
	{
		if(sin1.SelectedItem !=null)
		sin1.SelectedItem.Selected=false;
		
		if(sin2.SelectedItem !=null)
		sin2.SelectedItem.Selected=false;

		//依次清空所有的项
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
	<title>在线考试系统</title>
</head>
<body>
	<h2 align=center>在线考试系统</h2>
	<center>
	<table background=1.jpg border=1 width=56% height=60%>
	<tr><td align=center>

	<form runat=server>
		<h4>一、单选题（每题20分）</h4>
		1、下列哪一年是闰年？
		<asp:RadioButtonList
     			ID="sin1"
     			runat="server"
     			RepeatDirection="Horizontal">
         	<asp:ListItem value="1">2019年</asp:ListItem>
         	<asp:ListItem value="2">2017年</asp:ListItem>
		<asp:ListItem value="3">2015年</asp:ListItem>
		<asp:ListItem value="4">2018年</asp:ListItem>
		</asp:RadioButtonList> <br>
 
		2、2019年2月有多少天？
		<asp:RadioButtonList
     			ID="sin2"
     			runat="server"
     			RepeatDirection="Horizontal">
         	<asp:ListItem value="1">28天</asp:ListItem>
         	<asp:ListItem value="2">29天</asp:ListItem>
		<asp:ListItem value="3">30天</asp:ListItem>
		<asp:ListItem value="4">31天</asp:ListItem>
		</asp:RadioButtonList> <br>

		<h4>二、多选题（每题30分）</h4>
		3、下列有哪些地方属于四川？
		<asp:CheckBoxList
    			ID="sin3"
    			runat="server"
    			RepeatDirection="Horizontal">
        	<asp:ListItem value="1">万州</asp:ListItem>
        	<asp:ListItem value="2">成都</asp:ListItem>
        	<asp:ListItem value="3">攀枝花</asp:ListItem>
        	<asp:ListItem value="4">涪陵</asp:ListItem>
		</asp:CheckBoxList> <br>

		4、下列哪些是互联网岗位？
		<asp:CheckBoxList
    			ID="sin4"
    			runat="server"
    			RepeatDirection="Horizontal">
        	<asp:ListItem value="1">前端工程师</asp:ListItem>
        	<asp:ListItem value="2">中学教师</asp:ListItem>
        	<asp:ListItem value="3">软件测试工程师</asp:ListItem>
        	<asp:ListItem value="4">数据分析师</asp:ListItem>
		</asp:CheckBoxList> <br>

		<asp:button id="enter1" text="提交" Onclick="Enter_Click1" runat="server" />
		<asp:button id="enter2" text="清空" Onclick="Enter_Click2" runat="server" />
		<p>
		<asp:label id="Message"  runat=server/>
	</form>
</td></tr>
</table>
</body>
</html>

