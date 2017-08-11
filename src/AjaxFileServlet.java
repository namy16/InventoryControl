import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;

import dao.UserDaoImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@MultipartConfig
public class AjaxFileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    FileItem fileItem;
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        //out.println("Hello<br/>");

        boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
        if (!isMultipartContent) {
            System.out.println("You are not trying to upload<br/>");
            return;
        }
        System.out.println("You are trying to upload<br/>");

        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        try {
            List<FileItem> fields = upload.parseRequest(request);
            //out.println("Number of fields: " + fields.size() + "<br/><br/>");
            Iterator<FileItem> it = fields.iterator();
            if (!it.hasNext()) {
                System.out.println("No fields found");
                return;
            }
        //    out.println("<table border=\"1\">");
            while (it.hasNext()) {
          //      out.println("<tr>");
                fileItem = it.next();
                boolean isFormField = fileItem.isFormField();
                if (isFormField) {
                    System.out.println("<td>regular form field</td><td>FIELD NAME: " + fileItem.getFieldName()+"  name:  "+fileItem.getName()
                //            "<br/>STRING: + fileItem.getString() " +"<br/>NAME: " + fileItem.getName()+""+
                  //          "<br/>SIZE (BYTES): " + fileItem.getSize()
                    //                +"<br/>TO STRING: " + fileItem.toString()
                    );
                    InputStream image_is = fileItem.getInputStream();

                    //write all content from above InputStream to a file
            //        out.println("</td>");



                } else {
                    System.out.println("<td>file form field</td><td>FIELD NAME: " + fileItem.getFieldName()+"  nammm:  "+fileItem.getName()
                                    //"<br/>STRING: " + fileItem.getString() +
                       //             "<br/>NAME: " + fileItem.getName()+"<br/>STRING: " + fileItem.getString()+
                            //"<br/>CONTENT TYPE: " + fileItem.getContentType() +
                         //   "<br/>SIZE (BYTES): " + fileItem.getSize()
                           // +"<br/>TO STRING: " + fileItem.toString()
                    );
              //      out.println("</td>");
                }

             //   String s=pic.substring(11);
              //  System.out.println(s);

                //out.println("</tr>");
            }

           // out.println("</table>");
            //String s=fileItem.getString();
            //String j =s.substring(12);
            String pic =fileItem.getName();
            System.out.println(pic);
            if(pic!=null){
            String root=getServletContext().getRealPath("images");
            File abc=new File(root + "/" +pic);
            fileItem.write(abc);
            out.println("success");

            }
            else {
                out.println("fail");
            }
            //response.sendRedirect("INSERT_IMAGE.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}