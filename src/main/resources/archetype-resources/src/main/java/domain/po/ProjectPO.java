/*
 * <p>Copyright ® 迷彩CMS平台版权所有。</p>
 * 类名: ProjectPO
 * 创建人: zhaoxg    创建时间: 2015年3月16日
 */

package ${package}.domain.po;

import java.io.Serializable;

/**
 * PO样例 <br/>
 * 该样例的对象为“项目”
 * 
 * @author zhaoxg
 */
public class ProjectPO implements Serializable {
	/**
	 * 序列化id
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 项目id
	 */
	private String prjId;
	/**
	 * 项目名称
	 */
	private String prjName;
	/**
	 * 项目类型
	 */
	private int prjType;

	/**
	 * @return Returns the prjId.
	 */
	public String getPrjId() {
		return prjId;
	}

	/**
	 * @param prjId
	 *            The prjId to set.
	 */
	public void setPrjId(String prjId) {
		this.prjId = prjId;
	}

	/**
	 * @return Returns the prjName.
	 */
	public String getPrjName() {
		return prjName;
	}

	/**
	 * @param prjName
	 *            The prjName to set.
	 */
	public void setPrjName(String prjName) {
		this.prjName = prjName;
	}

	/**
	 * @return Returns the prjType.
	 */
	public int getPrjType() {
		return prjType;
	}

	/**
	 * @param prjType
	 *            The prjType to set.
	 */
	public void setPrjType(int prjType) {
		this.prjType = prjType;
	}

}
