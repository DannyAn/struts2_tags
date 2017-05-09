package bean;
import java.util.Comparator;
public class MyComparator implements Comparator<String>{
	//决定排序规则
	@Override
	public int compare(String element1, String element2) {
		//元素按照其长度从小到大进行排序
		return element1.length() - element2.length();
	}
}
