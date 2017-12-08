
package com.aldb.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller

public class ImageCodeController {

	private ByteArrayInputStream inputStream;

	public ByteArrayInputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(ByteArrayInputStream inputStream) {
		this.inputStream = inputStream;
	}
	@RequestMapping(value="/imageCode")
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		int width = 65, height = 20;
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		Random random = new Random();
		g.fillRect(0, 0, width, height);

		g.setFont(new Font("Times New Roman", Font.PLAIN, 18));
		g.setColor(getRandColor(160, 200));
		for (int i = 0; i < 3; i++) {
			g.drawLine(0, height / 2 + i, 100, height / 1);
		}

		StringBuffer sRand = new StringBuffer();
		for (int i = 0; i < 4; i++) {
			String rand = getRandomChar();
			sRand.append(rand);
			g.setColor(new Color(20 + random.nextInt(110), 20 + random.nextInt(110), 20 + random.nextInt(110)));
			g.drawString(rand.toLowerCase(), 13 * i + 6, 16);
		}
		 HttpSession session = request.getSession();
		 session.setAttribute("randomImg", sRand.toString().toLowerCase());// 存进session,用于验证
		g.dispose();
		try {
			ByteArrayOutputStream output = new ByteArrayOutputStream();
			ImageOutputStream imageOut = ImageIO.createImageOutputStream(output);
			ImageIO.write(image, "JPEG", imageOut);
			imageOut.close();
			ByteArrayInputStream input = new ByteArrayInputStream(output.toByteArray());
			this.setInputStream(input);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}

	private Color getRandColor(int fc, int bc) {
		Random random = new Random();
		if (fc > 255)
			fc = 255;
		if (bc > 255)
			bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}

	private static String getRandomChar() {
		int rand = (int) Math.round(Math.random() * 2);
		long itmp = 0;
		char ctmp = '\u0000';
		switch (rand) {
		case 1:
			itmp = Math.round(Math.random() * 25 + 65);
			ctmp = (char) itmp;
			return String.valueOf(ctmp);
		case 2:
			itmp = Math.round(Math.random() * 25 + 97);
			ctmp = (char) itmp;
			return String.valueOf(ctmp);
		default:
			itmp = Math.round(Math.random() * 9);

		}
		return String.valueOf(itmp);
	}
}
