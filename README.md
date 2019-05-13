# online_test_system
简易在线考试系统

1、开发在线考试系统，包含若干道单选题、多选题，单击交卷按钮后就可以根据标准答案在线评分，给出总分。
2、设计测试用例，进行黑盒测试和白盒测试。
3、不断修改代码直至测试通过。

白盒测试：查看代码，从逻辑覆盖来设计测试用例
代码：（第三题使用判定/条件覆盖设计测试用例）
if((sin3.Items[0].Selected==false)
&&(sin3.Items[1].Selected==true)
&&(sin3.Items[2].Selected==true)
&&(sin3.Items[3].Selected==fase))
			sum +=30;

设条件选中为T，没选中为F，则有如下表示：
A：T  F
B：T  F
C：T  F
D：T  F

(1) T: FTTF
(2) F:TFFT
