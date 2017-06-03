package group9.servlet.functiontoother;
 
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import group9.bean.Sanpham;
import group9.util.DBUtils;
import group9.util.MyUtils;
 
@WebServlet(urlPatterns = { "/productList" })
public class ProductListServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
  public ProductListServlet() {
      super();
  }
 
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      Connection conn = MyUtils.getStoredConnection(request);
 
      String errorString = null;
      List<Sanpham> list = null;
      try {
          list = DBUtils.querySanpham(conn);
      } catch (SQLException e) {
          e.printStackTrace();
          errorString = e.getMessage();
      }
      // Lưu thông tin vào request attribute trước khi forward sang views.
      request.setAttribute("errorString", errorString);
      request.setAttribute("productList", list);
      
      // Forward sang /WEB-INF/views/productListView.jsp
      RequestDispatcher dispatcher = request.getServletContext()
              .getRequestDispatcher("/WEB-INF/views/productListView.jsp");
      dispatcher.forward(request, response);
  }
 
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      doGet(request, response);
  }
 
}