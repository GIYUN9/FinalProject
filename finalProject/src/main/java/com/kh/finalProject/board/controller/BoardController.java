package com.kh.finalProject.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalProject.board.model.service.BoardService;
import com.kh.finalProject.board.model.vo.Board;
import com.kh.finalProject.common.Pagenation;
import com.kh.finalProject.common.vo.Attachment;
import com.kh.finalProject.common.vo.Category;
import com.kh.finalProject.common.vo.Notice;
import com.kh.finalProject.common.vo.PageInfo;
import com.kh.finalProject.common.vo.Report;

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
	
	//도와줄게요 게시글 작성 페이지
	@RequestMapping(value = "/helpuForm.bo")
	public String helpuForm() {
			
		return "board/helpu";
	}
	
	//도와줄게요 리스트
	@RequestMapping(value="helpList.bo")	
		public ModelAndView helpSelectList(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv) {
			int listCount = boardService.seleteHelpListCount();

			PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 5, 8);
			ArrayList<Board> list = boardService.helpselectList(pi);
			
			//카테고리 불러오기
			ArrayList<Category> cList = boardService.selectCategoryList();
			mv.addObject("pi",pi)
				.addObject("list",list)
				.addObject("lType", "helpList.bo")
				.addObject("cList", cList)
				.addObject("listCount", listCount)
				.setViewName("board/helpBoardList");
				
			return mv;
	}
	
	//카테고리 별 도와줄게요 이동 페이지
	@RequestMapping(value="helpCategoryList.bo")
	public ModelAndView helpCategoryList(@RequestParam(name = "categoryNo") int categoryNo, @RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv) {
		
		int listCount = boardService.helpCategoryCount(categoryNo);
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 5, 8);
		
		ArrayList<Board> list = boardService.helpCategoryList(pi, categoryNo);
	
		//위에 뜨는 카테고리 불러오기
		ArrayList<Category> cList = boardService.selectCategoryList();
		
		
		mv.addObject("pi", pi)
			.addObject("list",list)
			.addObject("lType", "helpCategoryList.bo")
			.addObject("cList", cList)
			.setViewName("board/helpCategoryList");;
			
		return mv;
	}
	

	//도와줄게요 날짜순으로 보이게 하는 리스트
	 @RequestMapping(value = "helpDateList", method = RequestMethod.GET)
	 public ModelAndView helpDateList(@RequestParam(value="cpage", defaultValue="1") int currentPage, Board b, ModelAndView mv) {
	        int listCount = boardService.helpDateCheckCount();

	        PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 5, 8);

	        ArrayList<Board> dateList = boardService.helpDateCheck(b, pi);
	        
	        ArrayList<Category> cList = boardService.selectCategoryList();
	        
	        mv.addObject("list", dateList);
	        mv.addObject("pi", pi);
	        mv.addObject("lType", "helpDateList");
	        mv.addObject("cList", cList);
	        mv.addObject("listCount", listCount);
	        mv.setViewName("board/helpBoardList");

	        return mv;
	    }
	 
	 //도와줄게요 조회수 리스트 컨트롤러
	 @RequestMapping(value = "helpReferenceList", method = RequestMethod.GET)
	 public ModelAndView helpReferenceList(@RequestParam(value="cpage", defaultValue="1") int currentPage, Board b, ModelAndView mv) {
		 int listCount = boardService.helpReferenceCount();
		 
		 PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 5, 8);

	     ArrayList<Board> referenceList = boardService.helpReference(b, pi);
	     
	     ArrayList<Category> cList = boardService.selectCategoryList();
	     
	     mv.addObject("list", referenceList);
	     mv.addObject("pi", pi);
	     mv.addObject("lType", "helpReferenceList");
	     mv.addObject("cList", cList);
	     mv.addObject("listCount", listCount);
	     mv.setViewName("board/helpBoardList");

	     return mv;
	 }
	 
	//도와줄게요 게시글 등록 페이지
	@RequestMapping(value="helpInsert.bo", method = RequestMethod.POST)
	public String helpInsertBoard(Board b, MultipartFile upfile, Attachment at ,HttpSession session, Model model) {
		
		int result1 = 0;
		int result2 = 0;
	
		if(!upfile.getOriginalFilename().equals("")) {
			
			String changeName = saveFile(upfile, session, "././resources/borderImage/");
			
			b.getBoardNo(); 
			at.setOriginName(upfile.getOriginalFilename());
			at.setChangeName("././resources/borderImage/" + changeName);
		}
		
		result1 = boardService.helpinsertBoard(b);
		b = boardService.helpselectOne(b);
		at.setBoardNo(b.getBoardNo());
		result2 = boardService.helpAttachment(at);
	
		if(result1 > 0 && result2 > 0) {
			session.setAttribute("b", b);
			session.setAttribute("alertMsg", "게시글 작성 완료");
			return "redirect:/helpList.bo";
		} else {
			model.addAttribute("errorMsg", "게시글 작성 실패");
			return "common/errorPage";
		}	
			
		}
	
	//도와줄게요 디테일 페이지 이동
	@RequestMapping(value="helpDetailPage.bo")
	public String helpDetailBoard(int boardNo, Model model, HttpSession session)  {
		
		
		
		int increaseCount = boardService.helpincreaseCount(boardNo);
	
		
		if(increaseCount > 0) {
			Board b = boardService.helpmeSelectBoard(boardNo);
			ArrayList<Attachment> atlist = boardService.helpmeAttachmentList(boardNo);
			
			
			ArrayList<Category> cList = boardService.selectCategoryList();
			session.setAttribute("b", b);
			session.setAttribute("atlist", atlist);
			session.setAttribute("cList", cList);
			
			return "board/helpDetail";
		} else {
			model.addAttribute("errorMsg", "게시글 조회 실패");
			return "common/errorPage";
		}
	}
	
	//도와줄게요 게시글 수정 이동
	@RequestMapping(value="helpUpdateForm.bo")
	public String helpUpdateForm(int boardNo, Model model) {
		
		Board b = boardService.helpmeSelectBoard(boardNo);
		model.addAttribute("b",b);
		
		return "board/helpuRetouch";
	}
	
	// 도와줄게요 게시글 수정
	@RequestMapping(value="helpUpdate.bo")
	public String helpupdateBoard(Board b, Attachment at, MultipartFile reupfile, HttpSession session, Model model) {
		
		
		
		if(!reupfile.getOriginalFilename().equals("")) {
			
			String changeName = saveFile(reupfile, session, "resources/borderImage/");
			
			if(at.getOriginName() != null) {
				new File(session.getServletContext().getRealPath(at.getChangeName())).delete();
			}
			
			at.setOriginName(reupfile.getOriginalFilename());
			at.setChangeName("././resources/borderImage/" + changeName);
		}
		
		int result = boardService.helpUpdateBoard(b);
		
		if (result > 0) {
			session.setAttribute("alertMsg", "게시글 수정 완료");
			return "redirect:/helpDetailPage.bo?boardNo=" + b.getBoardNo();
		} else {
			model.addAttribute("errorMsg", "게시글 수정 실패");
			return "common/errorPage";
		}
	}	
		
	// 도와줄게요 게시글 삭제
	@RequestMapping(value="helpDelete.bo")
	public String helpDeleteBoard(int boardNo, String filePath, HttpSession session, Model model) {
			
		int result = boardService.helpDeleteBoard(boardNo);
			
		if(result > 0) {
			if(!filePath.equals("")) {
				new File(session.getServletContext().getRealPath(filePath)).delete();
		}
			session.setAttribute("alertMsg", "게시글 삭제 성공");
			return "redirect:/helpList.bo";
		} else {
			model.addAttribute("errorMsg", "게시글 삭제 실패");
			return "common/errorMsg";
		}
	}
	
		
	public String saveFile(MultipartFile upfile, HttpSession session, String path) {
		//파일명 수정 후 서버 업로드 시키기("이미지저장용 (2).jpg" => 20231109102712345.jpg)
		//년월일시분초 + 랜덤숫자 5개 + 확장자
		
		//원래 파일명
		String originName = upfile.getOriginalFilename();
		
		//시간정보 (년월일시분초)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		//랜덤숫자 5자리
		int ranNum = (int)(Math.random() * 90000) + 10000;
		
		//확장자
		String ext = originName.substring(originName.lastIndexOf("."));
		
		//변경된이름
		String changeName = currentTime + ranNum + ext;
		
		//첨부파일 저장할 폴더의 물리적인 경우
		String savePath = session.getServletContext().getRealPath(path);
		
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
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
		
	//궁금해요 리스트
	@RequestMapping(value = "/curious.co")
	public ModelAndView curiousList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv) {	
		int listCount = boardService.selectCuriousListCount();
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 5, 3);
		ArrayList<Board> list = boardService.selectCuriousList(pi);
		mv.addObject("pi", pi)
		.addObject("list", list)
		.setViewName("noticeBoard/curiousBoard");
		return mv;
	}
	
	//얼마에요 리스트
	@RequestMapping(value = "/much.co")
	public ModelAndView muchList(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv){
		int listCount = boardService.selectMuchListCount();
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 5, 3);
		ArrayList<Board> list = boardService.selectMuchList(pi);
		mv.addObject("pi", pi)
		.addObject("list", list)
		.setViewName("noticeBoard/muchBoard");
		return mv;
	}
	
	//함께해요 리스트
	@RequestMapping(value = "/together.co")
	public ModelAndView togetherBoard(@RequestParam(value = "cpage", defaultValue = "1") int currentPage, ModelAndView mv){
		int listCount = boardService.selectTogetherListCount();
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 5, 3);
		ArrayList<Board> list = boardService.selectTogetherList(pi);
		mv.addObject("pi", pi)
		.addObject("list", list)
		.setViewName("noticeBoard/togetherBoard");
		
		return mv;
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
	
	//공지사항 삭제
	@RequestMapping(value = "/deleteNotice.co")
	public String deleteNotice(Notice n, Model model) {
		
		int result = boardService.deleteNotice(n);
		
		return "redirect:/notice.co";
	}
	
//	@RequestMapping(value = "helpInsert.bo")
//	public String helpInsert(Board b) {
//		b.setMemberNo(2); // 임시데이터
//		b.setCatrgoryNo(200); // 임시데이터
//		int result1 = boardService.helpInsert(b);
//		return "";
//	}
	
	//게시글 쓰기 페이지 이동
	@RequestMapping(value = "helpInsert.bo")
	public String helpInsert(Board b) {
		b.setMemberNo(2); // 임시데이터
//		b.setCatrgoryNo(200); // 임시데이터
//		int result1 = boardService.helpInsert(b);
		
		
		

//		int result1 = boardService.helpInsert(b);

		return "";
	}
	
	//커뮤니티 게시글 쓰기 페이지 이동
	@RequestMapping(value ="pageMove.no")
	public String pageMoveBoard(){
		
		return "noticeBoard/insertNotice";
	}
	
	//커뮤니티 게시글 insert 등록
	@RequestMapping(value = "/insertBoard.co")
	public String insertCommBoard(Board b, Model model) {
		int result = boardService.insertCommboard(b);
		if(result>0) {
			return "redirect:/list.co";
		} else {
			model.addAttribute("errorMsg", "게시글 등록 실패");
			return "common/errorPage";
		}
		
	}
	
	//커뮤니티 게시글 update 페이지 이동
	@RequestMapping(value = "/updatePage.co")
	public String updatePage(HttpSession session, int boardNo) {
		Board b = boardService.selectCommBoard(boardNo);
		session.setAttribute("b", b);
		
		return "noticeBoard/boardUpdate";
	}
		

	
	//커뮤니티 게시글 update(수정)
	@RequestMapping(value = "/updateBoard.co")
	public String updateCommBoard(Board b, HttpSession session, Model model) {
		int result = boardService.updateCommBoard(b);
		if (result > 0) {
		    model.addAttribute("alertMsg", "게시글 수정 성공");
		    
		    return "forward:/detailcomm.co";
		} else {
			model.addAttribute("errorMsg", "게시글 등록 실패");
			return "common/errorPage";
		}
	};
		
	//커뮤니티 게시글 delete(수정) 
	@RequestMapping(value = "/deletePage.co")
	public String deleteCommBoard(HttpSession session, int boardNo, Model model) {
		
		int result = boardService.deleteCommBoard(boardNo);
		
		
		session.setAttribute("alertMsg", "게시글 삭제 성공");
		if(result > 0) {
			return "forward:/list.co";
		}else {
			model.addAttribute("errorMsg", "게시글 삭제 실패");
			return "common/errorPage";
		}
		
	}


	
	//게시글 등록

	@RequestMapping("insert.bo")
	public String insertBoard(Board b, HttpSession session, Model model) {
	
		
		int result = boardService.helpinsertBoard(b);
		if (result > 0) { //성공 => 게시글 리스트 페이지 redirect:"list.bo"
			session.setAttribute("alertMsg", "게시글 작성 완료");
			return "redirect:list.bo";
		} else { //실패 => 에러페이지
			model.addAttribute("errorMsg", "게시글 작성 실패");
			return "common/errorMsg";
		}
	}
	
	//커뮤니티 디테일뷰
	@RequestMapping("detailcomm.co")
	public String detailCommBoard(int boardNo, HttpSession session, Model model) {
		// 클릭시 상세페이지 이동 (하나밖에 없음)
		int count = boardService.updateViewCount(boardNo);
		
		Board b = boardService.selectCommBoard(boardNo);
	
		if(b != null) { //성공
			session.setAttribute("b", b);
			return "noticeBoard/noticeDetailView";
		}else { //실패
			return "common/errorMsg";
		}
		
	}
	
	@RequestMapping(value = "find.bo")
	public String findBoardKeyWord(String keyWord, Model model) {
		
		//최대 최근등록 2개 공통
		//공지사항
		ArrayList<Notice> nList = boardService.noticeListTwo();
		model.addAttribute("nList", nList);
		
		//도와줄게요 서비스
		ArrayList<Board> list1 = boardService.findBoardList1(keyWord);
		model.addAttribute("list1", list1);
		
		//도와주세요 서비스
		ArrayList<Board> list2 = boardService.findBoardList2(keyWord);
		model.addAttribute("list2", list2);
		
		//궁금해요 서비스
		ArrayList<Board> list3 = boardService.findBoardList3(keyWord);
		model.addAttribute("list3", list3);
		
		//얼마예요 서비스
		ArrayList<Board> list4 = boardService.findBoardList4(keyWord);
		model.addAttribute("list4", list4);
		
		//함께해요 서비스
		ArrayList<Board> list5 = boardService.findBoardList5(keyWord);
		model.addAttribute("list5", list5);
		
		return "common/find";
	}
	
	
	//도와주세요 리스트
	@RequestMapping(value="helpmeList.bo")
	public ModelAndView helpmeselectList(@RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv) {
		int listCount = boardService.seleteHelpmeListCount();
			
		PageInfo pi =  Pagenation.getPageInfo(listCount, currentPage, 5, 8);
	
		ArrayList<Board> list = boardService.helpmeselectList(pi);
		
		
		ArrayList<Category> cList = boardService.selectCategoryList();
		
		mv.addObject("pi",pi)
		  .addObject("list",list)
		  .addObject("mType","helpmeList.bo")
		  .addObject("cList", cList)
		  .addObject("listCount", listCount)
		  .setViewName("board/requestBoardList");
			
		return mv;
	}
	
	//도와주세요 카테고리 별 도와주세요이동 페이지
	@RequestMapping(value="helpmeCategoryList.bo")
	public ModelAndView helpmeCategoryList(@RequestParam(name = "categoryNo") int categoryNo, @RequestParam(value="cpage", defaultValue="1") int currentPage, ModelAndView mv) {
		
		int listCount = boardService.helpmeCategoryCount(categoryNo);
		
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 5, 8);
		
		ArrayList<Board> list = boardService.helpmeCategoryList(pi, categoryNo);
	
		
		//위에 뜨는 카테고리 불러오기
		ArrayList<Category> cList = boardService.selectCategoryList();
		
		mv.addObject("pi", pi)
			.addObject("list",list)
			.addObject("mType", "helpmeCategoryList.bo")
			.addObject("cList", cList)
			.addObject("listCount", listCount)
			.setViewName("board/helpmeCategoryList");
			
		return mv;
	}
	
	
	//도와주세요 게시글 작성 페이지
	@RequestMapping(value = "helpmeForm.bo")
	public String helpmeForm() {
		return "board/helpme";
	}
	
	//도와주세요 게시글 등록 // 지혜님 거
//	@RequestMapping(value = "helpmeInsert.bo", method = RequestMethod.POST)
//	public String helpmeInsertBoard(Board b, Attachment at, MultipartFile upfile, HttpSession session, Model model) {
//		int result1 = 0;
//		int result2 = 0;
//	
//		
//
//		if(!upfile.getOriginalFilename().equals("")) {
//			
//			String changeName = saveFile(upfile, session, "resources/borderImage/");
//			
//			at.setOriginName(upfile.getOriginalFilename());
//
//			at.setChangeName("././resources/borderImage/" + changeName);
//		}
//		
//		result1 = boardService.helpmeInsertBoard(b);
//		b = boardService.helpmeselectOne(b);
//		at.setBoardNo(b.getBoardNo());
//		result2 = boardService.helpmeAttachment(at);
//		
//		if(result1 > 0 && result2 > 0) {
//			session.setAttribute("alertMsg", "게시글 작성 성공");
//			return "redirect:/helpmeList.bo";
//		} else {
//			model.addAttribute("errorMsg", "게시글 작성 실패");
//			return "common/errorPage";
//		}
//	}
	
	//최창영 도와주세요 인설트
	@RequestMapping(value ="helpmeInsert.bo", method = RequestMethod.POST)
	public String helpmeInsertBoard(Board b, @RequestParam("upfile") MultipartFile[] upfiles,
	        HttpSession session, Model model) {
		
		ArrayList<Attachment> list = new ArrayList<>();
	
		int result1 = 0;
		int result2 = 0;
		result1 = boardService.helpmeInsertBoard(b);
		
		
		b = boardService.helpmeselectOne(b);
	
		
		b = boardService.helpmeselectOne2(b.getBoardNo());
	
		
				
	    for (MultipartFile upfile : upfiles) {
	        if (!upfile.isEmpty()) {
	        	
	        	Attachment at = new Attachment();
	        	
	            String changeName = saveFile(upfile, session, "resources/borderImage/");
	            at.setChangeName("././resources/borderImage/" + changeName);
	            at.setOriginName(upfile.getOriginalFilename());	   
	            at.setFilePath("././resources/borderImage/");
	            
	            at.setBoardNo(b.getBoardNo());
	                    
	            String fileName = upfile.getOriginalFilename();
	            if( upfile == upfiles[0]) {
	            	at.setFileLevel(1);
	            } else {
	            	at.setFileLevel(2);
	            }
	             
	            list.add(at);
	        }
	    }
	    Attachment at = new Attachment();
	    for (Attachment attachment : list) {
	    	
	        at = attachment;
	       
	        boardService.helpmeAttachment(at);
	    }
	
		if(result1 > 0 ) {
			if(b.getBoardType() == 2) {		
				session.setAttribute("alertMsg", "게시글 작성 성공");
				session.setAttribute("b", b);
				return "redirect:/helpmeList.bo";
			}else {
				session.setAttribute("alertMsg", "게시글 작성 성공");
				session.setAttribute("b", b);
				return "redirect:/helpList.bo";
			}
			
		} else {
			model.addAttribute("errorMsg", "게시글 작성 실패");
			return "common/errorPage";
		}
	}  
	

	
	//도와주세요 디테일 페이지 이동
	@RequestMapping(value="helpmeDetail.bo")
	public String helpmeDetailBoard(int boardNo, Model model, HttpSession session) {
		
		session.removeAttribute("atlist");
		int increaseCount = boardService.helpincreaseCount(boardNo);
		
		
		if(increaseCount > 0) {
			Board b = boardService.helpmeSelectBoard(boardNo);
			ArrayList<Attachment> atlist = boardService.helpmeAttachmentList(boardNo);
			
			ArrayList<Category> cList = boardService.selectCategoryList();
			session.setAttribute("b", b);
			session.setAttribute("atlist", atlist);
			session.setAttribute("cList", cList);
			
			return "board/requestHelpmeDetail";
		} else {
			model.addAttribute("errorMsg", "게시글 조회 실패");
			return "common/errorPage";
		}
	}
	
	//도와주세요 게시글 수정페이지 이동 aaa수정버튼 눌렀을 시
	@RequestMapping(value="helpmeUpdateForm.bo")
	public String helpmeUpdateForm(int boardNo, Model model) {
		
		Board b = boardService.helpmeSelectBoard(boardNo);
		model.addAttribute("b",b);
		
		return "board/helpMeUpdate";
	}
	
	//도와주세요 게시글 수정
	@RequestMapping(value="helpmeUpdate.bo")
	public String helpmeUpdateBoard(Board b, @RequestParam("upfile") MultipartFile[] upfiles,
	        HttpSession session, Model model) {
		session.removeAttribute("atlist");
		ArrayList<Attachment> list = new ArrayList<>();
	
		int result1 = 0;
		int result2 = 0;
		
		result1 = boardService.helpmeUpdateBoard(b);
	
		b = boardService.helpmeselectOne2(b.getBoardNo());

	
				
	    for (MultipartFile upfile : upfiles) {
			if(!upfile.getOriginalFilename().equals("")) {
				String changeName = saveFile(upfile, session, "/resources/borderImage/");
				Attachment at = new Attachment();
				
				boardService.deleteAttachment(b.getBoardNo());
				

				at.setOriginName(upfile.getOriginalFilename());
				at.setChangeName("././resources/borderImage/" + changeName);
				at.setFilePath("././resources/borderImage/");
	            at.setBoardNo(b.getBoardNo());
	            
	            String fileName = upfile.getOriginalFilename();
	            if( upfile == upfiles[0]) {
	            	at.setFileLevel(1);
	            } else {
	            	at.setFileLevel(2);
	            }
	            
	            list.add(at);
				}
		}
	    
	   
	    Attachment at = new Attachment();
	    for (Attachment attachment : list) {
	    	
	        at = attachment;
	        boardService.helpmeAttachment(at);
	    }
	
		if(result1 > 0 ) {
			if(b.getBoardType() == 2) {		
				session.setAttribute("alertMsg", "게시글 수정 성공");
				session.setAttribute("b", b);
				return "redirect:/helpmeList.bo";
			}else {
				session.setAttribute("alertMsg", "게시글 수정 성공");
				session.setAttribute("b", b);
				return "redirect:/helpList.bo";

			}
			
		} else {
			model.addAttribute("errorMsg", "게시글 수정 실패");
			return "common/errorPage";
		}
	    }
          
	
	//도와주세요 게시글 삭제
	@RequestMapping(value="helpmeDelete.bo")
	public String helpmeDeleteBoard(int boardNo, String filePath, HttpSession session, Model model) {
			
		int result = boardService.helpmeDeleteBoard(boardNo);
		
		if(result > 0) {
			if(!filePath.equals("")) {
				new File(session.getServletContext().getRealPath(filePath)).delete();
			}
			session.setAttribute("alertMsg", "게시글 삭제 성공");
			return "redirect:/helpmeList.bo";
		} else {
			model.addAttribute("errorMsg", "게시글 삭제 실패");
			return "common/errorPage";
		}
	}
	
	//도와주세요 날짜순으로 보이게 하는 리스트
	@RequestMapping(value = "helpmeDateList", method = RequestMethod.GET)
	public ModelAndView helpmeDateList(@RequestParam(value="cpage", defaultValue="1") int currentPage, Board b, ModelAndView mv) {
		int listCount = boardService.helpmeDateCheckCount();

		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 5, 8);

		ArrayList<Board> dateList = boardService.helpmeDateCheck(b, pi);
	    
		ArrayList<Category> cList = boardService.selectCategoryList();
		
		mv.addObject("list", dateList);
		mv.addObject("pi", pi);
		mv.addObject("mType", "helpmeDateList");
		mv.addObject("cList", cList);
		mv.setViewName("board/requestBoardList");
		mv.addObject("listCount", listCount);	
		return mv;
	}
	
	 //도와주세요 조회순 리스트 컨트롤러
	 @RequestMapping(value = "helpmeReferenceList", method = RequestMethod.GET)
	 public ModelAndView helpmeReferenceList(@RequestParam(value="cpage", defaultValue="1") int currentPage, Board b, ModelAndView mv) {
		 int listCount = boardService.helpmeReferenceCount();
		 
		 PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 5, 8);

	     ArrayList<Board> referenceList = boardService.helpmeReference(b, pi);
	     
	     ArrayList<Category> cList = boardService.selectCategoryList();
	     
	     mv.addObject("list", referenceList);
	     mv.addObject("pi", pi);
	     mv.addObject("mType", "helpmeReferenceList");
	     mv.addObject("cList", cList);
	     mv.addObject("listCount", listCount);
	     mv.setViewName("board/requestBoardList");

	     return mv;
	 }
	 
	//신고하기 리스트
	@RequestMapping(value="reportList.rp")
		public String reportList(HttpSession session) {		

		ArrayList<Report> list = boardService.selectReport();

		session.setAttribute("list", list);
		
		ArrayList<Report> endlist = boardService.selectEndReport();

		session.setAttribute("endlist", endlist);
		return "myPage/viewReport";
		}
	
	//신고하기
	@RequestMapping(value="reportComment.rp")
	public String reportComment(HttpSession session, Report rt) {
		
		int result = boardService.reportUpdate(rt);

		if(result > 0) {
			session.setAttribute("alertMsg", "답변완료");
		}
		return "redirect:/reportList.rp";
	}
	
	//요청/결제 창으로 전환
	@RequestMapping(value = "paymentPage.pay")
	public String paymentPage() {
		return "board/paymentPage";
	}
	
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
