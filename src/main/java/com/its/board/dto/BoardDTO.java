package com.its.board.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;

@Data
public class BoardDTO {
    private Long id;
    private String boardTitle;
    private String boardWriter;
    private String boardPassword;
    private String boardContents;
    private int boardHits;
    private Timestamp boardCreatedDate;
    private MultipartFile boardFile; // saveFile.jps에 컨트롤러로 넘어 올때 퍼알울 담아오는 용조
    private String boardFileName; //상세 조회 등 할때 파일 이름 담는 용도


}