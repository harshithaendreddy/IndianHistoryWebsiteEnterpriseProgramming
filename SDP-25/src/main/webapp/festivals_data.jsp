<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Festival Details</title>
</head>
<body>
<%
    String festival = request.getParameter("festival");
    if (festival != null) {
        // Simulate fetching data from a database or other source
        if (festival.equalsIgnoreCase("Diwali")) {
            out.println("<h2>Diwali</h2>");
            out.println("<img src='https://th.bing.com/th/id/OIP.4pjWY-UUbMyAnZWLR_sAAQHaFJ?rs=1&pid=ImgDetMain' alt='Diwali' style='width: 200px; height: auto;'>");
            out.println("<p>Diwali, also known as Deepavali, is the Hindu festival of lights celebrated every autumn in the northern hemisphere (spring in southern hemisphere). One of the most popular festivals of Hinduism, Diwali symbolizes the spiritual victory of light over darkness, good over evil, and knowledge over ignorance.</p>");
        } else if (festival.equalsIgnoreCase("Holi")) {
            out.println("<h2>Holi</h2>");
            out.println("<img src='https://wallpapercave.com/wp/wp5549199.jpg' alt='Holi' style='width: 200px; height: auto;'>");
            out.println("<p>Holi is a popular ancient Hindu festival, originating from the Indian subcontinent. It is celebrated predominantly in India and Nepal but has also spread to other regions of Asia and parts of the Western world through the diaspora from the Indian subcontinent.</p>");
        } else if (festival.equalsIgnoreCase("Eid")) {
            out.println("<h2>Eid</h2>");
            out.println("<img src='https://www.geo.tv/assets/uploads/updates/2023-06-20/494486_144048_updates.jpg' alt='Eid' style='width: 200px; height: auto;'>");
            out.println("<p>Eid al-Fitr, also called the 'Festival of Breaking the Fast', is a religious holiday celebrated by Muslims worldwide that marks the end of the month-long dawn-to-sunset fasting of Ramadan. It's a day of joy, thanksgiving, and feasting.</p>");
        } else if (festival.equalsIgnoreCase("Christmas")) {
            out.println("<h2>Christmas</h2>");
            out.println("<img src='https://th.bing.com/th/id/R.e7e3aaf2d426ffd854a20d8d9348de5b?rik=MEo9I1AEn9KFXQ&riu=http%3a%2f%2fmedia2.intoday.in%2findiatoday%2fimages%2fPhoto_gallery%2fchristmas_6_122514055225.jpg&ehk=O55ELvrrhIm4bLGzGS1G4iawkOFTx%2fPCOrnXcqHMX6o%3d&risl=&pid=ImgRaw&r=0' alt='Christmas' style='width: 200px; height: auto;'>");
            out.println("<p>Christmas is an annual festival commemorating the birth of Jesus Christ, observed primarily on December 25 as a religious and cultural celebration among billions of people around the world.</p>");
        } else if (festival.equalsIgnoreCase("Navratri")) {
            out.println("<h2>Navratri</h2>");
            out.println("<img src='https://th.bing.com/th/id/OIP.h5Kpa2-3py_jsSvW-RcghAHaEK?rs=1&pid=ImgDetMain' alt='Navratri' style='width: 200px; height: auto;'>");
            out.println("<p>Navratri, meaning 'nine nights', is a Hindu festival celebrated in the autumn every year. It is observed for different reasons and celebrated differently in various parts of the Indian subcontinent.</p>");
        } else {
            out.println("<h2>No festival details found for '" + festival + "'</h2>");
        }
    } else {
        out.println("<h2>No festival selected</h2>");
    }
%>
</body>
</html>
