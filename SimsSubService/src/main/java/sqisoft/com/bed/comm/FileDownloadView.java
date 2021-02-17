package sqisoft.com.bed.comm;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

/**
 * FileDownloadView
 * @author SQI소프트 에너지사업팀
 * @since 2016.01.29
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *  수정일			 수정자	 수정내용
 *  ------------------------------------------
 *  2016.01.29	정희선		 최초 생성
 *
 * </pre>
 */
public class FileDownloadView extends AbstractView {
	public FileDownloadView() {
		// 객체가 생성될 때 Content Type을 다음과 같이 변경 
		setContentType("application/download; charset=UTF-8");
	}
	
	@Override
	protected void renderMergedOutputModel( Map<String, Object> model
											, HttpServletRequest req 
											, HttpServletResponse res) throws Exception {
		
		File file = (File) model.get("downloadFile");
		if (!file.isFile()){
		    res.setHeader("Content-Type", "text/html; UTF=utf-8");
			res.setContentType("text/html; charset=UTF-8");
			res.getWriter().write("<script language='javascript'>alert('파일을 찾을 수 없습니다');self.close();</script>");
			res.getWriter().flush();
			res.getWriter().close();
			return;
		}
		
		String fileLogicName = file.getName();
		String fileName = URLEncoder.encode(fileLogicName, "UTF-8");
		fileName = fileName.replaceAll("\\+", "%20");

		res.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
		res.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
		res.setContentType(getContentType());
		res.setContentLength((int) file.length());
		OutputStream out = res.getOutputStream();
		
		FileInputStream fis = null;
		
		try {
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, out);
		} finally {
			if(fis != null)
				try {
					fis.close();
				} catch(IOException ex) {}
		}
		out.flush();
	}
}
