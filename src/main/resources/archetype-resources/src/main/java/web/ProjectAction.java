/**
 * <p>Copyright ® 迷彩CMS平台版权所有。</p>
 * 类名: ProjectAction
 * 创建人: zhaoxg    创建时间: 2015年3月16日
 */

package ${package}.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ${package}.domain.po.ProjectPO;
import ${package}.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


/**
 * 控制器 <br/>
 * 控制器，负责后台业务逻辑功能的调用，与前端页面的跳转
 * 
 * @author zhaoxg
 */
@Controller
@RequestMapping("/project")
public class ProjectAction {

	@Autowired
	ProjectService projectService;
	
	/**
	 * 新建
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/newProject")
	public ModelAndView newProject(HttpServletRequest request,
			HttpServletResponse response) {
		return new ModelAndView("sample/newProject");
	}

	/**
	 * 保存
	 * 
	 * @param projectPO
	 * @return
	 */
	@RequestMapping("/save")
	public ModelAndView Add(@ModelAttribute("project") ProjectPO projectPO) {
		try {
			projectService.insertProject(projectPO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/project/list");
	}

	/**
	 * 查询
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/list")
	public ModelAndView projectList(HttpServletRequest request,
			HttpServletResponse response) {
		List<ProjectPO> projectList = new ArrayList<ProjectPO>();
		// PageList<ProjectPO> pageList = new PageList<ProjectPO>();
		try {
			Map map = new HashMap();
			// map.put("prjName", "软件");
			projectList = projectService.getProjectList(map, 1, 20);
			// pageList =
			// (PageList<ProjectPO>)projectService.getProjectList(map,1,5);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mv = new ModelAndView("sample/projectList");
		mv.addObject("projectList", projectList);
		return mv;
	}

	/**
	 * 编辑
	 * 
	 * @param request
	 * @param response
	 * @param prjId
	 * @return
	 */
	@RequestMapping("/editProject")
	public ModelAndView project(HttpServletRequest request,
			HttpServletResponse response, @RequestParam("prjId") String prjId) {
		ProjectPO projectPO = new ProjectPO();
		try {
			projectPO = projectService.getProjectById(prjId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("sample/project", "projectPO", projectPO);
	}

	/**
	 * 更新
	 * 
	 * @param request
	 * @param response
	 * @param projectPO
	 * @return
	 */
	@RequestMapping("/updateProject")
	public ModelAndView updateProject(HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("project") ProjectPO projectPO) {
		try {
			projectService.updateProjectById(projectPO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/project/list");
	}

	/**
	 * 删除
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/delete")
	public ModelAndView deleteProject(HttpServletRequest request,
			HttpServletResponse response, @RequestParam("prjId") String prjId) {
		try {
			projectService.deleteProjectById(prjId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/project/list");
	}

	// 返回结果不会被解析为跳转路径，而是直接写入HTTP response body中
	@RequestMapping("/resp")
	@ResponseBody
	public String checkNO(ProjectPO projectPO) {
		return "checkNO";
	}

}
