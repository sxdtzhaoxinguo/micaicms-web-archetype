/**
 * <p>Copyright ® 迷彩CMS平台版权所有。</p>
 * 类名: ProjectDao
 * 创建人: zhaoxg    创建时间: 2015年3月16日
 */

package ${package}.infrastructure.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import ${package}.domain.po.ProjectPO;
import org.springframework.stereotype.Component;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;

/**
 * TODO <功能简述> <br/>
 * TODO <功能详细描述>
 * @author zhaoxg
 */
@Component
public interface ProjectDao {


    /**
     * 
     * 新增记录
     * @param po
     * @return
     */
    public int insertProject(ProjectPO po);
    /**
     * 
     * 更新记录
     * @param po
     * @return
     */
    public int updateProjectById(ProjectPO po);
   
    /**
     * 
     * 查询列表
     * @param po
     * @return
     */
    public List<ProjectPO> selectProject(Map map,PageBounds pageBounds);
    
    /**
     * 
     * 根据ID获取一个对象
     * @param po
     * @return
     */
    public ProjectPO selectProjectById(String id);
    
    /**
     * 
     * 根据ID删除记录
     * @param id
     * @return
     */
    public int deleteProjectById(String id);
    
    public ProjectPO selectObject();
}
