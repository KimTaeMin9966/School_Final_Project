package net.koreate.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {

	public static String uploadFile(String originalName, String uploadPath, byte[] fileData) throws Exception {

		UUID uid = UUID.randomUUID();

		String savedName = uid.toString() + "_" + originalName;
		String path = calcPath(uploadPath);
		File file = new File(uploadPath + path, savedName);
		FileCopyUtils.copy(fileData, file);

		String formatName = originalName.substring(originalName.lastIndexOf(".") + 1);

		String uploadFileName = "";

		if (MediaUtils.getMediaType(formatName) != null) { uploadFileName = makeThumnail(uploadPath, path, savedName); }
		else { uploadFileName = makeIcon(uploadPath, path, savedName); }
		
		return uploadFileName;
	}

	public static String makeIcon(String uploadPath, String path, String savedName) {
		String iconName = uploadPath + path + File.separator + savedName;
		String name = iconName.substring(uploadPath.length()).replace(File.separatorChar, '/');
		
		return name;
	}

	public static String makeThumnail(String uploadPath, String path, String savedName) throws IOException {
		BufferedImage fileImage = ImageIO.read(new File(uploadPath + path, savedName));

		BufferedImage sourceImg = Scalr.resize(fileImage, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);

		String tumnail = uploadPath + path + File.separator + "s_" + savedName;
		File tumnFile = new File(tumnail);
		String formatName = savedName.substring(savedName.lastIndexOf(".") + 1);

		ImageIO.write(sourceImg, formatName.toUpperCase(), tumnFile);
		String name = tumnail.substring(uploadPath.length()).replace(File.separatorChar, '/');
		
		return name;
	}

	public static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();

		String yearPath = File.separator + cal.get(Calendar.YEAR);
		String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		mkDir(uploadPath, yearPath, monthPath, datePath);
		
		return datePath;
	}

	public static void mkDir(String uploadPath, String... paths) {
		if (new File(paths[paths.length - 1]).exists()) { return; }
		
		for (String path : paths) {
			File dirPath = new File(uploadPath + path);
			if (!dirPath.exists()) { dirPath.mkdir(); }
		}
	}
}
