package Project.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;

/**
 * Created by aliabbasjaffri on 25/11/2015.
 */
public class AddCourseAction extends ActionSupport
{
    @Action("courses-add")
    public String addcourses() throws Exception
    {
        return "AddCourses";
    }
}
