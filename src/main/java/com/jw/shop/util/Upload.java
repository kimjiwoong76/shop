package com.jw.shop.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.jw.shop.domain.ProductVO;

import net.coobird.thumbnailator.Thumbnails;


@Service
public class Upload {
	
	private static final String UPLOAD_PATH = "C:\\jsp\\spring\\spring_project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\jw\\resources\\upload";
	private static final String SERVER_PATH = "/resources/upload/thumb/";
	private static final String THUMBNAIL =  "C:\\jsp\\spring\\spring_project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\jw\\resources\\upload\\thumb";
	
	public void saveFile(ProductVO vo, MultipartFile file, Model model) throws IOException {
		// TODO Auto-generated method stub
		UUID uuid = UUID.randomUUID();
		String saveName = uuid + "_" + file.getOriginalFilename();
		String thumbName = "THUM_" + uuid + file.getOriginalFilename();
		String server_path = SERVER_PATH + thumbName;
		File saveFile = new File(UPLOAD_PATH, saveName);
		File thumbFile = new File(THUMBNAIL, thumbName);
		int pos = server_path.lastIndexOf(".");
		String useFile = server_path.substring(0, pos);
		vo.setPrdImg(server_path + ".png");
		try {
	        file.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
	        if(saveFile.exists()) {
				thumbFile.getParentFile().mkdir();
				Thumbnails.of(saveFile).size(400, 400).outputFormat("png").toFile(thumbFile);
			}
	        model.addAttribute("imgUrl", thumbFile);
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	}
}
