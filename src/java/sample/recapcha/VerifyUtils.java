/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.recapcha;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import javax.json.Json;
import javax.net.ssl.HttpsURLConnection;
import javax.json.JsonObject;
import javax.json.JsonReader;

/**
 *
 * @author minh tri
 */
public class VerifyUtils {

    public static final String SITE_VERIFY_URL = "https://www.google.com/recaptcha/api/siteverify";
    public static final String SITE_KEY = "6Lea6JghAAAAAJIVvUKFe9hgkNeKM7rFOglMouub";
    public static final String SECRET_KEY = "6Lea6JghAAAAAIGW81peAQpHReNnmGiSHhtzs-VV";

    public static boolean verify(String gRecaptchaResponse) {
        if (gRecaptchaResponse == null || gRecaptchaResponse.length() == 0) {
            return false;
        }

        try {
            URL verifyUrl = new URL(SITE_VERIFY_URL);
            // Mở một kết nối (Connection) tới URL trên.
            HttpsURLConnection conn = (HttpsURLConnection) verifyUrl.openConnection();
            // Thêm các thông tin Header vào Request chuẩn bị gửi tới server.
            conn.setRequestMethod("POST");
            conn.setRequestProperty("User-Agent", "Mozilla/5.0");
            conn.setRequestProperty("Accept-Language", "en-US,en;q=0.5");
            // Dữ liệu sẽ gửi tới Server.
            String postParams = "secret=" + SECRET_KEY + "&response=" + gRecaptchaResponse;
            // Send Request
            conn.setDoOutput(true);
            // Lấy Output Stream (Luồng đầu ra) của kết nối tới Server.
            // Ghi dữ liệu vào Output Stream, có nghĩa là gửi thông tin đến Server.
            OutputStream outStream = conn.getOutputStream();
            outStream.write(postParams.getBytes());

            outStream.flush();
            outStream.close();
            // Mã trả lời được trả về từ Server.
            int responseCode = conn.getResponseCode();
            System.out.println("\nSending 'POST' request to URL : " + SITE_VERIFY_URL);
            System.out.println("Post parameters : " + postParams);
            System.out.println("responseCode=" + responseCode);

            // Lấy Input Stream (Luồng đầu vào) của Connection
            // để đọc dữ liệu gửi đến từ Server.
            InputStream is = conn.getInputStream();

            JsonReader jsonReader = Json.createReader(is);
            JsonObject jsonObject = jsonReader.readObject();
            jsonReader.close();

            // ==> {"success": true}
            System.out.println("Response: " + jsonObject);

            boolean success = jsonObject.getBoolean("success");
            return success;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
