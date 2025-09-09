package dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.manage.LectureManageDTO;
import util.DBHelper;
import util.Sql;
/*
 * 날짜 :
 * 이름 : 우지희
 * 내용 : 강의등록
 */

public class manageDAO extends DBHelper{
	
	private final static manageDAO INSTANCE = new manageDAO();
	public static manageDAO getInstance() {
		return INSTANCE;
	}
	private manageDAO() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void insertLecture(LectureManageDTO dto) {
		
		try {
			conn = getConnection();
	        psmt = conn.prepareStatement(Sql.REGISTER_LECTURE);
	        psmt.setInt(1, dto.getLecNo());
	        psmt.setString(2, dto.getLenName());
	        psmt.setString(3, dto.getCategory());
	        psmt.setString(4, dto.getGrade());
	        psmt.setString(5, dto.getSemester());
	        psmt.setString(6, dto.getCredit());
	        psmt.setString(7, dto.getDescription());
	        psmt.setString(8, dto.getStart_date());
	        psmt.setString(9, dto.getEnd_date());
	        psmt.setString(10, dto.getStart_time());
	        psmt.setString(11, dto.getEnd_time());
	        psmt.setString(12, dto.getDay_of_week());
	        psmt.setString(13, dto.getEvaluation());
	        psmt.setString(14, dto.getTextbook());
	        psmt.setString(15, dto.getClassroom());
	        psmt.setString(16, dto.getMax_enrollment());

	        psmt.executeUpdate();
	        closeAll();
	    } catch (Exception e) {
	        logger.error(e.getMessage());
		}

	}
	public int getNextSequence(String deptCode, String year, String semester) {
	    
		int sequence = 1;
	    try {
	        conn = getConnection();
	        psmt = conn.prepareStatement(Sql.GET_NEXT_SEQUENCE);
	        psmt.setString(1, deptCode + year.substring(2) + semester + "%");
	        
	        rs = psmt.executeQuery();
	        if (rs.next()) {
	            sequence = rs.getInt(1);
	        }
	        closeAll();
	    } catch (Exception e) {
	        logger.error(e.getMessage());
	    }
	    return sequence;
	}
	public LectureManageDTO selectLecture(int lecNo) {
		return null;
	}
	public List<LectureManageDTO> selectAllLecture() {
		
		List<LectureManageDTO> dtoList = new ArrayList<LectureManageDTO>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.SELECT_ALL_TB_LECTURE);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				LectureManageDTO dto = new LectureManageDTO();
				dto.setLecNo(rs.getInt("lec_no"));
	            dto.setLenName(rs.getString("len_name"));
	            dto.setCategory(rs.getString("category"));
	            dto.setGrade(rs.getString("grade"));
	            dto.setSemester(rs.getString("semester"));
	            dto.setCredit(rs.getString("credit"));
	            dto.setDescription(rs.getString("description"));
	            dto.setStart_date(rs.getString("start_date"));
	            dto.setEnd_date(rs.getString("end_date"));
	            dto.setStart_time(rs.getString("start_time"));
	            dto.setEnd_time(rs.getString("end_time"));
	            dto.setDay_of_week(rs.getString("day_of_week"));
	            dto.setEvaluation(rs.getString("evaluation"));
	            dto.setTextbook(rs.getString("textbook"));
	            dto.setClassroom(rs.getString("classroom"));
	            dto.setMax_enrollment(rs.getString("max_enrollment"));

	            dtoList.add(dto);
	            closeAll();
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dtoList;
	}
	public void updateLecture(LectureManageDTO dto) {}
	public void deleteLecture(int lecno) {}

}
