import Counter.StaticCounter;
import Field.Field;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "MoveServlet", value = "/move")
public class MoveServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Field field = (Field) session.getAttribute("field");
        int currentCell = -1;
        if (session.getAttribute("current-cell") != null) {
            currentCell = (int) session.getAttribute("current-cell");
        }
        int cellToMove = Integer.parseInt(request.getParameter("cell"));

        if (currentCell == -1 || field.allowedToMove(currentCell, cellToMove)){
            field.addToMap(cellToMove, StaticCounter.count++);
            session.setAttribute("current-cell", cellToMove);
            session.setAttribute("available-cells", field.listOfAvailableCells(cellToMove));
        }

        request.getRequestDispatcher("/start.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
