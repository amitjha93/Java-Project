package com.amit.QrCodeGenerator;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;

public class QrCodeGenerator {

	public static void main(String[] args)throws Exception {
		String s="Amit-Kumar-Jha:Jaideopatti@darbhanga";
		ByteArrayOutputStream baos=QRCode.from(s).withSize(550,550).to(ImageType.JPG).stream();
		File f=new File("QRCODE.jpg");
		FileOutputStream fos=new FileOutputStream(f);
		fos.write(baos.toByteArray());
		fos.flush();
		System.out.println("Yes Operation done");
	}

}
