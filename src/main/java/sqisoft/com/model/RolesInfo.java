package sqisoft.com.model;

import java.io.Serializable;

/**
 * @Class Name : RolesInfo.java
 * @Description : 사용자 권한 정보
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.19
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class RolesInfo implements Serializable{

	private static final long serialVersionUID = -4576566267917611067L;
	
	/*권한*/
	private String authority;
	/*역할명*/
	private String roleName;
	/*설명*/
	private String description;
	
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
