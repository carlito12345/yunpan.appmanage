package qa;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.burgstaller.okhttp.AuthenticationCacheInterceptor;
import com.burgstaller.okhttp.CachingAuthenticatorDecorator;
import com.burgstaller.okhttp.DispatchingAuthenticator;
import com.burgstaller.okhttp.basic.BasicAuthenticator;
import com.burgstaller.okhttp.digest.Credentials;
import com.burgstaller.okhttp.digest.DigestAuthenticator;
import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.y;
import j$.util.concurrent.ConcurrentHashMap;
import ja.i;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import x9.n5;

/* loaded from: classes.dex */
public abstract class g {
    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(WpPathBean wpPathBean, String str, n5 n5Var) throws Throwable {
        InputStream inputStreamB;
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2;
        BufferedOutputStream bufferedOutputStream3;
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                try {
                    inputStreamB = f(n5Var, 0L, 16L, 16L).b(wpPathBean.path, Collections.emptyMap());
                } catch (Throwable th2) {
                    th = th2;
                    inputStreamB = null;
                    fileOutputStream = null;
                    bufferedOutputStream = fileOutputStream;
                    android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamB);
                    throw th;
                }
            } catch (Exception unused) {
                inputStreamB = null;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStreamB);
                try {
                    bufferedOutputStream3 = new BufferedOutputStream(fileOutputStream);
                } catch (Exception unused2) {
                    bufferedOutputStream3 = null;
                } catch (Throwable th4) {
                    th = th4;
                    bufferedOutputStream3 = null;
                }
                try {
                    byte[] bArr = new byte[1048576];
                    while (true) {
                        int i10 = bufferedInputStream2.read(bArr);
                        if (i10 == -1) {
                            android.support.v4.media.session.a.z(bufferedInputStream2, bufferedOutputStream3, fileOutputStream, inputStreamB);
                            return true;
                        }
                        bufferedOutputStream3.write(bArr, 0, i10);
                        bufferedOutputStream3.flush();
                    }
                } catch (Exception unused3) {
                    bufferedInputStream = bufferedInputStream2;
                    bufferedOutputStream2 = bufferedOutputStream3;
                    android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream2, fileOutputStream, inputStreamB);
                    return false;
                } catch (Throwable th5) {
                    th = th5;
                    bufferedInputStream = bufferedInputStream2;
                    bufferedOutputStream = bufferedOutputStream3;
                    android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamB);
                    throw th;
                }
            } catch (Exception unused4) {
                bufferedOutputStream2 = 0;
            } catch (Throwable th6) {
                th = th6;
                bufferedOutputStream = 0;
            }
        } catch (Exception unused5) {
            fileOutputStream = null;
            bufferedOutputStream2 = fileOutputStream;
            android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream2, fileOutputStream, inputStreamB);
            return false;
        } catch (Throwable th7) {
            th = th7;
            fileOutputStream = null;
            bufferedOutputStream = fileOutputStream;
            android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamB);
            throw th;
        }
    }

    public static WpPathBean b(WpPathBean wpPathBean, String str, n5 n5Var) {
        try {
            p000if.a.M0(f(n5Var, 20L, 16L, 16L).f13722a.newCall(new Request.Builder().url(r9.a.f(wpPathBean.path + str)).method("MKCOL", null).build()).execute());
            WpPathBean wpPathBean2 = new WpPathBean(str, wpPathBean.path + str + "/");
            wpPathBean2.is_dir = true;
            DecimalFormat decimalFormat = k.f4034u0;
            wpPathBean2.time_txt = j.f4033a.f4038b0.format(new Date());
            return wpPathBean2;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x009c A[Catch: all -> 0x0099, TryCatch #7 {all -> 0x0099, blocks: (B:40:0x0077, B:46:0x009c), top: B:58:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00b3  */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String c(FtpCopyProgressBean ftpCopyProgressBean, String str, String str2) throws Throwable {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        BufferedInputStream bufferedInputStream;
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2;
        InputStream inputStream2;
        InputStream inputStreamB;
        String str3;
        String str4 = "";
        BufferedInputStream bufferedInputStream2 = null;
        try {
            r9.a aVarF = f(ftpCopyProgressBean.userInfo, 0L, 16L, 16L);
            System.out.getClass();
            inputStreamB = aVarF.b(str, Collections.emptyMap());
        } catch (Exception e7) {
            e = e7;
            fileOutputStream = null;
            bufferedInputStream = null;
            bufferedOutputStream = 0;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
            fileOutputStream = null;
        }
        try {
            fileOutputStream = new FileOutputStream(str2);
            try {
                bufferedInputStream = new BufferedInputStream(inputStreamB);
                try {
                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    try {
                        byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
                        while (true) {
                            int i10 = bufferedInputStream.read(bArr);
                            if (i10 == -1) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, i10);
                            bufferedOutputStream.flush();
                            ftpCopyProgressBean.size_success.getAndAdd(i10);
                            if (ftpCopyProgressBean.isStop) {
                                str4 = "主动停止任务";
                                break;
                            }
                        }
                        android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStreamB);
                    } catch (Exception e10) {
                        e = e10;
                        bufferedInputStream2 = inputStreamB;
                        bufferedOutputStream = bufferedOutputStream;
                        try {
                            e.printStackTrace();
                            str3 = e.getMessage() + "";
                            if (!str3.contains("No such file or directory")) {
                            }
                            str4 = str3;
                            android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, bufferedInputStream2);
                            if (new File(str2).exists()) {
                            }
                            return str4;
                        } catch (Throwable th3) {
                            th = th3;
                            inputStreamB = bufferedInputStream2;
                            bufferedInputStream2 = bufferedInputStream;
                            bufferedOutputStream2 = bufferedOutputStream;
                            inputStream2 = inputStreamB;
                            android.support.v4.media.session.a.z(bufferedInputStream2, bufferedOutputStream2, fileOutputStream, inputStream2);
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        bufferedInputStream2 = bufferedInputStream;
                        bufferedOutputStream2 = bufferedOutputStream;
                        inputStream2 = inputStreamB;
                        android.support.v4.media.session.a.z(bufferedInputStream2, bufferedOutputStream2, fileOutputStream, inputStream2);
                        throw th;
                    }
                } catch (Exception e11) {
                    e = e11;
                    bufferedOutputStream = 0;
                } catch (Throwable th5) {
                    th = th5;
                    bufferedOutputStream = 0;
                }
            } catch (Exception e12) {
                e = e12;
                bufferedInputStream = null;
                bufferedOutputStream = bufferedInputStream;
                bufferedInputStream2 = inputStreamB;
                bufferedOutputStream = bufferedOutputStream;
                e.printStackTrace();
                str3 = e.getMessage() + "";
                if (!str3.contains("No such file or directory")) {
                    str3 = "找不到此文件/目录";
                } else if (str3.isEmpty()) {
                    str3 = "下载失败";
                }
                str4 = str3;
                android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, bufferedInputStream2);
                if (new File(str2).exists()) {
                }
                return str4;
            } catch (Throwable th6) {
                th = th6;
                bufferedOutputStream2 = 0;
                inputStream2 = inputStreamB;
                android.support.v4.media.session.a.z(bufferedInputStream2, bufferedOutputStream2, fileOutputStream, inputStream2);
                throw th;
            }
        } catch (Exception e13) {
            e = e13;
            fileOutputStream = null;
            bufferedInputStream = null;
        } catch (Throwable th7) {
            th = th7;
            fileOutputStream = null;
            inputStream = inputStreamB;
            bufferedOutputStream2 = fileOutputStream;
            inputStream2 = inputStream;
            android.support.v4.media.session.a.z(bufferedInputStream2, bufferedOutputStream2, fileOutputStream, inputStream2);
            throw th;
        }
        if (new File(str2).exists()) {
            MyDb.get().lambda$addFile_thread$1(str2);
        }
        return str4;
    }

    public static boolean d(FtpCopyProgressBean ftpCopyProgressBean, WpPathBean wpPathBean) {
        try {
            if (ftpCopyProgressBean.isStop) {
                return false;
            }
            String strReplace = wpPathBean.path.replace(ftpCopyProgressBean.rootDirPath_form, ftpCopyProgressBean.rootDirPath_to);
            System.out.getClass();
            new File(strReplace).mkdir();
            if (new File(strReplace).exists()) {
                MyDb.get().lambda$addFile_thread$1(strReplace);
            }
            for (q9.a aVar : f(ftpCopyProgressBean.userInfo, 60L, 16L, 16L).c(wpPathBean.path)) {
                v3.f fVar = aVar.f13172b;
                if (((Date) fVar.f16474b).getTime() != 0) {
                    WpPathBean wpPathBean2 = new WpPathBean(aVar.a(), wpPathBean.path + aVar.a());
                    String str = wpPathBean2.name;
                    if (str != null && !str.isEmpty() && (v.f4106a.f4129l0 || !wpPathBean2.name.startsWith("."))) {
                        wpPathBean2.is_dir = "httpd/unix-directory".equals((String) aVar.f13172b.f16475c);
                        DecimalFormat decimalFormat = k.f4034u0;
                        wpPathBean2.time_txt = j.f4033a.f4038b0.format((Date) fVar.f16474b);
                        if (wpPathBean2.is_dir) {
                            wpPathBean2.path += "/";
                            if (!d(ftpCopyProgressBean, wpPathBean2)) {
                                return false;
                            }
                        } else {
                            long jLongValue = ((Long) fVar.f16476d).longValue();
                            wpPathBean2.size_long = jLongValue;
                            wpPathBean2.size_txt = p000if.a.D0(jLongValue);
                            ftpCopyProgressBean.filePaths.add(wpPathBean2);
                        }
                    }
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static InputStream e(long j10, String str, n5 n5Var) {
        r9.a aVarF = f(n5Var, 2620L, 2620L, 2210L);
        if (j10 <= 0) {
            return aVarF.b(str, Collections.emptyMap());
        }
        HashMap map = new HashMap();
        map.put(HttpHeaders.RANGE, "bytes=" + j10 + "-");
        return aVarF.b(str, map);
    }

    public static r9.a f(n5 n5Var, long j10, long j11, long j12) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.callTimeout(j10, timeUnit).readTimeout(j11, timeUnit).writeTimeout(j12, timeUnit);
        try {
            hh.c cVar = va.a.f16719d;
            builder.sslSocketFactory(new va.a(cVar), cVar);
            builder.hostnameVerifier(i9.b.f8650b);
        } catch (Exception unused) {
        }
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Credentials credentials = new Credentials(n5Var.f18294e, n5Var.f18295f);
        return new r9.a(builder.authenticator(new CachingAuthenticatorDecorator(new DispatchingAuthenticator.Builder().with(CMSAttributeTableGenerator.DIGEST, new DigestAuthenticator(credentials)).with("basic", new BasicAuthenticator(credentials)).build(), concurrentHashMap)).addInterceptor(new AuthenticationCacheInterceptor(concurrentHashMap)).build());
    }

    public static void g(WpTaskBean wpTaskBean, u uVar) {
        String strSubstring;
        String strReplace;
        try {
            String strReplace2 = wpTaskBean.wpPathInfo.path + wpTaskBean.bdPathInfo.f18364a;
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            builder.callTimeout(0L, timeUnit).connectTimeout(16L, timeUnit).readTimeout(16L, timeUnit).writeTimeout(16L, timeUnit);
            try {
                hh.c cVar = va.a.f16719d;
                builder.sslSocketFactory(new va.a(cVar), cVar);
                builder.hostnameVerifier(i9.b.f8650b);
            } catch (Exception unused) {
            }
            if (!wpTaskBean.userInfo.f18294e.isEmpty()) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                n5 n5Var = wpTaskBean.userInfo;
                Credentials credentials = new Credentials(n5Var.f18294e, n5Var.f18295f);
                builder.authenticator(new CachingAuthenticatorDecorator(new DispatchingAuthenticator.Builder().with(CMSAttributeTableGenerator.DIGEST, new DigestAuthenticator(credentials)).with("basic", new BasicAuthenticator(credentials)).build(), concurrentHashMap));
                builder.addInterceptor(new AuthenticationCacheInterceptor(concurrentHashMap));
            }
            builder.retryOnConnectionFailure(false);
            j9.a aVar = new j9.a("webdav");
            aVar.d(2);
            aVar.f9811b = Level.INFO;
            builder.addInterceptor(aVar);
            if (wpTaskBean.bdPathInfo.f18364a.contains(".")) {
                String str = wpTaskBean.bdPathInfo.f18364a;
                strSubstring = str.substring(str.lastIndexOf(".") + 1);
            } else {
                strSubstring = "";
            }
            if (!strSubstring.isEmpty()) {
                HashMap mapA = y.a();
                if (mapA.keySet().contains(strSubstring)) {
                }
            }
            i iVar = new i(wpTaskBean, RequestBody.create(MediaType.parse("application/octet-stream"), new File(wpTaskBean.bdPathInfo.f18365b)), new ma.b(wpTaskBean, 3, uVar));
            Request.Builder builder2 = new Request.Builder();
            try {
                strReplace = strReplace2.replace("%", "%25").replace("#", "%23");
            } catch (Exception unused2) {
                strReplace = strReplace2;
            }
            Request requestBuild = builder2.url(strReplace).put(iVar).build();
            wpTaskBean.isTask_stop = false;
            wpTaskBean.upload_state = -1;
            OkHttpClient okHttpClientBuild = builder.build();
            if (!wpTaskBean.userInfo.f18294e.isEmpty()) {
                try {
                    System.out.getClass();
                    Request.Builder builder3 = new Request.Builder();
                    try {
                        strReplace2 = strReplace2.replace("%", "%25").replace("#", "%23");
                    } catch (Exception unused3) {
                    }
                    Response responseExecute = okHttpClientBuild.newCall(builder3.url(strReplace2).method("OPTIONS", null).build()).execute();
                    responseExecute.code();
                    responseExecute.close();
                } catch (Exception e7) {
                    System.out.getClass();
                    e7.printStackTrace();
                }
            }
            try {
                okHttpClientBuild.newCall(requestBuild).execute();
                wpTaskBean.upload_state = 0;
            } catch (Exception e10) {
                wpTaskBean.upload_state = 1;
                e10.printStackTrace();
            }
            System.out.getClass();
            if (wpTaskBean.isTask_stop) {
                throw new Exception("已主动停止");
            }
            if (wpTaskBean.upload_state != 0) {
                throw new Exception("失败：上传出错");
            }
            wpTaskBean.str_state = "";
            wpTaskBean.str1 = "上传完成";
        } catch (Exception unused4) {
            wpTaskBean.str_state = "";
            if (wpTaskBean.isTask_stop) {
                wpTaskBean.str1 = "已主动停止";
            } else {
                wpTaskBean.str1 = "上传失败";
            }
        }
    }
}
