package com.ceit.ebs.sys.service;

import com.ceit.common.util.PageInfo;
import com.ceit.ebs.sys.vo.SysRoleMenuVo;

/**
 *@author gr
 *@date 2014-8-7 下午03:18:51
 */

public interface ISysRoleMenuService {

	//获得数据的条数
	public Integer getCount();
	
	//通过页数和页面大小获得vo
	public PageInfo<SysRoleMenuVo> querydata(int pageindex, int pagesize);
	
	//通过id获得实体
	public SysRoleMenuVo getSysRoleMenubyId(int id);
	
	//通过实体修改数据库
	public boolean modifySysRoleMenu(SysRoleMenuVo s);
	
	//通过id删除一条数据
	public boolean deleteSysRoleMenubyId(Integer id);
	
	//以Vo作为参数插入一条数据
	public Integer insertSysRoleMenu(SysRoleMenuVo role);
	
}