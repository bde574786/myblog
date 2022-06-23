package com.tencoding.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tencoding.blog.dto.BoardSaveRequestDto;
import com.tencoding.blog.model.Board;
import com.tencoding.blog.service.BoardService;

import lombok.AllArgsConstructor;


@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	
	@PostMapping("/save")
	@ResponseBody
	public String save(@RequestBody BoardSaveRequestDto dto) {
		System.out.println("save");
		boardService.write(dto);
		return "ok";
	}
	
	
	@GetMapping({"list" })
	public String list(@PageableDefault(size = 5, sort = "id", direction = Direction.DESC) Pageable pageable,
			Model model) {
		Page<Board> boards = boardService.list(pageable);
		System.out.println("list들어옴");
		model.addAttribute("boards", boards);
		return "list"; 
	}
	
	
	@GetMapping("/listPage")
	@ResponseBody
	public Page<Board> listPage(@PageableDefault(size = 1, sort = "id", direction = Direction.DESC) Pageable pageable,
			Model model) {
		Page<Board> boards = boardService.list(pageable);
		System.out.println("listpage 들어옴");
		model.addAttribute("boards", boards);
		return boards;
	}
	
	
	@GetMapping("/board/{id}")
	public String updateForm(@PathVariable int id, Model model) {
		Board board = boardService.detail(id);
		model.addAttribute("board", board); 
		System.out.println("업데이트폼");
		return "updateForm";
	}
	

	@PutMapping("/board/{id}")
	@ResponseBody 
	public String updateBoard(@PathVariable int id, @RequestBody BoardSaveRequestDto dto) { 
		boardService.update(id, dto);
		return "ok";
	}

	@DeleteMapping("/delete/{id}")
	@ResponseBody
	public boolean deleteBoard(@PathVariable int id) {
		return boardService.delete(id) == 1 ? true : false;
	}
	

	
}
