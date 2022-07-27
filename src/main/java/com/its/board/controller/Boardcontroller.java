package com.its.board.controller;

import com.its.board.dto.BoardDTO;
import com.its.board.service.BoardServlce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@Controller
@RequestMapping("/board") // 요 주수로 오는것은 다 받아줌
public class Boardcontroller {
    @Autowired
    private BoardServlce boardServlce;
    //@GetMapping("/board/save")// RequestMapping 미적용
    @GetMapping("/save")//글쓰기 요청
    public String saveForm(){
    return "/board/save";// =>views/board/save.jsp

    }
    @PostMapping("/board/save")
    public String save(@ModelAttribute BoardDTO boardDTO){
    boolean a  = boardServlce.save(boardDTO);
    if(a){
        return "redirect:/board/findAll"; //=> board/findAll 주소요청
    }else {
        return "boardPages/save-fail";
    }
    }
    @GetMapping("/findAll")
    // boardDTO 목록출력
    public String findAll(Model model){
        List<BoardDTO> boardList = boardServlce.findAll();
        model.addAttribute("boardList",boardList);
        return "boardPages/list";
    }
    @GetMapping("/detail")
    public String findById(@RequestParam("id") Long id, Model model) {
        BoardDTO boardDTO = boardService.findById(id);
        model.addAttribute("board", boardDTO);
        return "boardPages/detail";
    }
    @GetMapping("/paswordCheck")
    // 비밀번호 체크
    public String passwordCheck(@RequestParam("id") Long id,Model model){
        BoardDTO boardDTO= boardServlce.findById(id);
        model.addAttribute("board",boardDTO);
        return "boardPages/board/passwordCheck";
    }
    @GetMapping("dalete")
    //삭제처리
    public String delete(@RequestParam("id") Long id){
        boardServlce.delete(id);
        return "redirect:/board/fingAll";
    }
    //수정
    @GetMapping("/update-form")
    public String updateForm(@RequestParam("id")Long id,Model model){
         BoardDTO boardDTO  =boardServlce.findById(id);
        model.addAttribute("boardupdate",boardDTO);
        return "/boarPa";
    }
    @GetMapping("/update")
    public String update(@ModelAttribute BoardDTO boardDTO){
        boardServlce.update(boardDTO);
        return "/redirect:/board/detail?id"+boardDTO.getId();// 수정 처리 후 해당글 상세페이지 요청

    }
    //글작성 화면
    @GetMapping("/saveFile")
    public  String saveFile(){
        return "boardPages/saveFile";
    }
    //파일 첨부 글작성 처리
    @GetMapping("/saveFile")
    public String saveFile(@RequestParam BoardDTO boardDTO) throws IOException {
        boardServlce.saveFile(boardDTO);
        return "redirect/board/saveFile";
    }
}

