package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileUploadController {
	
	@RequestMapping("/fileform")
	public String showUploadForm() {
		return "FileForm";
	}
	
	@RequestMapping(path="/uploadfile", method=RequestMethod.POST)
	public String fileUpload(@RequestParam("myFile") MultipartFile file) {
		
		System.out.println("file upload handler");
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getName());
		return "filesuccess";
	}
}
