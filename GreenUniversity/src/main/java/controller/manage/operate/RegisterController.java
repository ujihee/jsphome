package controller.manage.operate;

import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import dto.manage.LectureManageDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ManageService;

/*
 * 날짜 :
 * 이름 : 우지희
 * 내용 : 강의등록
 */

@WebServlet("/manage/operate/register.do")
public class RegisterController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private ManageService manageService = ManageService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/manage/operate/register.jsp");
	dispatcher.forward(req, resp);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
        

        try {
            // 폼 데이터 받기
            String lenName = req.getParameter("lenName");
            String college = req.getParameter("college");
            String department = req.getParameter("department");
            String grade = req.getParameter("grade");
            String credit = req.getParameter("credit");
            String category = req.getParameter("category");
            String professor = req.getParameter("professor");
            String description = req.getParameter("description");
            String startDate = req.getParameter("start_date");
            String endDate = req.getParameter("end_date");
            String startTime = req.getParameter("start_time");
            String endTime = req.getParameter("end_time");
            String[] dayArray = req.getParameterValues("day_of_week");
            String evaluation = req.getParameter("evaluation");
            String textbook = req.getParameter("textbook");
            String classroom = req.getParameter("classroom");
            String maxEnrollment = req.getParameter("max_enrollment");
            
            // 요일 배열을 문자열로 변환
            String dayOfWeek = "";
            if (dayArray != null && dayArray.length > 0) {
                dayOfWeek = String.join(",", dayArray);
            }
            
            // 과목코드 자동 생성
            int lecNo = generateLecNo(department);
            
            // 학기 정보 설정
            String semester = getCurrentSemester();
            
            // DTO 객체 생성 및 데이터 설정
            LectureManageDTO dto = new LectureManageDTO();
            dto.setLecNo(lecNo);
            dto.setLenName(lenName);
            dto.setCategory(category);
            dto.setGrade(grade);
            dto.setSemester(semester);
            dto.setCredit(credit);
            dto.setDescription(description);
            dto.setStart_date(startDate);
            dto.setEnd_date(endDate);
            dto.setStart_time(startTime);
            dto.setEnd_time(endTime);
            dto.setDay_of_week(dayOfWeek);
            dto.setEvaluation(evaluation);
            dto.setTextbook(textbook);
            dto.setClassroom(classroom);
            dto.setMax_enrollment(maxEnrollment);
            
            manageService.registerLecture(dto);
            
            // 성공 메시지와 함께 리다이렉트
            resp.sendRedirect("/manage/operate/list.do?msg=success");
            
        } catch (Exception e) {
            e.printStackTrace();
            // 에러 처리
            req.setAttribute("error", "강의 등록 중 오류가 발생했습니다: " + e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/manage/operate/register.jsp").forward(req, resp);
        }
    }
    
    // 과목코드 자동 생성 메소드
    private int generateLecNo(String department) {
        // 학과코드 + 연도 + 학기 + 순번 조합으로 생성
        String deptCode = getDepartmentCode(department);
        String year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
        String semester = getCurrentSemester();
        
        int sequence = manageService.getNextSequence(deptCode, year, semester);
        
        String lecNoStr = deptCode + year.substring(2) + semester + String.format("%02d", sequence);
        return Integer.parseInt(lecNoStr);
    }
    
    // 학과 코드 매핑
    private String getDepartmentCode(String department) {
        Map<String, String> deptMap = new HashMap<>();
        deptMap.put("컴퓨터공학과", "30");
        deptMap.put("전자공학과", "31");
        deptMap.put("국어국문학과", "10");
        deptMap.put("영어영문학과", "11");
        // 필요한 학과 코드들 추가
        
        return deptMap.getOrDefault(department, "00");
    }
    
    // 현재 학기 반환
    private String getCurrentSemester() {
        int month = Calendar.getInstance().get(Calendar.MONTH) + 1;
        return (month >= 3 && month <= 8) ? "1" : "2";
        }
	
	}


