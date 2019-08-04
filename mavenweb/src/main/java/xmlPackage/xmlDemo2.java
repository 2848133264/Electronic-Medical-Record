package xmlPackage;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import EntityP.Student;

public class xmlDemo2 {
	public static void main(String[] args) throws Exception {
		
		//使用建造者的工厂模式
		DocumentBuilderFactory factory =DocumentBuilderFactory.newInstance();
		
		//使用建造者模式
		DocumentBuilder builder = factory.newDocumentBuilder();
		//获得核心对象 document  解析xml文件
		Document document =builder.parse("src/main/resources/stus.xml");
		
		//test(document);
		//test2(document);
		test3(document);
	}

	private static void test3(Document document) {
		// TODO Auto-generated method stub
		//获得id的值
		NodeList nodelist = document.getElementsByTagName("stu");
		//获得第一个stu对象
		Node node =nodelist.item(0);
		//获得所有的属性
		NamedNodeMap nodemap = node.getAttributes();
		Node idNode =nodemap.getNamedItem("id");
		Node nameNode =nodemap.getNamedItem("name");
		Node ageNode =nodemap.getNamedItem("age");
		Node sexNode =nodemap.getNamedItem("sex");
		// 获得 这些属性值之后，封装在一个实体类中,获得 的值文本内容，所以还是要转成相应的类型数据 。
		//Student student =new Student(idNode.getTextContent(), nameNode.getTextContent(), ageNode.getTextContent(), sexNode.getTextContent())
		//之后就是存在数据库中。
		System.out.println(idNode.getNodeValue());
		
	}

	private static void test2(Node node) {
		// TODO Auto-generated method stub
		//还可以获得文本类型： 1 标签  2 属性 3 文本
		if (node.getNodeType() ==Node.ELEMENT_NODE) {
			System.out.println(node.getNodeName());
			//获取的是标签中的类型
		}else if(node.getNodeType() == 3){
			//空文本的内容也是会输出的
			System.out.println(node.getNodeValue());
		}
		
		NodeList nodelist = node.getChildNodes();
		for (int i = 0; i < nodelist.getLength(); i++) {
			node =nodelist.item(i);
			test2(node);
		}
	
	}

	private static void test(Document document) {
		// TODO Auto-generated method stub
		//通过标签名去获得指定的内容 ：李四
		NodeList list = document.getElementsByTagName("name");
		//获得指定的name，这个要看你xml文件中的它的值在第几个位置
		Node node =list.item(1);//这个获得的值 ：李四
		String namevalue = node.getTextContent();
		System.out.println("name = "+namevalue);
	}
	

}
