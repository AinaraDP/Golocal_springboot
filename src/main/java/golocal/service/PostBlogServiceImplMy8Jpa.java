package golocal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import golocal.modelo.entity.PostBlog;
import golocal.repository.PostBlogRepository;

@Service
public class PostBlogServiceImplMy8Jpa implements PostBlogService {

	@Autowired
	PostBlogRepository postBlogRepository;
	
	@Override
	public List<PostBlog> findAll() {
		return postBlogRepository.findAll();
	}

}
