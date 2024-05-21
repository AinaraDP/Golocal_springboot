package golocal.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import golocal.modelo.entity.PostBlog;

public interface PostBlogRepository extends JpaRepository<PostBlog, Integer> {

}
