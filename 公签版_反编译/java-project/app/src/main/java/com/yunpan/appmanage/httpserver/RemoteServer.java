package com.yunpan.appmanage.httpserver;

import a2.g1;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Build;
import android.support.v4.media.session.a;
import ce.x0;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.bumptech.glide.d;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.JcifsBean;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.y;
import fa.h0;
import fi.iki.elonen.NanoHTTPD;
import g.b;
import ja.c;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kh.e;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.greenrobot.eventbus.ThreadMode;
import qa.f;
import qa.g;
import vd.x;
import x9.w3;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class RemoteServer extends NanoHTTPD {
    String TAG;
    private ArrayList<HttpGetRawBean> getRequestList;
    private boolean isStarted;
    private Context mContext;

    public class PostFileData {
        long alreadyReadSize;
        long fileLength;
        String fileName;
        long fileSaveSize;
        String fileType;
        boolean isStartReadFile;
        boolean isWindows;
        String ls_filePath;
        OutputStream outputStream;
        int readSize;
        byte[] residualBuffer;
        String toDir;

        public /* synthetic */ PostFileData(RemoteServer remoteServer, int i10) {
            this();
        }

        private PostFileData() {
            this.outputStream = null;
            this.isWindows = true;
            this.toDir = "";
            this.ls_filePath = "";
            this.fileName = "";
            this.fileLength = 0L;
            this.fileSaveSize = 0L;
            this.fileType = "";
            this.alreadyReadSize = 0L;
            this.readSize = 0;
            this.residualBuffer = null;
            this.isStartReadFile = false;
        }
    }

    public RemoteServer(int i10, Context context) throws Throwable {
        super(i10);
        this.isStarted = false;
        this.getRequestList = new ArrayList<>();
        this.TAG = "RemoteServer";
        if (!e.b().e(this)) {
            e.b().j(this);
        }
        this.mContext = context;
        initGetRequest();
    }

    private void addFileToJson(o oVar, w3 w3Var) {
        s sVar = new s();
        sVar.m("name", w3Var.f18364a);
        String str = w3Var.f18365b;
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = k.f4034u0;
        sb2.append(j.f4033a.f4036a0);
        sb2.append("/");
        String str2 = "";
        sVar.m("path", str.replace(sb2.toString(), ""));
        sVar.m("time", fileTime(w3Var.f18370g, "yyyy/MM/dd aHH:mm:ss"));
        sVar.l("dir", Integer.valueOf(w3Var.f18366c ? 1 : 0));
        if (!w3Var.f18366c) {
            str2 = "" + w3Var.f18367d;
        }
        sVar.m("size", str2);
        oVar.k(sVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    private void copyRawToBd(int i10, String str) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        ?? fileOutputStream;
        Throwable th2;
        InputStream inputStreamOpenRawResource;
        Exception e7;
        try {
            inputStreamOpenRawResource = this.mContext.getResources().openRawResource(i10);
            try {
                bufferedInputStream = new BufferedInputStream(inputStreamOpenRawResource);
            } catch (Exception e10) {
                e = e10;
                bufferedInputStream = null;
                fileOutputStream = 0;
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream = null;
                fileOutputStream = 0;
            }
        } catch (Exception e11) {
            bufferedOutputStream = null;
            bufferedInputStream = null;
            fileOutputStream = 0;
            e7 = e11;
            inputStreamOpenRawResource = null;
        } catch (Throwable th4) {
            bufferedOutputStream = null;
            bufferedInputStream = null;
            fileOutputStream = 0;
            th2 = th4;
            inputStreamOpenRawResource = null;
        }
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                try {
                    try {
                        byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
                        while (true) {
                            int i11 = bufferedInputStream.read(bArr);
                            if (i11 == -1) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, i11);
                            bufferedOutputStream.flush();
                        }
                    } catch (Exception e12) {
                        e7 = e12;
                        e7.printStackTrace();
                        a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamOpenRawResource);
                    }
                } catch (Throwable th5) {
                    th2 = th5;
                    a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamOpenRawResource);
                    throw th2;
                }
            } catch (Exception e13) {
                e7 = e13;
                bufferedOutputStream = null;
            } catch (Throwable th6) {
                th2 = th6;
                bufferedOutputStream = null;
                a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamOpenRawResource);
                throw th2;
            }
        } catch (Exception e14) {
            e = e14;
            fileOutputStream = 0;
            e7 = e;
            bufferedOutputStream = fileOutputStream;
            e7.printStackTrace();
            a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamOpenRawResource);
        } catch (Throwable th7) {
            th = th7;
            fileOutputStream = 0;
            th2 = th;
            bufferedOutputStream = fileOutputStream;
            a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamOpenRawResource);
            throw th2;
        }
        a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamOpenRawResource);
    }

    public static NanoHTTPD.Response createJSONResponse(NanoHTTPD.Response.IStatus iStatus, String str) {
        return NanoHTTPD.newFixedLengthResponse(iStatus, "application/json", str);
    }

    public static NanoHTTPD.Response createPlainTextResponse(NanoHTTPD.Response.IStatus iStatus, String str) {
        return NanoHTTPD.newFixedLengthResponse(iStatus, "text/plain", str);
    }

    private void initGetRequest() throws Throwable {
        String str = this.mContext.getFilesDir().getPath() + "/raw/";
        if (!a0.g(str)) {
            new File(str).mkdir();
        }
        this.getRequestList.add(new HttpGetRawBean("/", b.j(str, "index.html"), NanoHTTPD.MIME_HTML));
        this.getRequestList.add(new HttpGetRawBean("/index.html", b.j(str, "index.html"), NanoHTTPD.MIME_HTML));
        this.getRequestList.add(new HttpGetRawBean("/url.html", b.j(str, "url.html"), NanoHTTPD.MIME_HTML));
        this.getRequestList.add(new HttpGetRawBean("/url", b.j(str, "url.html"), NanoHTTPD.MIME_HTML));
        this.getRequestList.add(new HttpGetRawBean("/input.html", b.j(str, "input.html"), NanoHTTPD.MIME_HTML));
        this.getRequestList.add(new HttpGetRawBean("/cmd.html", b.j(str, "cmd.html"), NanoHTTPD.MIME_HTML));
        this.getRequestList.add(new HttpGetRawBean("/cmd", b.j(str, "cmd.html"), NanoHTTPD.MIME_HTML));
        this.getRequestList.add(new HttpGetRawBean("/xxx.html", b.j(str, "xxx.html"), NanoHTTPD.MIME_HTML));
        this.getRequestList.add(new HttpGetRawBean("/style.css", b.j(str, "style.css"), "text/css"));
        this.getRequestList.add(new HttpGetRawBean("/ui.css", b.j(str, "ui.css"), "text/css"));
        this.getRequestList.add(new HttpGetRawBean("/jquery.js", b.j(str, "jquery.js"), "application/x-javascript"));
        this.getRequestList.add(new HttpGetRawBean("/script.js", b.j(str, "script.js"), "application/x-javascript"));
        this.getRequestList.add(new HttpGetRawBean("/favicon.ico", b.j(str, "favicon.ico"), "image/x-icon"));
        this.getRequestList.add(new HttpGetRawBean("/apk.png", b.j(str, "apk.png"), "image/*"));
        this.getRequestList.add(new HttpGetRawBean("/zip.png", b.j(str, "zip.png"), "image/*"));
        this.getRequestList.add(new HttpGetRawBean("/tp.png", b.j(str, "tp.png"), "image/*"));
        this.getRequestList.add(new HttpGetRawBean("/sp.png", b.j(str, "sp.png"), "image/*"));
        this.getRequestList.add(new HttpGetRawBean("/mp3.png", b.j(str, "mp3.png"), "image/*"));
        this.getRequestList.add(new HttpGetRawBean("/json.png", b.j(str, "json.png"), "image/*"));
        this.getRequestList.add(new HttpGetRawBean("/return1.png", b.j(str, "return1.png"), "image/*"));
        String str2 = str + "index.html";
        if (!a0.g(str2)) {
            copyRawToBd(R.raw.index, str2);
        }
        String strJ = b.j(str, "url.html");
        if (!a0.g(strJ)) {
            copyRawToBd(R.raw.url, strJ);
        }
        copyRawToBd(R.raw.cmd, b.j(str, "cmd.html"));
        copyRawToBd(R.raw.input, b.j(str, "input.html"));
        String strJ2 = b.j(str, "xxx.html");
        if (!a0.g(strJ2)) {
            copyRawToBd(R.raw.xxx, strJ2);
        }
        String strJ3 = b.j(str, "style.css");
        if (!a0.g(strJ3)) {
            copyRawToBd(R.raw.style, strJ3);
        }
        String strJ4 = b.j(str, "ui.css");
        if (!a0.g(strJ4)) {
            copyRawToBd(R.raw.ui, strJ4);
        }
        String strJ5 = b.j(str, "jquery.js");
        if (!a0.g(strJ5)) {
            copyRawToBd(R.raw.jquery, strJ5);
        }
        copyRawToBd(R.raw.script, b.j(str, "script.js"));
        String strJ6 = b.j(str, "favicon.ico");
        if (!a0.g(strJ6)) {
            copyRawToBd(R.raw.favicon, strJ6);
        }
        String strJ7 = b.j(str, "apk.png");
        if (!a0.g(strJ7)) {
            copyRawToBd(R.raw.apk, strJ7);
        }
        String strJ8 = b.j(str, "zip.png");
        if (!a0.g(strJ8)) {
            copyRawToBd(R.raw.zip, strJ8);
        }
        String strJ9 = b.j(str, "tp.png");
        if (!a0.g(strJ9)) {
            copyRawToBd(R.raw.tp, strJ9);
        }
        String strJ10 = b.j(str, "sp.png");
        if (!a0.g(strJ10)) {
            copyRawToBd(R.raw.sp, strJ10);
        }
        String strJ11 = b.j(str, "mp3.png");
        if (!a0.g(strJ11)) {
            copyRawToBd(R.raw.mp3, strJ11);
        }
        String strJ12 = b.j(str, "json.png");
        if (!a0.g(strJ12)) {
            copyRawToBd(R.raw.json, strJ12);
        }
        String strJ13 = b.j(str, "return1.png");
        if (a0.g(strJ13)) {
            return;
        }
        copyRawToBd(R.raw.return1, strJ13);
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x029f, code lost:
    
        throw new java.lang.Exception("解析数据出错");
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x049c, code lost:
    
        throw new java.lang.Exception("解析数据出错");
     */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0515 A[LOOP:0: B:4:0x0049->B:199:0x0515, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0557 A[Catch: Exception -> 0x055a, TRY_LEAVE, TryCatch #0 {Exception -> 0x055a, blocks: (B:214:0x0553, B:216:0x0557), top: B:222:0x0553 }] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0514 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00eb A[PHI: r2 r13
  0x00eb: PHI (r2v30 int) = 
  (r2v21 int)
  (r2v21 int)
  (r2v21 int)
  (r2v21 int)
  (r2v21 int)
  (r2v21 int)
  (r2v21 int)
  (r2v21 int)
  (r2v21 int)
  (r2v31 int)
 binds: [B:43:0x00f2, B:45:0x00f6, B:47:0x00fc, B:34:0x00d9, B:23:0x00b9, B:25:0x00bd, B:27:0x00c6, B:29:0x00cd, B:31:0x00d3, B:40:0x00ea] A[DONT_GENERATE, DONT_INLINE]
  0x00eb: PHI (r13v20 int) = 
  (r13v9 int)
  (r13v9 int)
  (r13v9 int)
  (r13v9 int)
  (r13v9 int)
  (r13v9 int)
  (r13v9 int)
  (r13v9 int)
  (r13v9 int)
  (r13v21 int)
 binds: [B:43:0x00f2, B:45:0x00f6, B:47:0x00fc, B:34:0x00d9, B:23:0x00b9, B:25:0x00bd, B:27:0x00c6, B:29:0x00cd, B:31:0x00d3, B:40:0x00ea] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void parseFile(NanoHTTPD.IHTTPSession iHTTPSession) throws Exception {
        OutputStream outputStream;
        long j10;
        RemoteServer remoteServer;
        String str;
        byte[] bArr;
        byte[] bArr2;
        int i10;
        int i11;
        int i12;
        int i13;
        RemoteServer remoteServer2 = this;
        int i14 = -1;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(iHTTPSession.getInputStream());
        long j11 = Long.parseLong(iHTTPSession.getHeaders().get("content-length"));
        String str2 = "--" + new NanoHTTPD.ContentType(iHTTPSession.getHeaders().get("content-type")).getBoundary();
        PostFileData postFileData = new PostFileData(remoteServer2, 0);
        try {
            byte[] bArr3 = new byte[PKIFailureInfo.signerNotTrusted];
            while (true) {
                int i15 = bufferedInputStream.read(bArr3);
                postFileData.readSize = i15;
                if (i15 == i14) {
                    j10 = j11;
                    break;
                }
                long j12 = i15;
                long j13 = postFileData.alreadyReadSize + j12;
                postFileData.alreadyReadSize = j13;
                BufferedInputStream bufferedInputStream2 = bufferedInputStream;
                j10 = j11;
                if (j13 == j12) {
                    byte[] bArr4 = new byte[100];
                    System.arraycopy(bArr3, 0, bArr4, 0, 100);
                    if (new String(bArr4).contains(str2 + "\r\n")) {
                        postFileData.isWindows = true;
                    } else {
                        postFileData.isWindows = false;
                    }
                    int i16 = 2;
                    int i17 = 0;
                    int i18 = 0;
                    while (true) {
                        int i19 = postFileData.readSize;
                        if (i17 >= i19) {
                            str = str2;
                            i12 = 0;
                            break;
                        }
                        str = str2;
                        try {
                            if (postFileData.isWindows) {
                                if (bArr3[i17] == 13 && i17 < i19 - 3 && bArr3[i17 + 1] == 10 && bArr3[i17 + 2] == 13 && bArr3[i17 + 3] == 10) {
                                    if (i17 >= i18 + 10) {
                                        i16--;
                                        if (i16 == 0) {
                                            postFileData.isStartReadFile = true;
                                            i12 = i17 + 4;
                                            break;
                                        }
                                        i18 = i17;
                                    }
                                }
                                i13 = 1;
                                i17 += i13;
                                str2 = str;
                            } else {
                                if (bArr3[i17] == 10) {
                                    i13 = 1;
                                    if (i17 >= i19 - 1 || bArr3[i17 + 1] != 10) {
                                        i13 = 1;
                                    } else if (i17 < i18 + 10) {
                                        i13 = 1;
                                    } else {
                                        i16--;
                                        if (i16 == 0) {
                                            postFileData.isStartReadFile = true;
                                            i12 = i17 + 2;
                                            break;
                                        }
                                        i18 = i17;
                                    }
                                }
                                i17 += i13;
                                str2 = str;
                            }
                        } catch (Exception e7) {
                            e = e7;
                            e.printStackTrace();
                            try {
                                outputStream = postFileData.outputStream;
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                            } catch (Exception unused) {
                            }
                            throw new Exception(b.z(e, new StringBuilder("接收文件失败：")));
                        }
                    }
                    if (!postFileData.isStartReadFile) {
                        throw new Exception("解析数据出错");
                    }
                    byte[] bArr5 = new byte[i12];
                    System.arraycopy(bArr3, 0, bArr5, 0, i12);
                    String str3 = new String(bArr5);
                    String strN = p000if.a.N(str3, "\r\n\r\n", "\r\n", false);
                    postFileData.toDir = strN;
                    strN.getClass();
                    if (!postFileData.toDir.isEmpty()) {
                        try {
                            postFileData.toDir = URLDecoder.decode(postFileData.toDir, HTTP.UTF_8);
                        } catch (Exception unused2) {
                        }
                        postFileData.toDir = postFileData.toDir.replace("%2F", "/");
                    }
                    postFileData.fileName = p000if.a.N(str3, "filename=\"", "\"", false);
                    postFileData.fileLength = Long.parseLong(p000if.a.N(str3, "name=\"files-", "\"", false));
                    postFileData.fileType = p000if.a.N(str3, "Content-Type:", postFileData.isWindows ? "\r\n" : SignParameters.NEW_LINE, false).trim();
                    if (str3.contains("Content-Length:") && postFileData.fileLength < 10) {
                        postFileData.fileLength = Long.parseLong(p000if.a.N(str3, "Content-Length:", postFileData.isWindows ? "\r\n" : SignParameters.NEW_LINE, false).trim());
                    }
                    if (postFileData.fileName.isEmpty() || postFileData.fileLength == 0 || postFileData.fileType.isEmpty()) {
                        break;
                    }
                    if (postFileData.toDir.isEmpty()) {
                        StringBuilder sb2 = new StringBuilder();
                        DecimalFormat decimalFormat = k.f4034u0;
                        sb2.append(j.f4033a.f4036a0);
                        sb2.append("/");
                        sb2.append(postFileData.fileName);
                        postFileData.ls_filePath = sb2.toString();
                    } else if (postFileData.toDir.equals("安装")) {
                        StringBuilder sb3 = new StringBuilder();
                        DecimalFormat decimalFormat2 = k.f4034u0;
                        sb3.append(j.f4033a.f4069s);
                        sb3.append("/");
                        sb3.append(postFileData.fileName);
                        postFileData.ls_filePath = sb3.toString();
                    } else {
                        StringBuilder sb4 = new StringBuilder();
                        DecimalFormat decimalFormat3 = k.f4034u0;
                        sb4.append(j.f4033a.f4036a0);
                        sb4.append("/");
                        sb4.append(postFileData.toDir);
                        sb4.append("/");
                        sb4.append(postFileData.fileName);
                        postFileData.ls_filePath = sb4.toString();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(postFileData.ls_filePath);
                    postFileData.outputStream = fileOutputStream;
                    int i20 = postFileData.readSize - i12;
                    long j14 = i20;
                    long j15 = postFileData.fileLength;
                    if (j14 >= j15) {
                        fileOutputStream.write(bArr3, i12, (int) j15);
                        postFileData.outputStream.close();
                        postFileData.outputStream = null;
                        postFileData.isStartReadFile = false;
                        MyDb.get().lambda$addFile_thread$1(postFileData.ls_filePath);
                        if (postFileData.toDir.equals("安装")) {
                            e.b().f(new ja.a(2, postFileData.ls_filePath));
                        } else {
                            e.b().f(new c(postFileData.ls_filePath));
                        }
                        int i21 = postFileData.readSize - i12;
                        long j16 = i21;
                        long j17 = postFileData.fileLength;
                        if (j16 > j17) {
                            int i22 = (int) j17;
                            int i23 = i21 - i22;
                            byte[] bArr6 = new byte[i23];
                            postFileData.residualBuffer = bArr6;
                            System.arraycopy(bArr3, i12 + i22, bArr6, 0, i23);
                            remoteServer = this;
                            try {
                                remoteServer.parseFile(postFileData);
                            } catch (Exception e10) {
                                e = e10;
                                e.printStackTrace();
                                outputStream = postFileData.outputStream;
                                if (outputStream != null) {
                                }
                                throw new Exception(b.z(e, new StringBuilder("接收文件失败：")));
                            }
                        } else {
                            remoteServer = this;
                        }
                    } else {
                        remoteServer = this;
                        postFileData.fileSaveSize = j14;
                        fileOutputStream.write(bArr3, i12, i20);
                    }
                    bArr = bArr3;
                } else {
                    remoteServer = remoteServer2;
                    str = str2;
                    byte[] bArr7 = postFileData.residualBuffer;
                    if (bArr7 != null) {
                        int length = i15 + bArr7.length;
                        byte[] bArr8 = new byte[length];
                        System.arraycopy(bArr7, 0, bArr8, 0, bArr7.length);
                        System.arraycopy(bArr3, 0, bArr8, postFileData.residualBuffer.length, postFileData.readSize);
                        postFileData.residualBuffer = null;
                        if (length >= 50 || postFileData.isStartReadFile) {
                            int i24 = 0;
                            while (true) {
                                if (i24 >= length) {
                                    bArr2 = bArr3;
                                    i10 = 0;
                                    break;
                                }
                                if (postFileData.isWindows) {
                                    if (bArr8[i24] == 13 && i24 < length - 3 && bArr8[i24 + 1] == 10 && bArr8[i24 + 2] == 13 && bArr8[i24 + 3] == 10) {
                                        postFileData.isStartReadFile = true;
                                        i10 = i24 + 4;
                                        bArr2 = bArr3;
                                        break;
                                    }
                                    bArr2 = bArr3;
                                    i11 = 1;
                                    i24 += i11;
                                    bArr3 = bArr2;
                                } else {
                                    if (bArr8[i24] == 10) {
                                        i11 = 1;
                                        if (i24 < length - 1) {
                                            bArr2 = bArr3;
                                            if (bArr8[i24 + 1] == 10) {
                                                postFileData.isStartReadFile = true;
                                                i10 = i24 + 2;
                                                break;
                                            }
                                        } else {
                                            bArr2 = bArr3;
                                        }
                                    } else {
                                        bArr2 = bArr3;
                                        i11 = 1;
                                    }
                                    i24 += i11;
                                    bArr3 = bArr2;
                                }
                            }
                            if (!postFileData.isStartReadFile) {
                                throw new Exception("解析数据出错");
                            }
                            byte[] bArr9 = new byte[i10];
                            System.arraycopy(bArr8, 0, bArr9, 0, i10);
                            String str4 = new String(bArr9);
                            postFileData.fileName = p000if.a.N(str4, "filename=\"", "\"", false);
                            postFileData.fileLength = Long.parseLong(p000if.a.N(str4, "name=\"files-", "\"", false));
                            postFileData.fileType = p000if.a.N(str4, "Content-Type:", postFileData.isWindows ? "\r\n" : SignParameters.NEW_LINE, false).trim();
                            if (str4.contains("Content-Length:") && postFileData.fileLength < 10) {
                                postFileData.fileLength = Long.parseLong(p000if.a.N(str4, "Content-Length:", postFileData.isWindows ? "\r\n" : SignParameters.NEW_LINE, false).trim());
                            }
                            if (postFileData.fileName.isEmpty() || postFileData.fileLength == 0 || postFileData.fileType.isEmpty()) {
                                break;
                            }
                            if (postFileData.toDir.isEmpty()) {
                                StringBuilder sb5 = new StringBuilder();
                                DecimalFormat decimalFormat4 = k.f4034u0;
                                sb5.append(j.f4033a.f4036a0);
                                sb5.append("/");
                                sb5.append(postFileData.fileName);
                                postFileData.ls_filePath = sb5.toString();
                            } else if (postFileData.toDir.equals("安装")) {
                                StringBuilder sb6 = new StringBuilder();
                                DecimalFormat decimalFormat5 = k.f4034u0;
                                sb6.append(j.f4033a.f4069s);
                                sb6.append("/");
                                sb6.append(postFileData.fileName);
                                postFileData.ls_filePath = sb6.toString();
                            } else {
                                StringBuilder sb7 = new StringBuilder();
                                DecimalFormat decimalFormat6 = k.f4034u0;
                                sb7.append(j.f4033a.f4036a0);
                                sb7.append("/");
                                sb7.append(postFileData.toDir);
                                sb7.append("/");
                                sb7.append(postFileData.fileName);
                                postFileData.ls_filePath = sb7.toString();
                            }
                            MyDb.get().lambda$addFile_thread$1(postFileData.ls_filePath);
                            FileOutputStream fileOutputStream2 = new FileOutputStream(postFileData.ls_filePath);
                            postFileData.outputStream = fileOutputStream2;
                            int i25 = length - i10;
                            long j18 = i25;
                            long j19 = postFileData.fileLength;
                            if (j18 >= j19) {
                                fileOutputStream2.write(bArr8, i10, (int) j19);
                                postFileData.outputStream.close();
                                postFileData.outputStream = null;
                                postFileData.isStartReadFile = false;
                                MyDb.get().lambda$addFile_thread$1(postFileData.ls_filePath);
                                if (postFileData.toDir.equals("安装")) {
                                    e.b().f(new ja.a(2, postFileData.ls_filePath));
                                } else {
                                    e.b().f(new c(postFileData.ls_filePath));
                                }
                                long j20 = postFileData.fileLength;
                                if (j18 > j20) {
                                    int i26 = (int) j20;
                                    int i27 = i25 - i26;
                                    byte[] bArr10 = new byte[i27];
                                    postFileData.residualBuffer = bArr10;
                                    System.arraycopy(bArr8, i10 + i26, bArr10, 0, i27);
                                    remoteServer.parseFile(postFileData);
                                }
                            } else {
                                postFileData.fileSaveSize = j18;
                                fileOutputStream2.write(bArr8, i10, i25);
                            }
                        } else {
                            byte[] bArr11 = new byte[length];
                            postFileData.residualBuffer = bArr11;
                            System.arraycopy(bArr8, 0, bArr11, 0, length);
                            bArr2 = bArr3;
                        }
                        bArr = bArr2;
                    } else {
                        byte[] bArr12 = bArr3;
                        long j21 = postFileData.fileLength;
                        long j22 = postFileData.fileSaveSize;
                        long j23 = j12 + j22;
                        if (j21 >= j23) {
                            postFileData.fileSaveSize = j23;
                            bArr = bArr12;
                            postFileData.outputStream.write(bArr, 0, i15);
                        } else {
                            bArr = bArr12;
                            int i28 = (int) (j21 - j22);
                            postFileData.outputStream.write(bArr, 0, i28);
                            postFileData.outputStream.close();
                            postFileData.outputStream = null;
                            postFileData.isStartReadFile = false;
                            MyDb.get().lambda$addFile_thread$1(postFileData.ls_filePath);
                            if (postFileData.toDir.equals("安装")) {
                                e.b().f(new ja.a(2, postFileData.ls_filePath));
                            } else {
                                e.b().f(new c(postFileData.ls_filePath));
                            }
                            int i29 = postFileData.readSize - i28;
                            byte[] bArr13 = new byte[i29];
                            postFileData.residualBuffer = bArr13;
                            System.arraycopy(bArr, i28, bArr13, 0, i29);
                            remoteServer.parseFile(postFileData);
                            if (postFileData.alreadyReadSize != j10) {
                                break;
                            }
                            bArr3 = bArr;
                            remoteServer2 = remoteServer;
                            bufferedInputStream = bufferedInputStream2;
                            j11 = j10;
                            str2 = str;
                            i14 = -1;
                        }
                    }
                }
                if (postFileData.alreadyReadSize != j10) {
                }
            }
            OutputStream outputStream2 = postFileData.outputStream;
            if (outputStream2 != null) {
                outputStream2.close();
            }
            if (postFileData.alreadyReadSize != j10) {
                throw new Exception("接收文件不完整");
            }
            if (postFileData.isStartReadFile) {
                new File(postFileData.ls_filePath).delete();
                throw new Exception("解析文件出错");
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public Object clone() {
        e.b().l(this);
        return super.clone();
    }

    public String fileTime(long j10, String str) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        return new SimpleDateFormat(str).format(calendar.getTime());
    }

    public boolean isStarting() {
        return this.isStarted;
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(String str) {
    }

    public String readDir(String str, boolean z) throws Exception {
        List<FileInfo> listSqlQuery;
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = k.f4034u0;
        sb2.append(j.f4033a.f4036a0);
        sb2.append(str.isEmpty() ? "" : "/".concat(str));
        String string = sb2.toString();
        try {
            listSqlQuery = MyDb.get().getFileInfoDao().sqlQuery(new g1(b.l(v.f4106a.f4129l0 ? "" : " and name NOT LIKE '.%'", " ORDER BY name", new StringBuilder("SELECT * FROM fileList WHERE parent=?")), new Object[]{string}));
        } catch (Exception unused) {
            listSqlQuery = null;
        }
        c cVar = new c(9, str);
        ArrayList arrayList = cVar.f9828c;
        ArrayList arrayList2 = cVar.f9829d;
        for (FileInfo fileInfo : listSqlQuery) {
            if (fileInfo.isDir) {
                arrayList2.add(new w3(fileInfo));
            }
        }
        for (FileInfo fileInfo2 : listSqlQuery) {
            if (!fileInfo2.isDir) {
                arrayList2.add(new w3(fileInfo2));
            }
        }
        if (arrayList2.isEmpty() && !new File(string).canRead()) {
            throw new Exception("无权限");
        }
        if (!z) {
            k kVar = j.f4033a;
            arrayList.add(new w3(kVar.Z, kVar.f4036a0));
            if (!str.isEmpty()) {
                String[] strArrSplit = str.split("/");
                for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                    String string2 = "";
                    for (int i11 = 0; i11 <= i10; i11++) {
                        StringBuilder sbM = b.m(string2);
                        sbM.append(string2.isEmpty() ? strArrSplit[i11] : "/" + strArrSplit[i11]);
                        string2 = sbM.toString();
                    }
                    arrayList.add(new w3(strArrSplit[i10], a.u(new StringBuilder(), j.f4033a.f4036a0, "/", string2)));
                }
            }
            e.b().f(cVar);
        }
        o oVar = new o();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            addFileToJson(oVar, (w3) it.next());
        }
        s sVar = new s();
        sVar.m("rootName", j.f4033a.Z);
        sVar.m("parent", str);
        sVar.j("files", oVar);
        return sVar.toString();
    }

    @Override // fi.iki.elonen.NanoHTTPD
    public NanoHTTPD.Response serve(NanoHTTPD.IHTTPSession iHTTPSession) throws NumberFormatException, IOException {
        String str;
        BufferedInputStream bufferedInputStream;
        FileInputStream fileInputStream;
        InputStream inputStream;
        InputStream inputStream2;
        long j10;
        String str2;
        long j11;
        String str3;
        InputStream inputStreamE;
        int i10;
        int i11;
        long j12;
        long j13;
        boolean zMkdir = false;
        if (iHTTPSession.getUri().isEmpty()) {
            return this.getRequestList.get(0).getNanoRes();
        }
        String strTrim = iHTTPSession.getUri().trim();
        if (strTrim.indexOf(63) >= 0) {
            strTrim = strTrim.substring(0, strTrim.indexOf(63));
        }
        String str4 = k.f().f4036a0;
        if (!h0.c().d().isEmpty()) {
            k.f().Z = "内部存储";
            k.f().f4036a0 = h0.c().d();
        } else if (!k.f().f4073v.isEmpty()) {
            Iterator it = k.f().f4073v.iterator();
            while (it.hasNext()) {
                String str5 = (String) it.next();
                if (a0.d(str5)) {
                    k.f().Z = "U盘";
                    k.f().f4036a0 = str5;
                }
            }
        }
        if (k.f().f4036a0.isEmpty()) {
            k.f().Z = "私有目录";
            k.f().f4036a0 = k.f().f4035a.getCacheDir().getPath();
        }
        if (!str4.equals(k.f().f4036a0)) {
            if (!new File(b.l(k.f().f4036a0, "/Download", new StringBuilder())).exists()) {
                new File(b.l(k.f().f4036a0, "/Download", new StringBuilder())).mkdirs();
                MyDb.get().addFile_thread(k.f().f4036a0 + "/Download");
            }
        }
        if (iHTTPSession.getMethod() != NanoHTTPD.Method.GET) {
            if (iHTTPSession.getMethod() != NanoHTTPD.Method.POST) {
                return createPlainTextResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "出错了");
            }
            if (strTrim.startsWith("/upload")) {
                try {
                    parseFile(iHTTPSession);
                    return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/plain", "OK");
                } catch (Exception e7) {
                    return createPlainTextResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "" + e7.getMessage());
                }
            }
            HashMap map = new HashMap();
            try {
                if (iHTTPSession.getHeaders().containsKey("content-type") && (str = iHTTPSession.getHeaders().get("content-type")) != null && str.toLowerCase().contains("multipart/form-data") && !str.toLowerCase().contains("charset=")) {
                    Matcher matcher = Pattern.compile("[ |\t]*(boundary[ |\t]*=[ |\t]*['|\"]?[^\"^'^;^,]*['|\"]?)", 2).matcher(str);
                    String strGroup = matcher.find() ? matcher.group(1) : null;
                    if (strGroup != null) {
                        iHTTPSession.getHeaders().put("content-type", "multipart/form-data; charset=utf-8; " + strGroup);
                    }
                }
                iHTTPSession.parseBody(map);
                try {
                    Map<String, List<String>> parameters = iHTTPSession.getParameters();
                    if (strTrim.equals("/input")) {
                        e.b().f(new ja.a(5, parameters.get("str1").get(0)));
                        return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/plain", "OK");
                    }
                    if (strTrim.equals("/url")) {
                        e.b().f(new ja.a(1, parameters.get("shareUrl").get(0)));
                        return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/plain", "OK");
                    }
                    if (strTrim.equals("/cmd")) {
                        String str6 = parameters.get("shareUrl").get(0);
                        if (Integer.valueOf(str6.substring(0, 1)).intValue() != 2) {
                            e.b().f(new ja.a(3, str6));
                            return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/plain", "OK");
                        }
                        String strSubstring = str6.substring(1);
                        ClipboardManager clipboardManager = (ClipboardManager) this.mContext.getSystemService("clipboard");
                        if (clipboardManager == null) {
                            return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "text/plain", "无法获取剪切板对象");
                        }
                        System.out.getClass();
                        clipboardManager.setPrimaryClip(ClipData.newPlainText(AnnotatedPrivateKey.LABEL, strSubstring));
                        a0.w("已复制");
                        return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/plain", "OK");
                    }
                    if (strTrim.equals("/download")) {
                        e.b().f(new ja.a(4, parameters.get("shareUrl").get(0)));
                        return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/plain", "OK");
                    }
                    if (!strTrim.startsWith("/newDir")) {
                        return createPlainTextResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "你想干什么？");
                    }
                    String str7 = parameters.get("newDirPath").get(0);
                    try {
                        zMkdir = new File(k.f().f4036a0 + "/" + str7).mkdir();
                    } catch (Exception unused) {
                    }
                    if (!zMkdir) {
                        return createPlainTextResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "出错了");
                    }
                    MyDb.get().addFile_thread(k.f().f4036a0 + "/" + str7);
                    return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/plain", "OK");
                } catch (Throwable unused2) {
                    return createPlainTextResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "出错了");
                }
            } catch (NanoHTTPD.ResponseException e10) {
                return createPlainTextResponse(e10.getStatus(), e10.getMessage());
            } catch (IOException e11) {
                return createPlainTextResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "IO错误：" + e11.getMessage());
            } catch (Exception e12) {
                return createPlainTextResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "出错啦：" + e12.getMessage());
            }
        }
        if (strTrim.startsWith("/favicon.ico")) {
            return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "Not Found");
        }
        if (strTrim.startsWith("/isonline")) {
            return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/plain", k.f().f4056k0 + "----" + Build.PRODUCT);
        }
        Iterator<HttpGetRawBean> it2 = this.getRequestList.iterator();
        while (it2.hasNext()) {
            HttpGetRawBean next = it2.next();
            if (next.isUrl(strTrim)) {
                if (strTrim.equals("/input.html")) {
                    e.b().f(new ja.a(6, null));
                }
                return next.getNanoRes();
            }
        }
        if (strTrim.startsWith("/file/") || strTrim.startsWith("/refile/")) {
            try {
                boolean zStartsWith = strTrim.startsWith("/refile/");
                String strSubstring2 = strTrim.substring(zStartsWith ? 8 : 6);
                if (strSubstring2.equals("Download")) {
                    if (!new File(k.f().f4036a0 + "/Download").exists()) {
                        new File(k.f().f4036a0 + "/Download").mkdirs();
                        MyDb.get().addFile_thread(k.f().f4036a0 + "/Download");
                    }
                }
                File file = new File(k.f().f4036a0 + "/" + strSubstring2);
                file.getPath();
                return file.exists() ? file.isFile() ? NanoHTTPD.newChunkedResponse(NanoHTTPD.Response.Status.OK, "application/octet-stream", new FileInputStream(file)) : NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/plain", readDir(strSubstring2, zStartsWith)) : NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "text/plain", "此目录不存在或无权限");
            } catch (Throwable unused3) {
                return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "text/plain", "无权限读取此目录");
            }
        }
        if (strTrim.startsWith("/down/") || strTrim.startsWith("/path/")) {
            String strSubstring3 = strTrim.substring(5);
            if (strTrim.startsWith("/down/")) {
                strSubstring3 = h0.c().d() + strSubstring3;
            }
            try {
                FileInputStream fileInputStream2 = new FileInputStream(strSubstring3);
                try {
                    bufferedInputStream = new BufferedInputStream(fileInputStream2);
                    try {
                        return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "application/octet-stream", bufferedInputStream, bufferedInputStream.available());
                    } catch (Exception e13) {
                        e = e13;
                        fileInputStream = fileInputStream2;
                        e.printStackTrace();
                        q4.a.e(fileInputStream);
                        q4.a.e(bufferedInputStream);
                        return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "text/plain", e.getMessage());
                    }
                } catch (Exception e14) {
                    e = e14;
                    bufferedInputStream = null;
                }
            } catch (Exception e15) {
                e = e15;
                bufferedInputStream = null;
                fileInputStream = null;
            }
        } else {
            if (strTrim.startsWith("/url/")) {
                e.b().f(new ja.a(1, strTrim.substring(5)));
                return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/plain", "OK");
            }
            if (k.f().A != null && k.f().A.f18290a == 3) {
                String strB = y.b(strTrim);
                if (strB.isEmpty()) {
                    strB = p000if.a.j0(strTrim) ? "video/*" : p000if.a.f0(strTrim) ? "audio/*" : "application/octet-stream";
                }
                String strSubstring4 = strTrim.substring(7);
                if (strTrim.startsWith("/videoimage/")) {
                    JcifsBean jcifsBeanE = f.e(k.f().A, strTrim.substring(12).replace("//", "/"));
                    return jcifsBeanE == null ? NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "Not Found") : NanoHTTPD.newChunkedResponse(NanoHTTPD.Response.Status.OK, strB, jcifsBeanE);
                }
                if (p000if.a.f0(strTrim)) {
                    String str8 = iHTTPSession.getHeaders().get("if-none-match");
                    try {
                        InputStream inputStreamF = f.f(k.f().A, strSubstring4);
                        if (str8 == null || str8.isEmpty()) {
                            return NanoHTTPD.newChunkedResponse(NanoHTTPD.Response.Status.OK, strB, inputStreamF);
                        }
                        NanoHTTPD.Response responseNewChunkedResponse = NanoHTTPD.newChunkedResponse(NanoHTTPD.Response.Status.NOT_MODIFIED, strB, inputStreamF);
                        responseNewChunkedResponse.addHeader("etag", "bytes");
                        return responseNewChunkedResponse;
                    } catch (Exception unused4) {
                        return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "Not Found");
                    }
                }
                if (!k.f().H.equals(strSubstring4)) {
                    try {
                        return NanoHTTPD.newChunkedResponse(NanoHTTPD.Response.Status.OK, strB, f.f(k.f().A, strSubstring4));
                    } catch (Exception unused5) {
                        return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "Not Found");
                    }
                }
                if (!strTrim.startsWith("/video/")) {
                    return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "Not Found");
                }
                String str9 = iHTTPSession.getHeaders().get("range");
                if (str9 == null || str9.contains("bytes=0-")) {
                    j12 = k.f().G - 1;
                    j13 = 0;
                } else {
                    String[] strArrSplit = str9.substring(6).split("-");
                    j13 = Long.parseLong(strArrSplit[0]);
                    j12 = strArrSplit.length > 1 ? Long.parseLong(strArrSplit[1]) : k.f().G - 1;
                }
                long j14 = (j12 - j13) + 1;
                if (k.f().I == null) {
                    return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "Not Found");
                }
                String str10 = System.currentTimeMillis() + "";
                k.f().I.wpVideoStreamTag = str10;
                synchronized (k.f().I) {
                    try {
                        try {
                            if (k.f().I.randomFile_smb1 != null) {
                                k.f().I.randomFile_smb1.f3217b = j13;
                            } else {
                                k.f().I.randomFile_smb2.f16948b = j13;
                            }
                        } catch (Exception unused6) {
                            return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "出错");
                        }
                    } finally {
                    }
                }
                NanoHTTPD.Response.Status status = NanoHTTPD.Response.Status.PARTIAL_CONTENT;
                NanoHTTPD.Response responseNewMyCacheVideoStreamResponse = NanoHTTPD.newMyCacheVideoStreamResponse(status, strB, b.j(str10, ""), j14);
                if (str9 == null) {
                    responseNewMyCacheVideoStreamResponse = NanoHTTPD.newMyCacheVideoStreamResponse(NanoHTTPD.Response.Status.OK, strB, b.j(str10, ""), j14);
                } else if (j13 == 0) {
                    responseNewMyCacheVideoStreamResponse = NanoHTTPD.newMyCacheVideoStreamResponse(status, strB, b.j(str10, ""), j14);
                }
                StringBuilder sbW = a.w(j13, "bytes ", "-");
                sbW.append(j12);
                sbW.append("/");
                sbW.append(k.f().G);
                responseNewMyCacheVideoStreamResponse.addHeader("Content-Range", sbW.toString());
                responseNewMyCacheVideoStreamResponse.addHeader("accept-ranges", "bytes");
                return responseNewMyCacheVideoStreamResponse;
            }
            if (!strTrim.startsWith("/video/") && !strTrim.startsWith("/videoimage/")) {
                return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "text/plain", "你想干什么？");
            }
            String strB2 = y.b(strTrim);
            if (strB2.isEmpty()) {
                strB2 = p000if.a.j0(strTrim) ? "video/*" : p000if.a.f0(strTrim) ? "audio/*" : "application/octet-stream";
            }
            try {
                String str11 = iHTTPSession.getHeaders().get("range");
                if (strTrim.startsWith("/videoimage/")) {
                    str11 = null;
                }
                String strSubstring5 = strTrim.substring(7);
                if (strTrim.startsWith("/videoimage/")) {
                    try {
                        strSubstring5 = strTrim.substring(12);
                    } catch (Exception e16) {
                        e = e16;
                        inputStream2 = null;
                        e.printStackTrace();
                        q4.a.e(inputStream2);
                        return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "不存在");
                    }
                }
                if (str11 == null || str11.contains("bytes=0-")) {
                    j10 = k.f().G - 1;
                    str2 = str11;
                    j11 = 0;
                } else {
                    String[] strArrSplit2 = str11.substring(6).split("-");
                    long j15 = Long.parseLong(strArrSplit2[0]);
                    j10 = strArrSplit2.length > 1 ? Long.parseLong(strArrSplit2[1]) : k.f().G - 1;
                    str2 = str11;
                    j11 = j15;
                }
                long j16 = j10;
                String str12 = strB2;
                long j17 = (j16 - j11) + 1;
                if (k.f().A.f18290a != 3) {
                    str3 = str12;
                    if (k.f().A.f18290a == 4) {
                        inputStreamE = com.bumptech.glide.c.E(j11, strSubstring5, k.f().A);
                    } else if (k.f().A.f18290a == 5) {
                        inputStreamE = d.y(j11, strSubstring5, k.f().A);
                    } else {
                        if (k.f().A.f18290a == 6) {
                            p000if.a.K(k.f().A);
                            inputStream = null;
                            try {
                                throw null;
                            } catch (Exception e17) {
                                e = e17;
                                inputStream2 = inputStream;
                                e.printStackTrace();
                                q4.a.e(inputStream2);
                                return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "不存在");
                            }
                        }
                        inputStreamE = g.e(j11, strSubstring5, k.f().A);
                    }
                } else {
                    if (j11 > 0) {
                        Object objG = f.g(k.f().A, strSubstring5);
                        OutputStream outputStream = iHTTPSession.getOutputStream();
                        try {
                            outputStream.write("HTTP/1.1 206 Partial Content\r\n".getBytes());
                            outputStream.write(("Content-Type: " + str12 + "\r\n").getBytes());
                            outputStream.write("Accept-ranges: bytes\r\n".getBytes());
                            outputStream.write(("Content-Range: bytes " + j11 + "-" + j16 + "/" + k.f().G + "\r\n").getBytes());
                            outputStream.write("\r\n".getBytes());
                            if (objG instanceof x0) {
                                x0 x0Var = (x0) objG;
                                x0Var.f3217b = j11;
                                byte[] bArr = new byte[3145728];
                                do {
                                    i11 = x0Var.read(bArr);
                                    if (i11 != -1) {
                                        outputStream.write(bArr);
                                        outputStream.flush();
                                    }
                                } while (i11 != -1);
                            } else {
                                x xVar = (x) objG;
                                xVar.f16948b = j11;
                                byte[] bArr2 = new byte[3145728];
                                do {
                                    i10 = xVar.read(bArr2);
                                    if (i10 != -1) {
                                        outputStream.write(bArr2);
                                        outputStream.flush();
                                    }
                                } while (i10 != -1);
                            }
                            return NanoHTTPD.newFixedLengthResponse("");
                        } catch (IOException e18) {
                            try {
                                if (objG instanceof x0) {
                                    ((x0) objG).f3216a.b();
                                } else {
                                    ((x) objG).close();
                                }
                            } catch (Exception unused7) {
                            }
                            q4.a.e(outputStream);
                            e18.printStackTrace();
                            return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "text/plain", "出错");
                        }
                    }
                    str3 = str12;
                    inputStreamE = f.f(k.f().A, strSubstring5);
                }
                try {
                    if (inputStreamE == null) {
                        return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "找不到文件");
                    }
                    if (strTrim.startsWith("/videoimage/")) {
                        return NanoHTTPD.newChunkedResponse(NanoHTTPD.Response.Status.OK, str3, inputStreamE);
                    }
                    if (p000if.a.f0(strTrim)) {
                        String str13 = iHTTPSession.getHeaders().get("if-none-match");
                        if (str13 == null || str13.isEmpty()) {
                            return NanoHTTPD.newChunkedResponse(NanoHTTPD.Response.Status.OK, str3, inputStreamE);
                        }
                        NanoHTTPD.Response responseNewChunkedResponse2 = NanoHTTPD.newChunkedResponse(NanoHTTPD.Response.Status.NOT_MODIFIED, str3, inputStreamE);
                        responseNewChunkedResponse2.addHeader("etag", "bytes");
                        return responseNewChunkedResponse2;
                    }
                    if (!k.f().H.equals(strSubstring5)) {
                        return NanoHTTPD.newChunkedResponse(NanoHTTPD.Response.Status.OK, str3, inputStreamE);
                    }
                    if (str2 == null) {
                        NanoHTTPD.Response responseNewFixedLengthResponse = NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, str3, inputStreamE, k.f().G);
                        responseNewFixedLengthResponse.addHeader("Content-Range", "bytes 0-" + (k.f().G - 1) + "/" + k.f().G);
                        responseNewFixedLengthResponse.addHeader("accept-ranges", "bytes");
                        return responseNewFixedLengthResponse;
                    }
                    if (str2.equals("bytes=0-")) {
                        NanoHTTPD.Response responseNewFixedLengthResponse2 = NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.PARTIAL_CONTENT, str3, inputStreamE, k.f().G);
                        responseNewFixedLengthResponse2.addHeader("Content-Range", "bytes 0-" + (k.f().G - 1) + "/" + k.f().G);
                        responseNewFixedLengthResponse2.addHeader("accept-ranges", "bytes");
                        return responseNewFixedLengthResponse2;
                    }
                    NanoHTTPD.Response responseNewFixedLengthResponse3 = NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.PARTIAL_CONTENT, str3, inputStreamE, j17);
                    responseNewFixedLengthResponse3.addHeader("Content-Range", "bytes " + j11 + "-" + j16 + "/" + k.f().G);
                    responseNewFixedLengthResponse3.addHeader("accept-ranges", "bytes");
                    return responseNewFixedLengthResponse3;
                } catch (Exception e19) {
                    e = e19;
                    inputStream2 = inputStreamE;
                    e.printStackTrace();
                    q4.a.e(inputStream2);
                    return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "不存在");
                }
            } catch (Exception e20) {
                e = e20;
                inputStream = null;
            }
        }
    }

    @Override // fi.iki.elonen.NanoHTTPD
    public void start(int i10) {
        this.isStarted = true;
        super.start(i10);
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        NsdHelper nsdHelper = kVar.s0;
        if (nsdHelper != null) {
            try {
                nsdHelper.unregisterService();
            } catch (Exception unused) {
            }
            kVar.s0 = null;
        }
        NsdHelper nsdHelper2 = new NsdHelper(kVar.f4035a);
        kVar.s0 = nsdHelper2;
        nsdHelper2.registerService(kVar.f4054j0);
    }

    @Override // fi.iki.elonen.NanoHTTPD
    public void stop() {
        super.stop();
        this.isStarted = false;
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        kVar.getClass();
        try {
            HttpMdns httpMdns = kVar.f4068r0;
            if (httpMdns != null) {
                httpMdns.stop();
            }
        } catch (Exception unused) {
        }
        NsdHelper nsdHelper = kVar.s0;
        if (nsdHelper != null) {
            nsdHelper.unregisterService();
            kVar.s0 = null;
        }
    }

    private void parseFile(PostFileData postFileData) throws Exception {
        int i10;
        byte[] bArr = postFileData.residualBuffer;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        postFileData.isStartReadFile = false;
        if (length < 50) {
            return;
        }
        int i11 = 0;
        while (true) {
            if (i11 >= length) {
                i10 = 0;
                break;
            }
            if (postFileData.isWindows) {
                if (bArr2[i11] == 13 && i11 < length - 3 && bArr2[i11 + 1] == 10 && bArr2[i11 + 2] == 13 && bArr2[i11 + 3] == 10) {
                    postFileData.isStartReadFile = true;
                    i10 = i11 + 4;
                    break;
                }
                i11++;
            } else {
                if (bArr2[i11] == 10 && i11 < length - 1 && bArr2[i11 + 1] == 10) {
                    postFileData.isStartReadFile = true;
                    i10 = i11 + 2;
                    break;
                }
                i11++;
            }
        }
        if (postFileData.isStartReadFile) {
            postFileData.residualBuffer = null;
            byte[] bArr3 = new byte[i10];
            System.arraycopy(bArr2, 0, bArr3, 0, i10);
            String str = new String(bArr3);
            postFileData.fileName = p000if.a.N(str, "filename=\"", "\"", false);
            postFileData.fileLength = Long.parseLong(p000if.a.N(str, "name=\"files-", "\"", false));
            boolean z = postFileData.isWindows;
            String str2 = SignParameters.NEW_LINE;
            postFileData.fileType = p000if.a.N(str, "Content-Type:", z ? "\r\n" : SignParameters.NEW_LINE, false).trim();
            if (str.contains("Content-Length:") && postFileData.fileLength < 10) {
                if (postFileData.isWindows) {
                    str2 = "\r\n";
                }
                postFileData.fileLength = Long.parseLong(p000if.a.N(str, "Content-Length:", str2, false).trim());
            }
            if (!postFileData.fileName.isEmpty() && postFileData.fileLength != 0 && !postFileData.fileType.isEmpty()) {
                if (postFileData.toDir.isEmpty()) {
                    StringBuilder sb2 = new StringBuilder();
                    DecimalFormat decimalFormat = k.f4034u0;
                    sb2.append(j.f4033a.f4036a0);
                    sb2.append("/");
                    sb2.append(postFileData.fileName);
                    postFileData.ls_filePath = sb2.toString();
                } else if (postFileData.toDir.equals("安装")) {
                    StringBuilder sb3 = new StringBuilder();
                    DecimalFormat decimalFormat2 = k.f4034u0;
                    sb3.append(j.f4033a.f4069s);
                    sb3.append("/");
                    sb3.append(postFileData.fileName);
                    postFileData.ls_filePath = sb3.toString();
                } else {
                    StringBuilder sb4 = new StringBuilder();
                    DecimalFormat decimalFormat3 = k.f4034u0;
                    sb4.append(j.f4033a.f4036a0);
                    sb4.append("/");
                    sb4.append(postFileData.toDir);
                    sb4.append("/");
                    sb4.append(postFileData.fileName);
                    postFileData.ls_filePath = sb4.toString();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(postFileData.ls_filePath);
                postFileData.outputStream = fileOutputStream;
                int i12 = length - i10;
                long j10 = i12;
                long j11 = postFileData.fileLength;
                if (j10 >= j11) {
                    fileOutputStream.write(bArr2, i10, (int) j11);
                    postFileData.outputStream.close();
                    postFileData.outputStream = null;
                    postFileData.isStartReadFile = false;
                    MyDb.get().lambda$addFile_thread$1(postFileData.ls_filePath);
                    if (postFileData.toDir.equals("安装")) {
                        e.b().f(new ja.a(2, postFileData.ls_filePath));
                    } else {
                        e.b().f(new c(postFileData.ls_filePath));
                    }
                    long j12 = postFileData.fileLength;
                    if (j10 > j12) {
                        int i13 = (int) j12;
                        int i14 = i12 - i13;
                        byte[] bArr4 = new byte[i14];
                        postFileData.residualBuffer = bArr4;
                        System.arraycopy(bArr2, i10 + i13, bArr4, 0, i14);
                        parseFile(postFileData);
                        return;
                    }
                    return;
                }
                postFileData.fileSaveSize = j10;
                fileOutputStream.write(bArr2, i10, i12);
                return;
            }
            throw new Exception("解析文件出错");
        }
    }
}
