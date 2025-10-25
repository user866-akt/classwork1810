package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;

@WebServlet("/upload")
@MultipartConfig(maxFileSize = 5*1024*1024, maxRequestSize = 10*1024*1024)
public class FileUploadServlet extends HttpServlet {

    public static final String FILE_PREFIX = "tmp";
    public static final Integer DIR_COUNT = 100;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Part part = req.getPart("file");
        String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        File file = new File(FILE_PREFIX + File.separator + Math.abs(filename.hashCode() % DIR_COUNT) + File.separator + filename);
        file.getParentFile().mkdirs();
        try (InputStream content = part.getInputStream();
             FileOutputStream outputStream = new FileOutputStream(file)) {
            byte[] buffer = new byte[8192];
            int bytesRead;
            while ((bytesRead = content.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }
        }
    }
}