package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ExerciseDAO;
import model.Exercise;

/**
 * Servlet implementation class ExerciseServlet
 */
@WebServlet("/ExerciseServlet")
public class ExerciseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExerciseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String command = request.getParameter("command");
		ExerciseDAO exerciseDAO = new ExerciseDAO();
		switch(command){
		case "insert":
			Exercise exercise = new Exercise();
			exercise.setExercise_id(new java.util.Date().getTime());
			exercise.setExercise_name(request.getParameter("exercise_name"));
			exercise.setExercise_startdate(request.getParameter("exercise_startdate"));
			exercise.setExercise_starttime(request.getParameter("exercise_starttime"));
			exercise.setExercise_enddate(request.getParameter("exercise_enddate"));
			exercise.setExercise_endtime(request.getParameter("exercise_endtime"));
			exercise.setSection_id(Long.parseLong(request.getParameter("section_id")));
			exercise.setExersice_content(request.getParameter("exercise_content"));
			boolean f = exerciseDAO.insert(exercise);
			if(f)
				response.getWriter().write("Thêm bài tập thành công!");
			else
				/*response.getWriter().write(exercise.getExercise_id() +"~"+ exercise.getExercise_name()  +"~"+ 
						 exercise.getExersice_content() +"~"+ exercise.getExercise_startdate()
						 +"~"+ exercise.getExercise_starttime() +"~"+ exercise.getExercise_enddate() +"~"+ exercise.getExercise_endtime()
						 +"~"+ exercise.getSection_id());*/
				response.getWriter().write("Thêm bài tập không thành công!");
			break;
		}
	}

}
