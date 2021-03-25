package sqisoft.com.model;

import java.io.Serializable;

/**
 * @Class Name : MenuInfo.java
 * @Description : 메뉴 정보
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.22
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class MenuInfo implements Serializable{
	
	private static final long serialVersionUID = -9090081629680432417L;
	
	/*메뉴아이디*/
	private String menuId;
	/*상위메뉴아이디*/
	private String upperMenuId;
	/*메뉴명*/
	private String menuName;
	/*설명*/
	private String description;
	/*태그*/
	private String tag;
	/*메뉴 레벨*/
	private int lv;
	/*메뉴 url*/
	private String url;
	/*하위 메뉴 수*/
	private int childCnt;
	
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	public String getUpperMenuId() {
		return upperMenuId;
	}
	public void setUpperMenuId(String upperMenuId) {
		this.upperMenuId = upperMenuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public int getLv() {
		return lv;
	}
	public void setLv(int lv) {
		this.lv = lv;
	}
	public int getChildCnt() {
		return childCnt;
	}
	public void setChildCnt(int childCnt) {
		this.childCnt = childCnt;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
