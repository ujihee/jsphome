package dao;

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
		return null;
	}
	public void updateLecture(LectureManageDTO dto) {}
	public void deleteLecture(int lecno) {}

}
