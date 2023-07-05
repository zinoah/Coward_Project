package kr.co.coward.contest.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import kr.co.coward.contest.model.service.ContestService;
import kr.co.coward.contest.model.vo.Contest;
import kr.co.coward.member.model.vo.Member;

@Controller
@RequestMapping("/contest")
@SessionAttributes({ "loginMember" })
public class ContestController {

	private Logger logger = LoggerFactory.getLogger(ContestController.class);

	@Autowired
	private ContestService service;

	/**
	 * 공모전 메인페이지로 이동
	 * 
	 * @return
	 */
	@RequestMapping("/main")
	public String contestMain(Model model) {

		// 인기있는 공모전 슬라이더 10개
		List<Contest> contestPopularList = service.getContestList("popular");

		// 전체 공모전
		List<Contest> resultList = service.getContestList("all");

		List<Contest> contestList = new ArrayList<>();

		for (Contest contest : resultList) {

			String[] temp = contest.getSkill().split(",");
			List<String> skillList = Arrays.asList(temp);
			contest.setSkillList(skillList);

		}

		contestList.addAll(resultList);

		model.addAttribute("contestPopularList", contestPopularList);
		model.addAttribute("contestList", contestList);

		return "contest/contest-main";
	}

	/**
	 * 필터별 공모전 List 조회
	 * 
	 * @return
	 */
	@ResponseBody
	@GetMapping("/filterList")
	public List<Contest> filterContestList(@RequestParam String parameter) {

		List<Contest> resultList = service.filterContestList(parameter);

		// 리스트에 담긴 스킬리스트 리스트화

		List<Contest> contestList = new ArrayList<>();

		for (Contest contest : resultList) {

			String[] temp = contest.getSkill().split(",");
			List<String> skillList = Arrays.asList(temp);
			contest.setSkillList(skillList);

		}

		contestList.addAll(resultList);

		return contestList;

	}

	/**
	 * 공모전 개최 페이지로 이동
	 * 
	 * @return
	 */
	@RequestMapping("/create")
	public String contestCreate() {

		return "contest/contest-create";
	}

	/**
	 * 공모전 개최
	 * 
	 * @param map
	 * @return
	 */
	@PostMapping("/create")
	public String contestCreate(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam Map<String, Object> paramMap, String[] skill, RedirectAttributes ra,
			@RequestParam("thumbnail") MultipartFile uploadImage, HttpServletRequest req) throws IOException {

		String skillList = String.join(",", skill);

		// 웹 접근경로
		String webPath = "resources/assets/images/contest-thumbnail/";

		// 서버 저장 폴더 경로
		String folderPath = req.getSession().getServletContext().getRealPath(webPath);

		paramMap.put("webPath", webPath);
		paramMap.put("folderPath", folderPath);
		paramMap.put("skill", skillList);
		paramMap.put("thumbnail", uploadImage);
		paramMap.put("memberNo", loginMember.getMemberNo());

		int contestNo = service.contestCreate(paramMap);

		String message = null;
		String path = null;

		if (contestNo > 0) {
			message = "공모전 개최가 완료되었습니다.";

			path = "../contest/detail/" + contestNo;

		} else {
			message = "공모전 개최를 실패하였습니다.";
			path = "create";
		}
		ra.addFlashAttribute("message", message);

		return "redirect:" + path;
	}

	/**
	 * 공모전 상세조회
	 * 
	 * @param contestNo
	 * @param model
	 * @return
	 */
	@GetMapping("/detail/{contestNo}")
	public String contestDetail(@ModelAttribute("loginMember") Member loginMember,
			@PathVariable("contestNo") int contestNo, Model model) {

		Contest contest = service.contestDetail(contestNo);

		String[] temp = contest.getSkill().split(",");

		List<String> skillList = Arrays.asList(temp); // 배열 -> List 변환

		model.addAttribute("contest", contest);
		model.addAttribute("skillList", skillList);
		model.addAttribute("loginMember", loginMember);

		return "contest/contest-detail";
	}

	/**
	 * 북마크 카운트
	 * 
	 * @param bookmark
	 * @param loginMember
	 * @return
	 */
	@ResponseBody
	@GetMapping("/bookmark")
	public int bookmarkCount(@RequestParam Map<String, Object> map, @ModelAttribute("loginMember") Member loginMember) {

		System.out.println(map);
		int memberNo = loginMember.getMemberNo();
		int bookmarkCount = Integer.parseInt(map.get("bookmarkCount").toString());
		int contestNo = Integer.parseInt(map.get("contestNo").toString());

		System.out.println("bookmark :" + bookmarkCount);
		System.out.println("contestNo :" + contestNo);

		Contest contest = new Contest();

		contest.setBookmarkCount(bookmarkCount);
		contest.setMemberNo(memberNo);
		contest.setContestNo(contestNo);

		int bookmark = service.bookmarkCount(contest);

		System.out.println(bookmark);

		return bookmark;

	}

	// 맞춤 공모전 페이지로 이동

	@GetMapping("/recommend")
	public String contestRecommend() {

		return "contest/contest-recommend";
	}

	/**
	 * 맞춤 공모전
	 * 
	 * @param contestNo
	 * @param model
	 * @return
	 * 
	 */

	@ResponseBody
	@PostMapping("/recommend")
	public String getRecommendContest(@RequestParam int typeNo) {

		logger.info("컨트롤러 수행");
		logger.info("Received typeNo: " + typeNo);

		List<Contest> recommendList = service.getRecommendList(typeNo);

		logger.info("recommendContest() 메서드 실행 결과: " + recommendList);

		return new Gson().toJson(recommendList);

	}

	// 공모전 우승자 선정 페이지로 이동

	@GetMapping("/contestWinnerSelect")
	public String contestManagement(@ModelAttribute("loginMember") Member loginMember, Model model) {

		return "contest/contest-winnerSelect";
	}

	/**
	 * 공모전 참가 동의페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping("/attendAgree/{contestNo}")
	public String contestAttendAgree(@PathVariable("contestNo") int contestNo, Model model) {

		Contest contest = service.contestDetail(contestNo);

		model.addAttribute("contest", contest);

		return "contest/contest-attend-agree";
	}

	/**
	 * 공모전 참가 양식페이지 이동
	 * 
	 * @param contestNo
	 * @param model
	 * @return
	 */
	@RequestMapping("/attendForm/{contestNo}")
	public String contestAttendForm(@PathVariable("contestNo") int contestNo, Model model) {

		Contest contest = service.contestDetail(contestNo);

		model.addAttribute("contest", contest);
		return "contest/contest-attend-form";
	}

	@PostMapping("/attendForm")
	public String contestAttendForm(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam Map<String, Object> paramMap, String[] skill, RedirectAttributes ra,
			@RequestParam("pptFile") MultipartFile uploadFile, HttpServletRequest req) throws IOException {

		String skillList = String.join(",", skill);

		// 웹 접근경로
		String webPath = "resources/assets/file/";

		// 서버 저장 폴더 경로
		String folderPath = req.getSession().getServletContext().getRealPath(webPath);

		paramMap.put("webPath", webPath);
		paramMap.put("folderPath", folderPath);
		paramMap.put("skill", skillList);
		paramMap.put("pptFile", uploadFile);
		paramMap.put("memberNo", loginMember.getMemberNo());

		int result = service.contestAttendForm(paramMap);

		String message = null;
		String path = null;

		if (result > 0) {
			message = "참가신청 완료!!";

			path = "../contest/detail/" + result;

		} else {
			message = "참가신청 실패하였습니다.";
			path = "/attendForm/" + result;
		}
		ra.addFlashAttribute("message", message);

		return "redirect:" + path;
	}

}
