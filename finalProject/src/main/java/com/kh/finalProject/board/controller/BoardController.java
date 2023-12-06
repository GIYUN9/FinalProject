package com.kh.finalProject.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalProject.board.model.service.BoardService;
import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.common.Pagenation;
import com.kh.finalProject.common.vo.Attachment;
import com.kh.finalProject.common.vo.Notice;
import com.kh.finalProject.common.vo.PageInfo;

@Controller
public class BoardController {
	
	// 도와줄게요, 도와주세요, 커뮤니티 등등 게시판 으로 활용할 컨트롤러
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "help.bo")
	public String helpBoard() {
		//도와줄게요 화면
		return "board/helpBoardList";
	}
	
	@RequestMapping(value="request.bo")
	public String requestBoard() {
		// 도와주세요 화면
		return "board/requestBoardList";
	}
	
	@RequestMapping(value="detail.bo")
	public String detailBoard() {
		// 클릭시 상세페이지 이동 (하나밖에 없음)
		return "board/boardDetailView";
	}
	
	// 도와줄게요 전체 게시글 조회
	@RequestMapping(value="helpList.bo")
	public String helpListBoard() {
		// 클릭시 도와줄게요 전체 게시글보기 페이지로 이동
		return "board/helpBoardList";
	}
	
	//도와줄게요 게시글 등록 페이지
	@RequestMapping(value = "helpInsert.bo")
	public String helpInsert(Board b, Attachment at, MultipartFile upfile,  HttpSession session, Model model) { // , Atta~~ a
		b.setMemberNo(2); // 임시데이터
		b.setCatrgoryNo(200); // 임시데이터

			
		if(!upfile.getOriginalFilename().equals("")) {
				
			String atChangeName = saveFile(upfile, session, "/resources/borderImage/");
				
			at.setOriginName(upfile.getOriginalFilename());
			at.setChangeName("resources/borderImage/" + atChangeName);
		}
			
		int result1 = boardService.insertBoard(b);
		int result2 = boardService.helpAttachment(at);
			
		if(result1 > 1) {
				
		} else if(result2 > 0) {
				
		} if((result1 * result2) > 0) {
			session.setAttribute("alertMsg", "게시글 등록 성공");
			return "redirect:helpList.bo";
		} else {
			model.addAttribute("errorMsg", "게시글 등록 실패");
			return "common/errorPage";
		}
		// result1 > 1 => 인서트가 정상적으로 완료 
		// int result2 = board~~~~.insertAttc(a);
		// result2 > 0 => attc파일 첨부 정상적으로 종료
			
//		if((result1 * result 2) > 0) {return "정상적으로 종료시 보내줄페이지"} else{에러났을때(글작성 실패시) return ""}
			
		}
		
		public String saveFile(MultipartFile upfile,  HttpSession session, String path) {
			//원래 파일명
			String helpOrigin = upfile.getOriginalFilename();
			
			//시간정보
			String helpTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			
			//랜덤숫자
			int helprandom = (int)(Math.random() * 90000) + 10000;
			
			//확장자
			String ext = helpOrigin.substring(helpOrigin.lastIndexOf("."));
			
			//변경된 이름
			String helpChange = helpTime + helprandom + ext;
			
			//첨부파일 저장할 폴더의 물리적인 경로
			String helpPath = session.getServletContext().getRealPath(path);

			try {
				upfile.transferTo(new File(helpPath + helpChange));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			
			return helpChange;

		}
	

	// 도와줄게요 게시글 수정
	@RequestMapping(value="helpUpdate.bo")
	public String updateBoard(Board b, MultipartFile reupfile, HttpSession session, Model model) {
		
		int result = boardService.updateBoard(b);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "게시글 수정 성공");
			return "redirect:update.bo?hno=" + b.getBoardNo();
		} else {
			model.addAttribute("errorMsg","게시글 수정 실패");
			return "common/errorMsg";
		}
	}
	
	// 도와줄게요 게시글 삭제
	@RequestMapping(value="helpDelete.bo")
	public String DeleteBoard(int boardNo, String filePath, HttpSession session, Model model) {
		
		int result = boardService.deleteBoard(boardNo);
		
		if(result > 0) {
			if(!filePath.equals("")) {
				new File(session.getServletContext().getRealPath(filePath)).delete();
			}
			
			session.setAttribute("alertMsg", "게시글 삭제 성공");
			return "redirect:helpList.bo";
		} else {
			model.addAttribute("errorMsg", "게시글 삭제 실패");
			return "common/errorMsg";
		}

	}
	
//	게시글 리스트 전체보기
	@RequestMapping(value = "list.co")
	public ModelAndView commList
	(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {
		int listCount = boardService.selectCommListCount();
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 5, 4);
		ArrayList<Board> list = boardService.selectCommList(pi);
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("noticeBoard/allBoard");
		
		return mv;
	}
		
	//궁금해요
	@RequestMapping(value = "/curious.co")
	public String curiousBoard(){
		return "noticeBoard/curiousBoard";
	}
	
	//얼마에요
	@RequestMapping(value = "/much.co")
	public String muchBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/muchBoard";
	}
	
	//함께해요
	@RequestMapping(value = "/together.co")
	public String togetherBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/togetherBoard";
	}
	
	
	//공지사항
	@RequestMapping(value = "/notice.co")
	public String noticeBoard(Model model){
		ArrayList<Notice> nList = boardService.noticeList();
		model.addAttribute("nList",nList);
		return "noticeBoard/noticeBoard";
	}

	

	//공지사항 글쓰기
	@RequestMapping(value = "/insert.co")
	public String noticeBoard(HttpSession session, Model model) {
		
		
		return "noticeBoard/annoucementBoard";
	}
	
	@RequestMapping(value = "/viewall.co")
	public String allBoardBoard(){
		//화면 전환용 임시 데이터는 없는상태
		return "noticeBoard/allBoard";
	}
	

	//공지사항 글쓰기 화면 전환용
	@RequestMapping(value = "/noticeEnrollForm.co")
	public String noticeEnrollForm(Notice n) {
		
		return "noticeBoard/noticeEnrollForm";
	}
	
	//공지사항 글쓰기
	@RequestMapping(value = "/insertNotice.co")
	public String insertNotice(Notice n, Model model) {
		int result = boardService.insertNotice(n);
		if(result > 0) {
			return "redirect:/notice.co";
		} else {
			model.addAttribute("errorMsg", "공지사항 작성 실패");
			return "common/errorMsg";
		}
		
		
	}
	
	@RequestMapping(value = "/helpuForm.bo")
	public String helpuForm() {
		
		return "board/helpu";
	}
	
	
	//게시글 쓰기 페이지 이동
	@RequestMapping(value ="pageMove.no")
	public String pageMoveBoard(){
		
		return "noticeBoard/insertNotice";
	}

	//게시글 등록
	@RequestMapping("insert.bo")
	public String insertBoard(Board b, HttpSession session, Model model) {
		//System.out.println(b);
		
		int result = boardService.insertBoard(b);
		if (result > 0) { //성공 => 게시글 리스트 페이지 redirect:"list.bo"
			session.setAttribute("alertMsg", "게시글 작성 완료");
			return "redirect:list.bo";
		} else { //실패 => 에러페이지
			model.addAttribute("errorMsg", "게시글 작성 실패");
			return "common/errorMsg";
		}
	}
	
	//게시글 수정
	
	
	
	
	//게시글 삭제
	
	//도와주세요 게시글 조회
	
	//도와주세요 게시글 등록
	
	//도와주세요 게시글 수정
	
	//도와주세요 게시글 삭제
	
	
	
//	스크립트 기능 후 가진 정보 보내주는 기능 
//	나중에 작성!
//	@RequestMapping(value="")
//	public String reportModal() {
//		
//		
//		return "board/reportModal";
//	}
//	
//	@RequestMapping(value="")
//	public String reportModal() {
//		
//		return "board/reportModal";
//	}
	

}
