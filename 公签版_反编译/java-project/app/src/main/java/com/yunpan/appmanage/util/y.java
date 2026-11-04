package com.yunpan.appmanage.util;

import fi.iki.elonen.NanoHTTPD;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class y {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f4155a = new HashMap();

    public static HashMap a() {
        HashMap map = f4155a;
        if (map.size() == 0) {
            map.put(".3gp", "video/3gpp");
            map.put(".apk", "application/vnd.android.package-archive");
            map.put(".apks", "application/vnd.android.package-archive");
            map.put(".apkm", "application/vnd.android.package-archive");
            map.put(".xapk", "application/vnd.android.package-archive");
            map.put(".asf", "video/x-ms-asf");
            map.put(".avi", "video/x-msvideo");
            map.put(".bin", "application/octet-stream");
            map.put(".bmp", "image/bmp");
            map.put(".c", "text/plain");
            map.put(".chm", "application/x-chm");
            map.put(".class", "application/octet-stream");
            map.put(".conf", "text/plain");
            map.put(".cpp", "text/plain");
            map.put(".json", "text/plain");
            map.put(".doc", "application/msword");
            map.put(".docx", "application/msword");
            map.put(".exe", "application/octet-stream");
            map.put(".gif", "image/gif");
            map.put(".gtar", "application/x-gtar");
            map.put(".gz", "application/x-gzip");
            map.put(".h", "text/plain");
            map.put(".htm", NanoHTTPD.MIME_HTML);
            map.put(".html", NanoHTTPD.MIME_HTML);
            map.put(".jar", "application/java-archive");
            map.put(".java", "text/plain");
            map.put(".jpeg", "image/jpeg");
            map.put(".jpg", "image/jpeg");
            map.put(".js", "application/x-javascript");
            map.put(".log", "text/plain");
            map.put(".m3u", "audio/x-mpegurl");
            map.put(".m4a", "audio/mp4a-latm");
            map.put(".m4b", "audio/mp4a-latm");
            map.put(".m4p", "audio/mp4a-latm");
            map.put(".m4u", "video/vnd.mpegurl");
            map.put(".m4v", "video/x-m4v");
            map.put(".mov", "video/quicktime");
            map.put(".mp2", "audio/x-mpeg");
            map.put(".mp3", "audio/mpeg");
            map.put(".flac", "audio/flac");
            map.put(".mp4", "video/mp4");
            map.put(".mpc", "application/vnd.mpohun.certificate");
            map.put(".mpe", "video/mpeg");
            map.put(".mpeg", "video/mpeg");
            map.put(".mpg", "video/mpeg");
            map.put(".mpg4", "video/mp4");
            map.put(".mkv", "video/*");
            map.put(".divx", "video/*");
            map.put(".xvid", "video/*");
            map.put(".flv", "video/*");
            map.put(".rm", "video/*");
            map.put(".4k", "video/*");
            map.put(".ts", "video/*");
            map.put(".m2ts", "video/*");
            map.put(".swf", "video/*");
            map.put(".dvr", "video/*");
            map.put(".webm", "video/*");
            map.put(".hevc", "video/*");
            map.put(".vcd", "video/*");
            map.put(".vob", "video/*");
            map.put(".mpga", "audio/mpeg");
            map.put(".msg", "application/vnd.ms-outlook");
            map.put(".ogg", "audio/ogg");
            map.put(".pdf", "application/pdf");
            map.put(".png", "image/png");
            map.put(".webp", "image/webp");
            map.put(".kpg", "image/kpg");
            map.put(".pps", "application/vnd.ms-powerpoint");
            map.put(".ppt", "application/vnd.ms-powerpoint");
            map.put(".pptx", "application/vnd.ms-powerpoint");
            map.put(".prop", "text/plain");
            map.put(".rar", "application/x-rar-compressed");
            map.put(".7z", "application/x-7z-compressed");
            map.put(".rc", "text/plain");
            map.put(".rmvb", "audio/x-pn-realaudio");
            map.put(".rtf", "application/rtf");
            map.put(".sh", "text/plain");
            map.put(".tar", "application/x-tar");
            map.put(".tgz", "application/x-compressed");
            map.put(".txt", "text/plain");
            map.put(".wav", "audio/x-wav");
            map.put(".wma", "audio/x-ms-wma");
            map.put(".wmv", "audio/x-ms-wmv");
            map.put(".wps", "application/vnd.ms-works");
            map.put(".xml", "text/plain");
            map.put(".xls", "application/vnd.ms-excel");
            map.put(".xlsx", "application/vnd.ms-excel");
            map.put(".z", "application/x-compress");
            map.put(".zip", "application/zip");
            map.put("", "*/*");
        }
        return map;
    }

    public static String b(String str) {
        String str2;
        int iLastIndexOf = str.lastIndexOf(".");
        String lowerCase = iLastIndexOf > 0 ? str.substring(iLastIndexOf).toLowerCase(Locale.getDefault()) : "";
        return (lowerCase.isEmpty() || (str2 = (String) a().get(lowerCase)) == null) ? "" : str2;
    }
}
