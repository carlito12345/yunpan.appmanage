package qa;

import ce.t0;
import ce.x0;
import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.msfscc.FileAttributes;
import com.hierynomus.msfscc.fileinformation.FileIdBothDirectoryInformation;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2CreateOptions;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.smbj.SMBClient;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.auth.AuthenticationContext;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.DiskShare;
import com.hierynomus.smbj.share.File;
import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.bean.JcifsBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import vd.s;
import vd.x;
import x9.n5;

/* loaded from: classes.dex */
public abstract class f {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0173 A[EXC_TOP_SPLITTER, PHI: r3
  0x0173: PHI (r3v31 com.hierynomus.smbj.connection.Connection) = 
  (r3v30 com.hierynomus.smbj.connection.Connection)
  (r3v33 com.hierynomus.smbj.connection.Connection)
  (r3v33 com.hierynomus.smbj.connection.Connection)
 binds: [B:122:0x01d6, B:132:0x0173, B:78:0x0170] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r13v7, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r5v20, types: [com.hierynomus.smbj.share.DiskShare, com.hierynomus.smbj.share.Share] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(WpPathBean wpPathBean, String str, n5 n5Var) throws Throwable {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        ?? r11;
        ?? r112;
        BufferedInputStream bufferedInputStream;
        BufferedOutputStream bufferedOutputStream;
        Session sessionAuthenticate;
        Connection connectionConnect;
        InputStream inputStream2;
        InputStream inputStream3;
        InputStream inputStream4;
        InputStream inputStream5;
        InputStream inputStream6;
        InputStream inputStream7;
        InputStream inputStream8;
        InputStream inputStream9;
        ?? bufferedOutputStream2;
        InputStream inputStream10;
        ?? r12;
        InputStream inputStream11;
        ?? r122;
        InputStream inputStream12;
        ?? r5;
        FileOutputStream fileOutputStream2;
        BufferedInputStream bufferedInputStream2;
        long j10;
        BufferedInputStream bufferedInputStream3 = null;
        if (n5Var.f18308u) {
            try {
                inputStream = new t0(n5Var.b() + wpPathBean.path).getInputStream();
                try {
                    fileOutputStream = new FileOutputStream(str);
                    try {
                        bufferedInputStream = new BufferedInputStream(inputStream);
                        try {
                            bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                        } catch (Exception unused) {
                            bufferedOutputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream = null;
                        }
                    } catch (Exception unused2) {
                        r112 = 0;
                    } catch (Throwable th3) {
                        th = th3;
                        r11 = 0;
                    }
                } catch (Exception unused3) {
                    fileOutputStream = null;
                    r112 = fileOutputStream;
                    android.support.v4.media.session.a.z(bufferedInputStream3, r112, fileOutputStream, inputStream);
                    return false;
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                    r11 = fileOutputStream;
                    android.support.v4.media.session.a.z(bufferedInputStream3, r11, fileOutputStream, inputStream);
                    throw th;
                }
            } catch (Exception unused4) {
                inputStream = null;
                fileOutputStream = null;
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
                fileOutputStream = null;
            }
            try {
                byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
                long j11 = 0;
                while (true) {
                    int i10 = bufferedInputStream.read(bArr);
                    if (i10 == -1) {
                        break;
                    }
                    bufferedOutputStream.write(bArr, 0, i10);
                    bufferedOutputStream.flush();
                    j11 += i10;
                }
                if (j11 >= wpPathBean.size_long) {
                    android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStream);
                    return true;
                }
                android.support.v4.media.session.a.z(bufferedInputStream, bufferedOutputStream, fileOutputStream, inputStream);
            } catch (Exception unused5) {
                bufferedInputStream3 = bufferedInputStream;
                r112 = bufferedOutputStream;
                android.support.v4.media.session.a.z(bufferedInputStream3, r112, fileOutputStream, inputStream);
                return false;
            } catch (Throwable th6) {
                th = th6;
                bufferedInputStream3 = bufferedInputStream;
                r11 = bufferedOutputStream;
                android.support.v4.media.session.a.z(bufferedInputStream3, r11, fileOutputStream, inputStream);
                throw th;
            }
        } else {
            int iIndexOf = wpPathBean.path.indexOf("/", 1);
            String strSubstring = wpPathBean.path.substring(1, iIndexOf);
            String strReplace = wpPathBean.path.substring(iIndexOf + 1).replace("//", "/").replace("/", "\\");
            SmbConfig.Builder builderWithMultiProtocolNegotiate = SmbConfig.builder().withMultiProtocolNegotiate(true);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            SMBClient sMBClient = new SMBClient(builderWithMultiProtocolNegotiate.withTimeout(20L, timeUnit).withSoTimeout(20L, timeUnit).build());
            try {
                connectionConnect = sMBClient.connect(n5Var.f18292c, n5Var.f18293d);
                try {
                    sessionAuthenticate = connectionConnect.authenticate(n5Var.f18294e.isEmpty() ? AuthenticationContext.guest() : new AuthenticationContext(n5Var.f18294e, n5Var.f18295f.toCharArray(), n5Var.f18309v));
                } catch (Exception unused6) {
                    sessionAuthenticate = null;
                    inputStream3 = null;
                } catch (Throwable th7) {
                    th = th7;
                    sessionAuthenticate = null;
                    inputStream2 = null;
                }
                try {
                    r5 = (DiskShare) sessionAuthenticate.connectShare(strSubstring);
                } catch (Exception unused7) {
                    inputStream3 = null;
                    inputStream4 = inputStream3;
                    inputStream7 = inputStream3;
                    inputStream8 = inputStream4;
                    inputStream10 = inputStream7;
                    bufferedOutputStream2 = inputStream8;
                    inputStream12 = inputStream10;
                    r122 = inputStream8;
                    android.support.v4.media.session.a.z(bufferedInputStream3, bufferedOutputStream2, r122, inputStream4);
                    if (inputStream12 != null) {
                        try {
                            inputStream12.close();
                        } catch (Exception unused8) {
                        }
                    }
                    if (sessionAuthenticate != null) {
                        try {
                            sessionAuthenticate.close();
                        } catch (Exception unused9) {
                        }
                    }
                    if (connectionConnect != null) {
                        try {
                            connectionConnect.close();
                        } catch (Exception unused10) {
                        }
                    }
                    try {
                        sMBClient.close();
                    } catch (Exception unused11) {
                    }
                    return false;
                } catch (Throwable th8) {
                    th = th8;
                    inputStream2 = null;
                    inputStream4 = inputStream2;
                    inputStream5 = inputStream2;
                    inputStream6 = inputStream4;
                    inputStream9 = inputStream5;
                    bufferedOutputStream2 = inputStream6;
                    inputStream11 = inputStream9;
                    r12 = inputStream6;
                    android.support.v4.media.session.a.z(bufferedInputStream3, bufferedOutputStream2, r12, inputStream4);
                    if (inputStream11 != null) {
                        try {
                            inputStream11.close();
                        } catch (Exception unused12) {
                        }
                    }
                    if (sessionAuthenticate != null) {
                        try {
                            sessionAuthenticate.close();
                        } catch (Exception unused13) {
                        }
                    }
                    if (connectionConnect != null) {
                        try {
                            connectionConnect.close();
                        } catch (Exception unused14) {
                        }
                    }
                    try {
                        sMBClient.close();
                        throw th;
                    } catch (Exception unused15) {
                        throw th;
                    }
                }
            } catch (Exception unused16) {
                sessionAuthenticate = null;
                connectionConnect = null;
                inputStream3 = null;
            } catch (Throwable th9) {
                th = th9;
                sessionAuthenticate = null;
                connectionConnect = null;
                inputStream2 = null;
            }
            try {
                HashSet hashSet = new HashSet();
                hashSet.add(AccessMask.GENERIC_READ);
                HashSet hashSet2 = new HashSet();
                hashSet2.add(SMB2ShareAccess.FILE_SHARE_READ);
                inputStream4 = r5.openFile(strReplace, hashSet, null, hashSet2, SMB2CreateDisposition.FILE_OPEN, null).getInputStream();
                try {
                    fileOutputStream2 = new FileOutputStream(str);
                    try {
                        bufferedInputStream2 = new BufferedInputStream(inputStream4);
                        try {
                            bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream2);
                        } catch (Exception unused17) {
                            bufferedOutputStream2 = null;
                        } catch (Throwable th10) {
                            th = th10;
                            bufferedOutputStream2 = null;
                        }
                        try {
                            byte[] bArr2 = new byte[PKIFailureInfo.signerNotTrusted];
                            j10 = 0;
                            while (true) {
                                int i11 = bufferedInputStream2.read(bArr2);
                                if (i11 == -1) {
                                    break;
                                }
                                bufferedOutputStream2.write(bArr2, 0, i11);
                                bufferedOutputStream2.flush();
                                j10 += i11;
                            }
                        } catch (Exception unused18) {
                            bufferedInputStream3 = bufferedInputStream2;
                            inputStream12 = r5;
                            r122 = fileOutputStream2;
                            android.support.v4.media.session.a.z(bufferedInputStream3, bufferedOutputStream2, r122, inputStream4);
                            if (inputStream12 != null) {
                            }
                            if (sessionAuthenticate != null) {
                            }
                            if (connectionConnect != null) {
                            }
                            sMBClient.close();
                            return false;
                        } catch (Throwable th11) {
                            th = th11;
                            bufferedInputStream3 = bufferedInputStream2;
                            inputStream11 = r5;
                            r12 = fileOutputStream2;
                            android.support.v4.media.session.a.z(bufferedInputStream3, bufferedOutputStream2, r12, inputStream4);
                            if (inputStream11 != null) {
                            }
                            if (sessionAuthenticate != null) {
                            }
                            if (connectionConnect != null) {
                            }
                            sMBClient.close();
                            throw th;
                        }
                    } catch (Exception unused19) {
                        bufferedOutputStream2 = null;
                        inputStream12 = r5;
                        r122 = fileOutputStream2;
                    } catch (Throwable th12) {
                        th = th12;
                        bufferedOutputStream2 = null;
                        inputStream11 = r5;
                        r12 = fileOutputStream2;
                    }
                } catch (Exception unused20) {
                    inputStream8 = null;
                    inputStream10 = r5;
                    bufferedOutputStream2 = inputStream8;
                    inputStream12 = inputStream10;
                    r122 = inputStream8;
                    android.support.v4.media.session.a.z(bufferedInputStream3, bufferedOutputStream2, r122, inputStream4);
                    if (inputStream12 != null) {
                    }
                    if (sessionAuthenticate != null) {
                    }
                    if (connectionConnect != null) {
                    }
                    sMBClient.close();
                    return false;
                } catch (Throwable th13) {
                    th = th13;
                    inputStream6 = null;
                    inputStream9 = r5;
                    bufferedOutputStream2 = inputStream6;
                    inputStream11 = inputStream9;
                    r12 = inputStream6;
                    android.support.v4.media.session.a.z(bufferedInputStream3, bufferedOutputStream2, r12, inputStream4);
                    if (inputStream11 != null) {
                    }
                    if (sessionAuthenticate != null) {
                    }
                    if (connectionConnect != null) {
                    }
                    sMBClient.close();
                    throw th;
                }
            } catch (Exception unused21) {
                inputStream4 = null;
                inputStream7 = r5;
                inputStream8 = inputStream4;
                inputStream10 = inputStream7;
                bufferedOutputStream2 = inputStream8;
                inputStream12 = inputStream10;
                r122 = inputStream8;
                android.support.v4.media.session.a.z(bufferedInputStream3, bufferedOutputStream2, r122, inputStream4);
                if (inputStream12 != null) {
                }
                if (sessionAuthenticate != null) {
                }
                if (connectionConnect != null) {
                }
                sMBClient.close();
                return false;
            } catch (Throwable th14) {
                th = th14;
                inputStream4 = null;
                inputStream5 = r5;
                inputStream6 = inputStream4;
                inputStream9 = inputStream5;
                bufferedOutputStream2 = inputStream6;
                inputStream11 = inputStream9;
                r12 = inputStream6;
                android.support.v4.media.session.a.z(bufferedInputStream3, bufferedOutputStream2, r12, inputStream4);
                if (inputStream11 != null) {
                }
                if (sessionAuthenticate != null) {
                }
                if (connectionConnect != null) {
                }
                sMBClient.close();
                throw th;
            }
            if (j10 >= wpPathBean.size_long) {
                android.support.v4.media.session.a.z(bufferedInputStream2, bufferedOutputStream2, fileOutputStream2, inputStream4);
                try {
                    r5.close();
                } catch (Exception unused22) {
                }
                try {
                    sessionAuthenticate.close();
                } catch (Exception unused23) {
                }
                try {
                    connectionConnect.close();
                } catch (Exception unused24) {
                }
                try {
                    sMBClient.close();
                } catch (Exception unused25) {
                }
                return true;
            }
            android.support.v4.media.session.a.z(bufferedInputStream2, bufferedOutputStream2, fileOutputStream2, inputStream4);
            try {
                r5.close();
            } catch (Exception unused26) {
            }
            try {
                sessionAuthenticate.close();
            } catch (Exception unused27) {
            }
            connectionConnect.close();
            sMBClient.close();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.hierynomus.smbj.SmbConfig] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v0, types: [x9.n5] */
    /* JADX WARN: Type inference failed for: r10v13, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r10v7, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    public static WpPathBean b(WpPathBean wpPathBean, String str, n5 n5Var) {
        DiskShare diskShare;
        AutoCloseable autoCloseable = null;
        if (n5Var.f18308u) {
            try {
                new t0(n5Var.b() + "/" + str).y();
                WpPathBean wpPathBean2 = new WpPathBean(str, wpPathBean.path + str + "/");
                DecimalFormat decimalFormat = k.f4034u0;
                wpPathBean2.time_txt = j.f4033a.f4038b0.format(new Date());
                return wpPathBean2;
            } catch (Exception e7) {
                (e7.getMessage() + "").contains("system cannot find the file");
                return null;
            }
        }
        SmbConfig.Builder builderWithMultiProtocolNegotiate = SmbConfig.builder().withMultiProtocolNegotiate(true);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        ?? Build = builderWithMultiProtocolNegotiate.withTimeout(18L, timeUnit).withSoTimeout(18L, timeUnit).build();
        SMBClient sMBClient = new SMBClient(Build);
        try {
            try {
                Build = sMBClient.connect(n5Var.f18292c, n5Var.f18293d);
                try {
                    n5Var = Build.authenticate(n5Var.f18294e.isEmpty() ? AuthenticationContext.guest() : new AuthenticationContext(n5Var.f18294e, n5Var.f18295f.toCharArray(), n5Var.f18309v));
                    try {
                        int iIndexOf = wpPathBean.path.indexOf("/", 1);
                        if (iIndexOf == -1) {
                            throw new Exception("共享名错误");
                        }
                        String strSubstring = wpPathBean.path.substring(1, iIndexOf);
                        String strSubstring2 = wpPathBean.path.substring(iIndexOf);
                        diskShare = (DiskShare) n5Var.connectShare(strSubstring);
                        try {
                            diskShare.mkdir(strSubstring2 + str);
                            WpPathBean wpPathBean3 = new WpPathBean(str, wpPathBean.path + str + "/");
                            DecimalFormat decimalFormat2 = k.f4034u0;
                            wpPathBean3.time_txt = j.f4033a.f4038b0.format(new Date());
                            try {
                                diskShare.close();
                            } catch (Exception unused) {
                            }
                            try {
                                n5Var.close();
                            } catch (Exception unused2) {
                            }
                            try {
                                Build.close();
                            } catch (Exception unused3) {
                            }
                            try {
                                sMBClient.close();
                            } catch (Exception unused4) {
                            }
                            return wpPathBean3;
                        } catch (Exception e10) {
                            e = e10;
                            i(e);
                            if (diskShare != null) {
                                try {
                                    diskShare.close();
                                } catch (Exception unused5) {
                                }
                            }
                            if (n5Var != 0) {
                                try {
                                    n5Var.close();
                                } catch (Exception unused6) {
                                }
                            }
                            if (Build != 0) {
                                try {
                                    Build.close();
                                } catch (Exception unused7) {
                                }
                            }
                            try {
                                sMBClient.close();
                            } catch (Exception unused8) {
                            }
                            return null;
                        }
                    } catch (Exception e11) {
                        e = e11;
                        diskShare = null;
                    } catch (Throwable th2) {
                        th = th2;
                        if (autoCloseable != null) {
                            try {
                                autoCloseable.close();
                            } catch (Exception unused9) {
                            }
                        }
                        if (n5Var != 0) {
                            try {
                                n5Var.close();
                            } catch (Exception unused10) {
                            }
                        }
                        if (Build != 0) {
                            try {
                                Build.close();
                            } catch (Exception unused11) {
                            }
                        }
                        try {
                            sMBClient.close();
                            throw th;
                        } catch (Exception unused12) {
                            throw th;
                        }
                    }
                } catch (Exception e12) {
                    e = e12;
                    n5Var = 0;
                    diskShare = null;
                } catch (Throwable th3) {
                    th = th3;
                    n5Var = 0;
                }
            } catch (Throwable th4) {
                th = th4;
                autoCloseable = 1;
            }
        } catch (Exception e13) {
            e = e13;
            n5Var = 0;
            Build = 0;
            diskShare = null;
        } catch (Throwable th5) {
            th = th5;
            n5Var = 0;
            Build = 0;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:28:0x0078
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12, types: [java.io.BufferedOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v25, types: [com.hierynomus.smbj.share.Share] */
    /* JADX WARN: Type inference failed for: r11v26, types: [com.hierynomus.smbj.share.Share] */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r11v33, types: [com.hierynomus.smbj.share.DiskShare, com.hierynomus.smbj.share.Share] */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v39 */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* JADX WARN: Type inference failed for: r11v45 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v15, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v13, types: [java.io.BufferedOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r15v2, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r15v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    public static java.lang.String c(com.yunpan.appmanage.bean.FtpCopyProgressBean r20, java.lang.String r21, java.lang.String r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: qa.f.c(com.yunpan.appmanage.bean.FtpCopyProgressBean, java.lang.String, java.lang.String):java.lang.String");
    }

    public static void d(DiskShare diskShare, String str, String str2) {
        DiskShare diskShare2 = diskShare;
        String str3 = str;
        try {
            diskShare2.mkdir(str2);
        } catch (Exception unused) {
        }
        HashSet hashSet = new HashSet();
        hashSet.add(AccessMask.GENERIC_ALL);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(SMB2CreateOptions.FILE_RANDOM_ACCESS);
        for (FileIdBothDirectoryInformation fileIdBothDirectoryInformation : diskShare2.list(str3.replace("//", "/").replace("/", "\\"))) {
            String fileName = fileIdBothDirectoryInformation.getFileName();
            if (!fileName.replace(".", "").isEmpty()) {
                String strConcat = str3.concat(fileName);
                String strJ = g.b.j(str2, fileName);
                if ((fileIdBothDirectoryInformation.getFileAttributes() & FileAttributes.FILE_ATTRIBUTE_DIRECTORY.getValue()) != 0) {
                    d(diskShare2, g.b.j(strConcat, "/"), strJ + "/");
                } else {
                    String strSubstring = strConcat.replace("//", "/").replace("/", "\\").substring(1);
                    Set<SMB2ShareAccess> set = SMB2ShareAccess.ALL;
                    File fileOpenFile = diskShare.openFile(strSubstring, hashSet, null, set, SMB2CreateDisposition.FILE_OPEN, null);
                    File fileOpenFile2 = diskShare.openFile(strJ.replace("//", "/").replace("/", "\\").substring(1), hashSet, null, set, SMB2CreateDisposition.FILE_OVERWRITE_IF, hashSet2);
                    try {
                        fileOpenFile.remoteCopyTo(fileOpenFile2);
                    } catch (Exception unused2) {
                    } catch (Throwable th2) {
                        fileOpenFile.close();
                        fileOpenFile2.close();
                        throw th2;
                    }
                    fileOpenFile.close();
                    fileOpenFile2.close();
                }
                diskShare2 = diskShare;
                str3 = str;
            }
        }
    }

    public static JcifsBean e(n5 n5Var, String str) {
        JcifsBean jcifsBean = new JcifsBean();
        jcifsBean.url = str;
        if (n5Var.f18308u) {
            try {
                jcifsBean.in = new t0(n5Var.b() + str).getInputStream();
            } catch (Exception e7) {
                e7.printStackTrace();
                q4.a.e(jcifsBean.in);
                return null;
            }
        } else {
            int iIndexOf = str.indexOf("/", 1);
            String strSubstring = str.substring(1, iIndexOf);
            String strReplace = str.substring(iIndexOf + 1).replace("/", "\\");
            System.out.getClass();
            SmbConfig.Builder builderWithMultiProtocolNegotiate = SmbConfig.builder().withMultiProtocolNegotiate(true);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            try {
                SMBClient sMBClient = new SMBClient(builderWithMultiProtocolNegotiate.withTimeout(0L, timeUnit).withSoTimeout(0L, timeUnit).withReadTimeout(0L, timeUnit).build());
                jcifsBean.client = sMBClient;
                jcifsBean.connection = sMBClient.connect(n5Var.f18292c, n5Var.f18293d);
                Session sessionAuthenticate = jcifsBean.connection.authenticate(n5Var.f18294e.isEmpty() ? AuthenticationContext.guest() : new AuthenticationContext(n5Var.f18294e, n5Var.f18295f.toCharArray(), n5Var.f18309v));
                jcifsBean.session = sessionAuthenticate;
                jcifsBean.share = (DiskShare) sessionAuthenticate.connectShare(strSubstring);
                HashSet hashSet = new HashSet();
                hashSet.add(AccessMask.GENERIC_READ);
                HashSet hashSet2 = new HashSet();
                hashSet2.add(SMB2ShareAccess.FILE_SHARE_READ);
                jcifsBean.in = jcifsBean.share.openFile(strReplace, hashSet, null, hashSet2, SMB2CreateDisposition.FILE_OPEN, null).getInputStream();
            } catch (Exception unused) {
                DiskShare diskShare = jcifsBean.share;
                if (diskShare != null) {
                    try {
                        diskShare.close();
                    } catch (Exception unused2) {
                    }
                    jcifsBean.share = null;
                }
                Session session = jcifsBean.session;
                if (session != null) {
                    try {
                        session.close();
                    } catch (Exception unused3) {
                    }
                    jcifsBean.session = null;
                }
                Connection connection = jcifsBean.connection;
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (Exception unused4) {
                    }
                    jcifsBean.connection = null;
                }
                SMBClient sMBClient2 = jcifsBean.client;
                if (sMBClient2 != null) {
                    try {
                        sMBClient2.close();
                    } catch (Exception unused5) {
                    }
                    jcifsBean.client = null;
                }
                return null;
            }
        }
        return jcifsBean;
    }

    public static InputStream f(n5 n5Var, String str) {
        if (n5Var.f18308u) {
            return new t0(n5Var.b() + str).getInputStream();
        }
        Properties properties = new Properties();
        if (!n5Var.f18309v.isEmpty()) {
            properties.setProperty("jcifs.smb.client.domain", n5Var.f18309v);
        }
        properties.setProperty("jcifs.smb.client.username", n5Var.f18294e);
        properties.setProperty("jcifs.smb.client.password", n5Var.f18295f);
        xc.a aVar = new xc.a(new wc.a(properties));
        StringBuilder sb2 = new StringBuilder("smb://");
        sb2.append(n5Var.f18292c);
        sb2.append(":");
        return new s(android.support.v4.media.session.a.s(sb2, n5Var.f18293d, str), aVar).getInputStream();
    }

    public static Object g(n5 n5Var, String str) {
        if (n5Var.f18308u) {
            return new x0(new t0(n5Var.b() + str));
        }
        Properties properties = new Properties();
        if (!n5Var.f18309v.isEmpty()) {
            properties.setProperty("jcifs.smb.client.domain", n5Var.f18309v);
        }
        properties.setProperty("jcifs.smb.client.username", n5Var.f18294e);
        properties.setProperty("jcifs.smb.client.password", n5Var.f18295f);
        xc.a aVar = new xc.a(new wc.a(properties));
        StringBuilder sb2 = new StringBuilder("smb://");
        sb2.append(n5Var.f18292c);
        sb2.append(":");
        return new x(new s(android.support.v4.media.session.a.s(sb2, n5Var.f18293d, str), aVar));
    }

    public static void h(FtpCopyProgressBean ftpCopyProgressBean, WpPathBean wpPathBean) {
        if (ftpCopyProgressBean.isStop) {
            return;
        }
        String strReplace = (ftpCopyProgressBean.rootDirPath_to + "/" + wpPathBean.path.substring(ftpCopyProgressBean.rootDirPath_form.length())).replace("//", "/");
        System.out.getClass();
        new java.io.File(strReplace).mkdir();
        if (new java.io.File(strReplace).exists()) {
            MyDb.get().lambda$addFile_thread$1(strReplace);
        }
        try {
            for (t0 t0Var : new t0(ftpCopyProgressBean.userInfo.b() + wpPathBean.path).x()) {
                WpPathBean wpPathBean2 = new WpPathBean();
                String strP = t0Var.p();
                wpPathBean2.name = strP;
                if (v.f4106a.f4129l0 || !strP.startsWith(".")) {
                    DecimalFormat decimalFormat = k.f4034u0;
                    wpPathBean2.time_txt = j.f4033a.f4038b0.format(Long.valueOf(t0Var.getLastModified()));
                    boolean zU = t0Var.u();
                    wpPathBean2.is_dir = zU;
                    if (zU) {
                        if (wpPathBean2.name.endsWith("/")) {
                            wpPathBean2.name = wpPathBean2.name.substring(0, r5.length() - 1);
                        }
                        wpPathBean2.path = wpPathBean.path + wpPathBean2.name + "/";
                        h(ftpCopyProgressBean, wpPathBean2);
                    } else {
                        wpPathBean2.path = wpPathBean.path + "/" + wpPathBean2.name;
                        long jW = t0Var.w();
                        wpPathBean2.size_long = jW;
                        wpPathBean2.size_txt = p000if.a.D0((double) jW);
                        ftpCopyProgressBean.filePaths.add(wpPathBean2);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public static String i(Exception exc) {
        exc.printStackTrace();
        String strReplace = ("" + exc.getMessage()).replace("com.hierynomus.smbj", "");
        if (strReplace.contains("SMBv1 is not supported by SMBJ")) {
            strReplace = "协议识别出错";
        } else if (strReplace.contains("Authentication failed") || strReplace.contains("STATUS_ACCOUNT_DISABLED")) {
            strReplace = "用户名或密码错误";
        } else if (strReplace.contains("STATUS_BAD_NETWORK_NAME")) {
            strReplace = "请确保分享目录正确";
        } else if (strReplace.contains("STATUS_INVALID_PARAMETER")) {
            strReplace = "无效的参数";
        } else if (strReplace.contains("STATUS_OBJECT_NAME_COLLISION")) {
            strReplace = "目录已存在";
        } else if (strReplace.contains("STATUS_OBJECT_NAME_NOT_FOUND")) {
            strReplace = "不存在";
        } else if (strReplace.contains("STATUS_ACCESS_DENIED")) {
            strReplace = "无权限";
        } else if (strReplace.contains("Timeout expired")) {
            strReplace = "连接超时";
        }
        return strReplace.isEmpty() ? "连接失败" : strReplace;
    }

    public static void j(FtpCopyProgressBean ftpCopyProgressBean, DiskShare diskShare, WpPathBean wpPathBean) {
        if (ftpCopyProgressBean.isStop) {
            return;
        }
        String strReplace = (ftpCopyProgressBean.rootDirPath_to + "/" + wpPathBean.path.substring(ftpCopyProgressBean.rootDirPath_form.length())).replace("//", "/");
        new java.io.File(strReplace).mkdir();
        if (new java.io.File(strReplace).exists()) {
            MyDb.get().lambda$addFile_thread$1(strReplace);
        }
        try {
            for (FileIdBothDirectoryInformation fileIdBothDirectoryInformation : diskShare.list(wpPathBean.path.substring(wpPathBean.path.indexOf("/", 1) + 1).replace("/", "\\"))) {
                WpPathBean wpPathBean2 = new WpPathBean(fileIdBothDirectoryInformation.getFileName(), wpPathBean.path + fileIdBothDirectoryInformation.getFileName());
                if (!wpPathBean2.name.replace(".", "").isEmpty() && (v.f4106a.f4129l0 || !wpPathBean2.name.startsWith("."))) {
                    Date date = fileIdBothDirectoryInformation.getLastWriteTime().toDate();
                    DecimalFormat decimalFormat = k.f4034u0;
                    wpPathBean2.time_txt = j.f4033a.f4038b0.format(date);
                    if ((fileIdBothDirectoryInformation.getFileAttributes() & FileAttributes.FILE_ATTRIBUTE_DIRECTORY.getValue()) != 0) {
                        wpPathBean2.is_dir = true;
                        wpPathBean2.path += "/";
                        j(ftpCopyProgressBean, diskShare, wpPathBean2);
                    } else {
                        wpPathBean2.is_dir = false;
                        long endOfFile = fileIdBothDirectoryInformation.getEndOfFile();
                        wpPathBean2.size_long = endOfFile;
                        wpPathBean2.size_txt = p000if.a.D0(endOfFile);
                        ftpCopyProgressBean.filePaths.add(wpPathBean2);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }
}
