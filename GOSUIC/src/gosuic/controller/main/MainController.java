package gosuic.controller.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	// ȸ������ �Է���������
	@RequestMapping("/joinform.sp")
	public String insertpage() {
		System.out.println("ȸ������ ������ �̵���");
		return "/WEB-INF/view/joinform.jsp";
	}

	// �α��� ��������
	@RequestMapping("/loginform.sp")
	public String loginForm() {
		System.out.println("�α���������");
		return "/WEB-INF/view/loginform.jsp";
	}

	// ���� ��������
	@RequestMapping("/mainform.sp")
	public String mainForm() {
		System.out.println("���� ȭ������");
		return "/WEB-INF/view/main.jsp";
	}

	// �Ź� ����Ʈ ��������
	@RequestMapping("/list2.sp")
	public String listPage(HttpServletRequest request) {
		System.out.println("�Ź� ����Ʈ ȭ������");
		return "/WEB-INF/view/list.jsp";
	}
	
	//�α����� �Ź� ����Ʈ������
	@RequestMapping("/list3.sp")
	public ModelAndView BeforeloginlistPage(HttpSession session, Model model) {
		System.out.println("����Ʈ �˻�â ����");
		System.out.println(session.getAttribute("userEmail"));
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("userEmail") != null) {
			mav.setViewName("redirect:/list.sp");
		} else {
			mav.setViewName("redirect:/index.sp");
		}
		return mav;
	}
	
	
	// �󼼸Ź� ��������
		@RequestMapping("/detail.sp")
		public String detailProperty() {
			System.out.println("�ε��� ȭ������");
			return "/WEB-INF/view/property.jsp";
		}

	// �ε��� ��������
	@RequestMapping("/index.sp")
	public String indexPage() {
		System.out.println("�ε��� ȭ������");
		return "/WEB-INF/view/index.jsp";
	}

	// �α����� ����������
	@RequestMapping("/afterlogin.sp")
	public String afterlogin() {
		System.out.println("�α����� ����");
		return "/WEB-INF/view/afterlogin.jsp";
	}

	// �ּ� �˻���ư ����
	@RequestMapping("/findaddress.sp")
	public ModelAndView Findaddress(HttpSession session, Model model) {
		System.out.println("�ּ� �˻�â ����");
		System.out.println(session.getAttribute("userEmail"));
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("userEmail") != null) {
			mav.setViewName("redirect:/addwindow.sp");
		} else {
			mav.setViewName("redirect:/index.sp");
		}
		return mav;
	}
	
	//�ּ� �˻�â �̵�
	@RequestMapping("/addwindow.sp")
	public String addwindow() {
		System.out.println("�ּ� �˻�â ���");
		return "/WEB-INF/view/findaddress.jsp";
	}
}// class end
