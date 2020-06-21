package com.agricolario.servlet;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.Hashtable;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.agricolario.functionality.GeneratoreQR;
import com.agricolario.functionality.codeQr;

import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;


import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
/**
 * Servlet implementation class operazioneTracciabilita
 */
@WebServlet("/operazioneTracciabilita")
public class operazioneTracciabilita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public operazioneTracciabilita() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Sono stata chimata");
		String text = request.getParameter("text");
		codeQr c=new codeQr();
			
			
			/*
			c.generateQRCodeImage(text, 350, 350,getServletContext().getContextPath());
			getServletContext().getContextPath();
		*/
		

				Hashtable<EncodeHintType, ErrorCorrectionLevel> hintMap = new Hashtable<>();
		hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
		QRCodeWriter qrCodeWriter = new QRCodeWriter();
	
		
		try {
			BitMatrix byteMatrix;
			byteMatrix = qrCodeWriter.encode("ok", BarcodeFormat.QR_CODE, 350, 350, hintMap);
			int matrixWidth = byteMatrix.getWidth();
			BufferedImage image = new BufferedImage(matrixWidth, matrixWidth, BufferedImage.TYPE_INT_RGB);
		   	File qrFile = new File("../DIOCANE.png");
				    
				    image.createGraphics();

					Graphics2D graphics = (Graphics2D) image.getGraphics();
					graphics.setColor(Color.WHITE);
					graphics.fillRect(0, 0, matrixWidth, matrixWidth);
					// Paint and save the image using the ByteMatrix
					graphics.setColor(Color.BLACK);

					for (int i = 0; i < matrixWidth; i++) {
						for (int j = 0; j < matrixWidth; j++) {
							if (byteMatrix.get(i, j)) {
								graphics.fillRect(i, j, 1, 1);
							}
						}
					}
					ImageIO.write(image, "png", qrFile);
		} catch (WriterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// Make the BufferedImage that are to hold the QRCode
		
			    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	
	}
	

}
