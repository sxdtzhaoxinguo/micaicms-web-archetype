/**
 * <p>Copyright ® 迷彩CMS平台版权所有。</p>
 * 类名: ProjectServiceImp
 * 创建人: zhaoxg    创建时间: 2015年3月16日
 */

package ${package}.service.imp;

import java.util.List;
import java.util.Map;

import ${package}.domain.po.ProjectPO;
import ${package}.infrastructure.dao.ProjectDao;
import ${package}.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.apache.ibatis.session.RowBounds;

import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;

/**
 * TODO <功能简述> <br/>
 * TODO <功能详细描述>
 * @author zhaoxg
 */
@Service
public class ProjectServiceImp implements ProjectService {

	@Autowired(required=false)
	private ProjectDao projectDao;

	public int insertProject(ProjectPO po) throws Exception {
		int rtn = 0;
		rtn = projectDao.insertProject(po);
		return rtn;
	}

	public int updateProjectById(ProjectPO po) throws Exception {
		int rtn = 0;
		rtn = projectDao.updateProjectById(po);
		return rtn;
	}

	public List<ProjectPO> getProjectList(Map map,int pageNo,int pageSize) throws Exception {
		String orderStr = "prjid.desc,prjname asc";
		PageBounds pageBounds = new PageBounds(pageNo,pageSize);
//		PageBounds pageBounds = new PageBounds(pageNo,pageSize,Order.formString(orderStr));
		List<ProjectPO> list = projectDao.selectProject(map, pageBounds);

		return list;
	}

	public ProjectPO getProjectById(String id) throws Exception {
		ProjectPO project = projectDao.selectProjectById(id);
		return project;
	}

	public int deleteProjectById(String id) throws Exception {
		int rtn = 0;
		rtn = projectDao.deleteProjectById(id);
		return rtn;
	}

	public ProjectPO selectObject() throws Exception {
		ProjectPO project = projectDao.selectObject();
		return project;
	}

}
