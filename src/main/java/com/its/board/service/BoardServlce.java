package com.its.board.service;

import com.its.board.dto.BoardDTO;
import com.its.board.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class BoardServlce {
    @Autowired
    private BoardRepository boardRepository;
    public boolean save(BoardDTO boardDTO) {
     int a=   boardRepository.save(boardDTO);
     if(a>0){
         return true;
     }else {
         return false;
     }
    }


    public List<BoardDTO> findAll() {
        return boardRepository.findAll();
    }


    public BoardDTO findById(Long id) {
     // 조회수 증가 상세 정보
        boardRepository.updateHits(id);
        return boardRepository.findById(id);
    }

    public void delete(Long id) {
        boardRepository.delete(id);
    }

    public void update(BoardDTO boardDTO) {
        boardRepository.update(boardDTO);
    }

    public void saveFile(BoardDTO boardDTO) throws IOException {
        /**
         1. DTO 객체를 담긴 파일 을 꺼냄
        2. 파일 이름 가져옴
         2.1 파일 이름 중복 피하기 위한 조치
        3. 파일이름을 DTO 객체의 boardFileName에 저장
        4.파일의 저자위치 지정
        5.  파일 저장처리
         6. DTO 객체를 repository로 전달.
         */
        MultipartFile boarFile = boardDTO.getBoardFile();//1
        String boardFileName = boarFile.getOriginalFilename();//2.
        boardFileName = System.currentTimeMillis()+"-" +boardFileName;
        boardDTO.setBoardFileName(boardFileName);//3.
        String savePath ="D:\\spring_img\\"+boardFileName;
        if(!boarFile.isEmpty()){
            boarFile.transferTo(new File(savePath)); //5.
        }
        boardRepository.saveFile(boardDTO);

    }
    }

