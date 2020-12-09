package com.jw.shop.util;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jw.shop.domain.ProductVO;

import net.coobird.thumbnailator.Thumbnails;


@Service
public class Upload {
	
//	private static final String UPLOAD_PATH = "C:\\jsp\\spring\\spring_project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\jw\\resources\\upload";
//	private static final String SERVER_PATH = "/resources/upload/thumb/";
//	private static final String THUMBNAIL =  "C:\\jsp\\spring\\spring_project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\jw\\resources\\upload\\thumb";
	private static final String UPLOAD_PATH = "C:\\jsp\\spring\\upload";
	private static final String SERVER_PATH = "/resources/upload/thumb/";
	private static final String THUMBNAIL =  "C:\\\\jsp\\\\spring\\\\upload";
	
	public void saveFile(ProductVO vo, MultipartHttpServletRequest file, Model model) throws IOException {
		// TODO Auto-generated method stub
		UUID uuid = UUID.randomUUID();
		String saveName = null;
		String thumbName = null;
		
		List<MultipartFile> files = file.getFiles("file");
		
		for(int i=0; i<files.size(); i++) {
			if(files.get(i).getOriginalFilename() != null && files.get(i).getOriginalFilename() != "") {
				saveName = uuid + "_" + files.get(i).getOriginalFilename();
				thumbName = "THUM_" + uuid + files.get(i).getOriginalFilename();
				
				String server_path = SERVER_PATH + thumbName;
				File saveFile = new File(UPLOAD_PATH, saveName);
				File thumbFile = new File(THUMBNAIL, thumbName);
				int pos = server_path.lastIndexOf(".");
				String useFile = server_path.substring(0, pos);
				if(i == 0) {
					vo.setPrdImg(server_path);
				} else if(i == 1) {
					vo.setPrdImg2(server_path);
				} else if(i == 2) {
					vo.setPrdImg3(server_path);
				}
				try {
			        files.get(i).transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
			        if(saveFile.exists() && !saveName.equals("no_img.png")) {
						thumbFile.getParentFile().mkdir();
						Thumbnails.of(saveFile).size(460, 460).toFile(thumbFile);
//						Thumbnails.of(saveFile).size(460, 460).outputFormat("png").toFile(thumbFile);
					}
			        model.addAttribute("imgUrl", thumbFile);
			    } catch (IOException e) {
			        e.printStackTrace();
			    }
			}
		}
	}
}
