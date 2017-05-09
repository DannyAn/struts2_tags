package bean;
import org.apache.struts2.util.SubsetIteratorFilter.Decider;
public class MyDecider implements Decider{
	@Override
	public boolean decide(Object element) throws Exception {
		String s = (String)element;
		//如果集合元素中包含"应用教程"字串，即可入选子集
		return s.contains("应用教程");
	}
}
