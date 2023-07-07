package kr.co.coward.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.coward.member.model.service.MemberService;
import kr.co.coward.member.model.vo.Member;

@Controller
@RequestMapping("/member")
@SessionAttributes({ "loginMember" })
public class FindDevController {

	@Autowired
	MemberService memberService;

	// Note: 개발자 찾기 진입 시 GET 요청
	@GetMapping("/findDev")
	public String findDev(Model model, HttpSession session) {

		Member loginMember = (Member) session.getAttribute("loginMember");

		// 개발자 리스트 조회
		int pageSize = 12; // 한 페이지당 가져올 데이터 개수
		int offset = 0;

		List<Member> devList = memberService.getFindDevPage(pageSize, offset, "all");

		// 로그인한 회원일 경우 좋아요 한 회원 목록 조회
		if (loginMember != null) {
			List<Integer> likedList = memberService.getLikeList(loginMember.getMemberNo());

			model.addAttribute("likedList", likedList);
		}

		// 개발자 리스트 적재
		model.addAttribute("devList", devList);

		return "find-developer";
	}

	// Note: 개발자 찾기 무한 스크롤 & 필터링 시 Ajax 요청
	@ResponseBody
	@PostMapping("/findDev")
	public List<Member> findDevAjax(Model model, @RequestParam int page, @RequestParam String filter,
			HttpSession session) {

		Member loginMember = (Member) session.getAttribute("loginMember");

		int pageSize = 6; // 한 페이지당 가져올 데이터 개수
		int offset = page * pageSize; // OFFSET 계산

		// 개발자 리스트 조회
		List<Member> devList = memberService.getFindDevPage(pageSize, offset, filter);

		// 로그인한 회원일 경우 좋아요 한 회원 목록 조회
		if (loginMember != null) {
			List<Integer> likedList = memberService.getLikeList(loginMember.getMemberNo());
		}

		return devList;
	}

	// Note: 개발자 찾기 무한 스크롤 & 필터링 시 Ajax 요청
	@ResponseBody
	@PostMapping("/likedList")
	public List<Integer> getLikedList(HttpSession session) {

		Member loginMember = (Member) session.getAttribute("loginMember");

		List<Integer> likedList = null;

		// 로그인한 회원일 경우 좋아요 한 회원 목록 조회
		if (loginMember != null) {
			likedList = memberService.getLikeList(loginMember.getMemberNo());
		}

		return likedList;
	}

	// Note: 개발자 찾기 좋아요 버튼 클릭시 수행
	@ResponseBody
	@PostMapping("/likeDev")
	public int likeDev(@RequestParam int cMemberNo, @RequestParam int pMemberNo, @RequestParam String flag) {

		int result = memberService.likeDev(cMemberNo, pMemberNo, flag);

		return result;
	}
}
