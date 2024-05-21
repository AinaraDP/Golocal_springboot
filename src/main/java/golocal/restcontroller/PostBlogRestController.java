package golocal.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import golocal.modelo.entity.PostBlog;
import golocal.service.PostBlogService;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/blog")
public class PostBlogRestController {
	
	@Autowired
	PostBlogService postBlogService;
	
	@GetMapping("/todos")
	public List<PostBlog> todos(){
		return postBlogService.findAll();
	}

}
