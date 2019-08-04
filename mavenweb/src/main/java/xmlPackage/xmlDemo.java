package xmlPackage;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.junit.Test;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class xmlDemo {

	Document document;
	
	@Test
	public  void test1() throws Exception{
		init();
		 NodeList nodeList = document.getElementsByTagName("stu");
		 int length =nodeList.getLength();
		 for (int i = 0; i < length; i++) {
			Node node =nodeList.item(i);
			NodeList nextnode = node.getChildNodes();
			
			System.out.println(nextnode.item(1).getTextContent());
			String  namevalue = node.getTextContent();
			 System.out.println(namevalue);
		}
		 
		
	}

	private void init() throws Exception {
		// TODO Auto-generated method stub
		DocumentBuilderFactory builderFactory =DocumentBuilderFactory.newInstance();
		DocumentBuilder builder =builderFactory.newDocumentBuilder();
		document =builder.parse("src/main/resources/stus.xml");
		//System.out.println(document.getDocumentURI());
	}
	

}
