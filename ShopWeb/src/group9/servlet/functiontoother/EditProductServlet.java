package group9.servlet.functiontoother;
 
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import group9.bean.Sanpham;
import group9.util.DBUtils;
import group9.util.MyUtils;
 
@WebServlet(urlPatterns = { "/editProduct" })
public class EditProductServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
  public EditProductServlet() {
      super();
  }
 
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      Connection conn = MyUtils.getStoredConnection(request);
 
      String code = (String) request.getParameter("m_idC");
 
      Sanpham product = null;
 
      String errorString = null;
 
      try {
          product = DBUtils.findSanpham(conn, code);
      } catch (SQLException e) {
          e.printStackTrace();
          errorString = e.getMessage();
      }
 
      // Không có lỗi.
      // Sản phẩm không tồn tại để edit.
      // Redirect sang trang danh sách sản phẩm.
      if (errorString != null && product == null) {
          response.sendRedirect(request.getServletPath() + "/productList");
          return;
      }
 
      // Lưu thông tin vào request attribute trước khi forward sang views.
      request.setAttribute("errorString", errorString);
      request.setAttribute("product", product);
 
      RequestDispatcher dispatcher = request.getServletContext()
              .getRequestDispatcher("/WEB-INF/views/editProductView.jsp");
      dispatcher.forward(request, response);
 
  }
 
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      doGet(request, response);
  }
 
}