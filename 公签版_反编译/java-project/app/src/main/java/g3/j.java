package g3;

import a2.w0;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.app.Service;
import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.core.graphics.drawable.IconCompat;
import androidx.room.s;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import j$.nio.charset.StandardCharsets;
import j$.util.Objects;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import l2.l0;
import m0.n0;
import m0.q0;
import m0.t;
import m0.v;
import m0.w;
import m0.x;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import s3.a0;
import s3.b0;
import s3.c0;
import s3.e0;
import s3.n;
import s3.p;
import s3.r;
import s3.u;
import s3.y;
import s3.z;
import u1.d0;
import u1.q;

/* loaded from: classes.dex */
public final class j implements kf.e, y {

    /* renamed from: a, reason: collision with root package name */
    public int f6034a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6035b;

    /* renamed from: c, reason: collision with root package name */
    public Object f6036c;

    /* renamed from: d, reason: collision with root package name */
    public Object f6037d;

    /* renamed from: e, reason: collision with root package name */
    public Object f6038e;

    public j(mf.h hVar) {
        Locale locale = ef.b.l;
        this.f6035b = new String[100];
        this.f6034a = 0;
        this.f6036c = new ff.b(0);
        this.f6037d = Collections.emptyList();
        Objects.requireNonNull(hVar);
        this.f6038e = hVar;
    }

    public static void b(int i10, int i11, String str) throws u1.h {
        int iGlCreateShader = GLES20.glCreateShader(i11);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        u1.a.c(GLES20.glGetShaderInfoLog(iGlCreateShader) + ", source: \n" + str, iArr[0] == 1);
        GLES20.glAttachShader(i10, iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        u1.a.b();
    }

    public static List d(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList == null) {
            return arrayList2;
        }
        if (arrayList2 == null) {
            return arrayList;
        }
        a0.f fVar = new a0.f(arrayList2.size() + arrayList.size());
        fVar.addAll(arrayList);
        fVar.addAll(arrayList2);
        return new ArrayList(fVar);
    }

    public static void j(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01d0  */
    /* JADX WARN: Type inference failed for: r0v18, types: [s3.z] */
    /* JADX WARN: Type inference failed for: r0v25, types: [s3.z] */
    @Override // s3.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(q qVar) {
        d0 d0Var;
        int i10;
        u uVar;
        u uVar2;
        d0 d0Var2;
        int i11;
        if (qVar.B() != 2) {
            return;
        }
        b0 b0Var = (b0) this.f6038e;
        b0Var.getClass();
        int i12 = 0;
        d0 d0Var3 = (d0) b0Var.f14006b.get(0);
        if ((qVar.B() & 128) == 0) {
            return;
        }
        qVar.P(1);
        int I = qVar.I();
        int i13 = 3;
        qVar.P(3);
        j3.f fVar = (j3.f) this.f6035b;
        qVar.l(0, 2, fVar.f9720b);
        fVar.m(0);
        fVar.o(3);
        int i14 = 13;
        b0Var.f14020q = fVar.g(13);
        qVar.l(0, 2, fVar.f9720b);
        fVar.m(0);
        int i15 = 4;
        fVar.o(4);
        qVar.P(fVar.g(12));
        SparseArray sparseArray = (SparseArray) this.f6036c;
        sparseArray.clear();
        SparseIntArray sparseIntArray = (SparseIntArray) this.f6037d;
        sparseIntArray.clear();
        int iA = qVar.a();
        while (true) {
            SparseBooleanArray sparseBooleanArray = b0Var.f14012h;
            if (iA > 0) {
                qVar.l(i12, 5, fVar.f9720b);
                fVar.m(i12);
                int iG = fVar.g(8);
                fVar.o(i13);
                int iG2 = fVar.g(i14);
                fVar.o(i15);
                int iG3 = fVar.g(12);
                int i16 = qVar.f15267b;
                int i17 = i16 + iG3;
                int i18 = -1;
                ArrayList arrayList = null;
                String strTrim = null;
                int iB = 0;
                while (qVar.f15267b < i17) {
                    int iB2 = qVar.B();
                    int iB3 = qVar.f15267b + qVar.B();
                    if (iB3 > i17) {
                        d0 d0Var4 = d0Var3;
                        int i19 = I;
                        j3.f fVar2 = fVar;
                        qVar.O(i17);
                        s sVar = new s(i18, strTrim, iB, arrayList, Arrays.copyOfRange(qVar.f15266a, i16, i17));
                        if (iG != 6 || iG == 5) {
                            iG = i18;
                        }
                        iA -= iG3 + 5;
                        if (sparseBooleanArray.get(iG2)) {
                            l5.y yVar = b0Var.f14009e;
                            i13 = 3;
                            if (iG != 2) {
                                if (iG == 3 || iG == 4) {
                                    String str = strTrim;
                                    uVar = new u(new r(str, sVar.l(), "video/mp2t"));
                                    sparseIntArray.put(iG2, iG2);
                                    sparseArray.put(iG2, uVar);
                                } else {
                                    if (iG != 21) {
                                        if (iG == 27) {
                                            uVar = new u(new n(new a0(yVar.B(sVar), 0), false, false));
                                        } else if (iG == 36) {
                                            uVar = new u(new p(new a0(yVar.B(sVar), 0)));
                                        } else if (iG == 45) {
                                            uVar2 = new u(new s3.s());
                                        } else if (iG == 89) {
                                            uVar = new u(new s3.e((List) sVar.f2427c));
                                        } else if (iG == 172) {
                                            uVar = new u(new s3.a(strTrim, sVar.l(), "video/mp2t", 1));
                                        } else if (iG == 257) {
                                            uVar2 = new z(new v3.f("application/vnd.dvb.ait"));
                                        } else if (iG == 138) {
                                            uVar = new u(new s3.d(strTrim, sVar.l(), 4096));
                                        } else if (iG != 139) {
                                            switch (iG) {
                                                case 15:
                                                    uVar = new u(new s3.c(strTrim, sVar.l(), "video/mp2t", false));
                                                    break;
                                                case 16:
                                                    uVar = new u(new s3.k(new a0(yVar.B(sVar), 1)));
                                                    break;
                                                case 17:
                                                    uVar = new u(new s3.q(strTrim, sVar.l()));
                                                    break;
                                                default:
                                                    switch (iG) {
                                                        case 128:
                                                            break;
                                                        case 129:
                                                            uVar = new u(new s3.a(strTrim, sVar.l(), "video/mp2t", 0));
                                                            break;
                                                        case 130:
                                                            uVar = null;
                                                            break;
                                                        default:
                                                            switch (iG) {
                                                                case 134:
                                                                    uVar2 = new z(new v3.f("application/x-scte35"));
                                                                    break;
                                                            }
                                                    }
                                            }
                                        } else {
                                            uVar = new u(new s3.d(strTrim, sVar.l(), 5408));
                                        }
                                        sparseIntArray.put(iG2, iG2);
                                        sparseArray.put(iG2, uVar);
                                    } else {
                                        uVar2 = new u(new s3.e());
                                    }
                                    uVar = uVar2;
                                    sparseIntArray.put(iG2, iG2);
                                    sparseArray.put(iG2, uVar);
                                }
                            }
                            uVar = new u(new s3.h(new a0(yVar.B(sVar), 1), "video/mp2t"));
                            sparseIntArray.put(iG2, iG2);
                            sparseArray.put(iG2, uVar);
                        } else {
                            i13 = 3;
                        }
                        fVar = fVar2;
                        d0Var3 = d0Var4;
                        I = i19;
                        i12 = 0;
                        i14 = 13;
                        i15 = 4;
                    } else {
                        j3.f fVar3 = fVar;
                        if (iB2 == 5) {
                            long jD = qVar.D();
                            if (jD == 1094921523) {
                                i18 = 129;
                            } else if (jD == 1161904947) {
                                i18 = 135;
                            } else if (jD == 1094921524) {
                                i18 = CarSettingID.Recv.ETC_SYS_CFGST;
                            } else if (jD == 1212503619) {
                                i18 = 36;
                            }
                            d0Var2 = d0Var3;
                            i11 = I;
                        } else if (iB2 == 106) {
                            d0Var2 = d0Var3;
                            i11 = I;
                            i18 = 129;
                        } else if (iB2 == 122) {
                            d0Var2 = d0Var3;
                            i11 = I;
                            i18 = 135;
                        } else if (iB2 == 127) {
                            int iB4 = qVar.B();
                            if (iB4 != 21) {
                                if (iB4 == 14) {
                                    i18 = 136;
                                } else if (iB4 == 33) {
                                    i18 = 139;
                                }
                            }
                            d0Var2 = d0Var3;
                            i11 = I;
                        } else if (iB2 == 123) {
                            d0Var2 = d0Var3;
                            i11 = I;
                            i18 = 138;
                        } else if (iB2 == 10) {
                            strTrim = qVar.z(StandardCharsets.UTF_8, 3).trim();
                            d0Var2 = d0Var3;
                            i11 = I;
                            iB = qVar.B();
                        } else if (iB2 == 89) {
                            ArrayList arrayList2 = new ArrayList();
                            while (qVar.f15267b < iB3) {
                                String strTrim2 = qVar.z(StandardCharsets.UTF_8, 3).trim();
                                qVar.B();
                                d0 d0Var5 = d0Var3;
                                byte[] bArr = new byte[4];
                                qVar.l(0, 4, bArr);
                                arrayList2.add(new c0(strTrim2, bArr));
                                d0Var3 = d0Var5;
                                I = I;
                            }
                            d0Var2 = d0Var3;
                            i11 = I;
                            arrayList = arrayList2;
                            i18 = 89;
                        } else {
                            d0Var2 = d0Var3;
                            i11 = I;
                            if (iB2 == 111) {
                                i18 = 257;
                            }
                        }
                        qVar.P(iB3 - qVar.f15267b);
                        fVar = fVar3;
                        d0Var3 = d0Var2;
                        I = i11;
                    }
                }
                d0 d0Var42 = d0Var3;
                int i192 = I;
                j3.f fVar22 = fVar;
                qVar.O(i17);
                s sVar2 = new s(i18, strTrim, iB, arrayList, Arrays.copyOfRange(qVar.f15266a, i16, i17));
                if (iG != 6) {
                    iG = i18;
                }
                iA -= iG3 + 5;
                if (sparseBooleanArray.get(iG2)) {
                }
                fVar = fVar22;
                d0Var3 = d0Var42;
                I = i192;
                i12 = 0;
                i14 = 13;
                i15 = 4;
            } else {
                d0 d0Var6 = d0Var3;
                int i20 = I;
                int size = sparseIntArray.size();
                int i21 = 0;
                while (true) {
                    SparseArray sparseArray2 = b0Var.f14011g;
                    if (i21 >= size) {
                        sparseArray2.remove(this.f6034a);
                        b0Var.f14016m = 0;
                        b0Var.l.q();
                        b0Var.f14017n = true;
                        return;
                    }
                    int iKeyAt = sparseIntArray.keyAt(i21);
                    int iValueAt = sparseIntArray.valueAt(i21);
                    sparseBooleanArray.put(iKeyAt, true);
                    b0Var.f14013i.put(iValueAt, true);
                    e0 e0Var = (e0) sparseArray.valueAt(i21);
                    if (e0Var != null) {
                        l2.q qVar2 = b0Var.l;
                        i10 = i20;
                        s3.d0 d0Var7 = new s3.d0(i10, iKeyAt, 8192);
                        d0Var = d0Var6;
                        e0Var.c(d0Var, qVar2, d0Var7);
                        sparseArray2.put(iValueAt, e0Var);
                    } else {
                        d0Var = d0Var6;
                        i10 = i20;
                    }
                    i21++;
                    d0Var6 = d0Var;
                    i20 = i10;
                }
            }
        }
    }

    public void e() {
        if (((s4.e) this.f6036c) == null) {
            w0 w0Var = (w0) this.f6035b;
            w0Var.E();
            this.f6036c = (s4.e) w0Var.f348d;
        }
    }

    @Override // kf.e
    public void f(ba.h hVar) {
        this.f6034a--;
    }

    public int h(String str) throws u1.h {
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.f6034a, str);
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
        u1.a.b();
        return iGlGetAttribLocation;
    }

    @Override // kf.e
    public void m(v3.f fVar) {
        int i10;
        l5.y yVar;
        ff.b bVar;
        kf.b bVar2;
        i10 = 1;
        yVar = (l5.y) fVar.f16476d;
        String str = (String) fVar.f16475c;
        str.getClass();
        bVar = (ff.b) this.f6036c;
        bVar2 = null;
        switch (str) {
            case "permission":
                yVar.F("name");
                yVar.F(AnnotatedPrivateKey.LABEL);
                yVar.F("icon");
                yVar.F("description");
                yVar.F("group");
                yVar.F("android:protectionLevel");
                ((ArrayList) bVar.l).add(new m7.e(23));
                break;
            case "uses-sdk":
                String strF = yVar.F("minSdkVersion");
                if (strF != null) {
                    bVar.f5807f = strF;
                }
                String strF2 = yVar.F("targetSdkVersion");
                if (strF2 != null) {
                    bVar.f5808g = strF2;
                }
                String strF3 = yVar.F("maxSdkVersion");
                if (strF3 != null) {
                    bVar.f5809h = strF3;
                    break;
                }
                break;
            case "manifest":
                bVar.f5802a = yVar.F("package");
                bVar.f5805d = yVar.F("versionName");
                yVar.E("revisionCode");
                bVar.f5806e = yVar.F("sharedUserId");
                yVar.F("sharedUserLabel");
                yVar.F("split");
                yVar.F("configForSplit");
                yVar.A("isFeatureSplit");
                yVar.A("isSplitRequired");
                yVar.A("isolatedSplits");
                Long lE = yVar.E("versionCodeMajor");
                Long lE2 = yVar.E("versionCode");
                if (lE != null) {
                    if (lE2 == null) {
                        lE2 = 0L;
                    }
                    lE2 = Long.valueOf((lE2.longValue() & 4294967295L) | (lE.longValue() << 32));
                }
                bVar.f5810i = lE2;
                yVar.F("installLocation");
                yVar.F("compileSdkVersion");
                yVar.F("compileSdkVersionCodename");
                yVar.F("platformBuildVersionCode");
                yVar.F("platformBuildVersionName");
                break;
            case "uses-permission":
                ((ArrayList) bVar.f5811j).add(yVar.F("name"));
                break;
            case "supports-screens":
                yVar.A("anyDensity");
                bVar.getClass();
                yVar.A("smallScreens");
                yVar.A("normalScreens");
                yVar.A("largeScreens");
                break;
            case "application":
                String strF4 = yVar.F(AnnotatedPrivateKey.LABEL);
                if (strF4 != null) {
                    bVar.f5803b = strF4;
                }
                kf.b[] bVarArr = (kf.b[]) yVar.f10629b;
                int length = bVarArr.length;
                int i11 = 0;
                while (true) {
                    if (i11 < length) {
                        kf.b bVar3 = bVarArr[i11];
                        if (((String) bVar3.f10279c).equals("icon")) {
                            bVar2 = bVar3;
                        } else {
                            i11++;
                        }
                    }
                }
                if (bVar2 != null) {
                    if (((ab.a) bVar2.f10281e) instanceof lf.e) {
                        long j10 = ((lf.e) r0).f567b & 4294967295L;
                        mf.h hVar = (mf.h) this.f6038e;
                        List<mf.g> listA = hVar.a(j10);
                        if (!listA.isEmpty()) {
                            ArrayList arrayList = new ArrayList();
                            boolean z = false;
                            for (mf.g gVar : listA) {
                                mf.j jVar = gVar.f11215b;
                                String strS = gVar.f11216c.s(hVar, ef.b.l);
                                int i12 = jVar.f11227h;
                                if (i12 == 0) {
                                    bVar.f5804c = strS;
                                    z = true;
                                }
                                arrayList.add(new ff.h(strS, i12));
                            }
                            if (!z) {
                                bVar.f5804c = ((ff.h) arrayList.get(0)).f5831a;
                            }
                            this.f6037d = arrayList;
                            break;
                        }
                    } else {
                        String str2 = (String) bVar2.f10282f;
                        if (str2 != null) {
                            bVar.f5804c = str2;
                            this.f6037d = Collections.singletonList(new ff.h(str2, 0));
                            break;
                        }
                    }
                }
                break;
            case "uses-feature":
                String strF5 = yVar.F("name");
                yVar.A("required");
                if (strF5 != null) {
                    ((ArrayList) bVar.f5812k).add(new bd.c(strF5, i10));
                    break;
                } else {
                    String strF6 = yVar.F("glEsVersion");
                    if ((strF6 != null ? strF6.startsWith("0x") ? Integer.valueOf(strF6.substring(2), 16) : Integer.valueOf(strF6) : null) != null) {
                        bVar.getClass();
                        break;
                    }
                }
                break;
        }
        int i13 = this.f6034a;
        this.f6034a = 1 + i13;
        ((String[]) this.f6035b)[i13] = (String) fVar.f16475c;
    }

    public j(w0 w0Var) {
        this.f6035b = w0Var;
        this.f6036c = null;
        this.f6037d = null;
        this.f6034a = 0;
        this.f6038e = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v35, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v51 */
    /* JADX WARN: Type inference failed for: r5v52, types: [android.graphics.drawable.Icon] */
    /* JADX WARN: Type inference failed for: r5v55 */
    public j(m0.q qVar) throws FileNotFoundException {
        String str;
        ArrayList arrayList;
        Bundle bundle;
        ArrayList arrayList2;
        ArrayList arrayList3;
        Notification.Action.Builder builderE;
        Bundle bundle2;
        ?? C;
        this.f6037d = new ArrayList();
        this.f6038e = new Bundle();
        this.f6036c = qVar;
        Service service = qVar.f10777a;
        int i10 = Build.VERSION.SDK_INT;
        String str2 = qVar.f10787k;
        if (i10 >= 26) {
            this.f6035b = m0.y.a(service, str2);
        } else {
            this.f6035b = new Notification.Builder(qVar.f10777a);
        }
        Notification notification = qVar.f10788m;
        Context context = null;
        int iC = 0;
        ((Notification.Builder) this.f6035b).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(qVar.f10781e).setContentText(qVar.f10782f).setContentInfo(null).setContentIntent(null).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setNumber(0).setProgress(0, 0, false);
        int i11 = 23;
        if (i10 < 23) {
            ((Notification.Builder) this.f6035b).setLargeIcon((Bitmap) null);
        } else {
            w.b((Notification.Builder) this.f6035b, null);
        }
        if (i10 < 21) {
            ((Notification.Builder) this.f6035b).setSound(notification.sound, notification.audioStreamType);
        }
        m0.r.b(m0.r.d(m0.r.c((Notification.Builder) this.f6035b, null), false), qVar.f10783g);
        Iterator it = qVar.f10778b.iterator();
        while (it.hasNext()) {
            m0.n nVar = (m0.n) it.next();
            int i12 = Build.VERSION.SDK_INT;
            Notification.Builder builder = (Notification.Builder) this.f6035b;
            if (i12 >= 20) {
                IconCompat iconCompatA = nVar.a();
                PendingIntent pendingIntent = nVar.f10776i;
                CharSequence charSequence = nVar.f10775h;
                if (i12 >= i11) {
                    if (iconCompatA == null) {
                        C = context;
                    } else if (i12 >= i11) {
                        C = q0.d.c(iconCompatA, context);
                    } else {
                        throw new UnsupportedOperationException("This method is only supported on API level 23+");
                    }
                    builderE = w.a(C, charSequence, pendingIntent);
                } else {
                    builderE = m0.u.e(iconCompatA != null ? iconCompatA.c() : 0, charSequence, pendingIntent);
                }
                q0[] q0VarArr = nVar.f10770c;
                if (q0VarArr != null) {
                    int length = q0VarArr.length;
                    RemoteInput[] remoteInputArr = new RemoteInput[length];
                    for (int i13 = 0; i13 < q0VarArr.length; i13++) {
                        remoteInputArr[i13] = n0.b(q0VarArr[i13]);
                    }
                    for (int i14 = 0; i14 < length; i14++) {
                        m0.u.c(builderE, remoteInputArr[i14]);
                    }
                }
                Bundle bundle3 = nVar.f10768a;
                if (bundle3 != null) {
                    bundle2 = new Bundle(bundle3);
                } else {
                    bundle2 = new Bundle();
                }
                boolean z = nVar.f10772e;
                bundle2.putBoolean("android.support.allowGeneratedReplies", z);
                int i15 = Build.VERSION.SDK_INT;
                if (i15 >= 24) {
                    x.a(builderE, z);
                }
                bundle2.putInt("android.support.action.semanticAction", 0);
                if (i15 >= 28) {
                    m0.z.b(builderE, 0);
                }
                if (i15 >= 29) {
                    m0.a0.c(builderE, false);
                }
                if (i15 >= 31) {
                    m0.b0.a(builderE, false);
                }
                bundle2.putBoolean("android.support.action.showsUserInterface", nVar.f10773f);
                m0.u.b(builderE, bundle2);
                m0.u.a(builder, m0.u.d(builderE));
            } else {
                IconCompat iconCompatA2 = nVar.a();
                builder.addAction(iconCompatA2 != null ? iconCompatA2.c() : 0, nVar.f10775h, nVar.f10776i);
                Bundle bundle4 = new Bundle(nVar.f10768a);
                q0[] q0VarArr2 = nVar.f10770c;
                if (q0VarArr2 != null) {
                    bundle4.putParcelableArray("android.support.remoteInputs", m0.c0.f(q0VarArr2));
                }
                q0[] q0VarArr3 = nVar.f10771d;
                if (q0VarArr3 != null) {
                    bundle4.putParcelableArray("android.support.dataRemoteInputs", m0.c0.f(q0VarArr3));
                }
                bundle4.putBoolean("android.support.allowGeneratedReplies", nVar.f10772e);
                ((ArrayList) this.f6037d).add(bundle4);
            }
            i11 = 23;
            context = null;
        }
        Bundle bundle5 = qVar.f10786j;
        if (bundle5 != null) {
            ((Bundle) this.f6038e).putAll(bundle5);
        }
        int i16 = Build.VERSION.SDK_INT;
        m0.s.a((Notification.Builder) this.f6035b, qVar.f10784h);
        ArrayList arrayList4 = qVar.f10790o;
        ArrayList arrayList5 = qVar.f10779c;
        if (i16 >= 19 && i16 < 21) {
            if (arrayList5 == null) {
                arrayList3 = null;
            } else {
                arrayList3 = new ArrayList(arrayList5.size());
                Iterator it2 = arrayList5.iterator();
                if (it2.hasNext()) {
                    throw l2.z.d(it2);
                }
            }
            List listD = d(arrayList3, arrayList4);
            if (listD != null) {
                ArrayList arrayList6 = (ArrayList) listD;
                if (!arrayList6.isEmpty()) {
                    ((Bundle) this.f6038e).putStringArray("android.people", (String[]) arrayList6.toArray(new String[arrayList6.size()]));
                }
            }
        }
        if (i16 >= 20) {
            m0.u.i((Notification.Builder) this.f6035b, false);
            m0.u.g((Notification.Builder) this.f6035b, null);
            m0.u.j((Notification.Builder) this.f6035b, null);
            m0.u.h((Notification.Builder) this.f6035b, false);
            this.f6034a = 0;
        }
        if (i16 >= 21) {
            v.b((Notification.Builder) this.f6035b, qVar.f10785i);
            v.c((Notification.Builder) this.f6035b, 0);
            v.f((Notification.Builder) this.f6035b, 0);
            v.d((Notification.Builder) this.f6035b, null);
            v.e((Notification.Builder) this.f6035b, notification.sound, notification.audioAttributes);
            ArrayList arrayListD = arrayList4;
            if (i16 < 28) {
                if (arrayList5 == null) {
                    arrayList2 = null;
                } else {
                    arrayList2 = new ArrayList(arrayList5.size());
                    Iterator it3 = arrayList5.iterator();
                    if (it3.hasNext()) {
                        throw l2.z.d(it3);
                    }
                }
                arrayListD = d(arrayList2, arrayList4);
            }
            if (arrayListD != null && !arrayListD.isEmpty()) {
                Iterator it4 = arrayListD.iterator();
                while (it4.hasNext()) {
                    v.a((Notification.Builder) this.f6035b, (String) it4.next());
                }
            }
            ArrayList arrayList7 = qVar.f10780d;
            if (arrayList7.size() > 0) {
                if (qVar.f10786j == null) {
                    qVar.f10786j = new Bundle();
                }
                Bundle bundle6 = qVar.f10786j.getBundle("android.car.EXTENSIONS");
                bundle6 = bundle6 == null ? new Bundle() : bundle6;
                Bundle bundle7 = new Bundle(bundle6);
                Bundle bundle8 = new Bundle();
                int i17 = 0;
                while (i17 < arrayList7.size()) {
                    String string = Integer.toString(i17);
                    m0.n nVar2 = (m0.n) arrayList7.get(i17);
                    Bundle bundle9 = new Bundle();
                    IconCompat iconCompatA3 = nVar2.a();
                    if (iconCompatA3 != null) {
                        arrayList = arrayList7;
                        iC = iconCompatA3.c();
                    } else {
                        arrayList = arrayList7;
                    }
                    bundle9.putInt("icon", iC);
                    bundle9.putCharSequence("title", nVar2.f10775h);
                    bundle9.putParcelable("actionIntent", nVar2.f10776i);
                    Bundle bundle10 = nVar2.f10768a;
                    if (bundle10 != null) {
                        bundle = new Bundle(bundle10);
                    } else {
                        bundle = new Bundle();
                    }
                    bundle.putBoolean("android.support.allowGeneratedReplies", nVar2.f10772e);
                    bundle9.putBundle("extras", bundle);
                    bundle9.putParcelableArray("remoteInputs", m0.c0.f(nVar2.f10770c));
                    bundle9.putBoolean("showsUserInterface", nVar2.f10773f);
                    bundle9.putInt("semanticAction", 0);
                    bundle8.putBundle(string, bundle9);
                    i17++;
                    arrayList7 = arrayList;
                    iC = 0;
                }
                bundle6.putBundle("invisible_actions", bundle8);
                bundle7.putBundle("invisible_actions", bundle8);
                if (qVar.f10786j == null) {
                    qVar.f10786j = new Bundle();
                }
                qVar.f10786j.putBundle("android.car.EXTENSIONS", bundle6);
                ((Bundle) this.f6038e).putBundle("android.car.EXTENSIONS", bundle7);
            }
        }
        int i18 = Build.VERSION.SDK_INT;
        if (i18 >= 24) {
            t.a((Notification.Builder) this.f6035b, qVar.f10786j);
            str = null;
            x.e((Notification.Builder) this.f6035b, null);
        } else {
            str = null;
        }
        if (i18 >= 26) {
            m0.y.b((Notification.Builder) this.f6035b, 0);
            m0.y.e((Notification.Builder) this.f6035b, str);
            m0.y.f((Notification.Builder) this.f6035b, str);
            m0.y.g((Notification.Builder) this.f6035b, 0L);
            m0.y.d((Notification.Builder) this.f6035b, 0);
            if (!TextUtils.isEmpty(str2)) {
                ((Notification.Builder) this.f6035b).setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i18 >= 28) {
            Iterator it5 = arrayList5.iterator();
            if (it5.hasNext()) {
                throw l2.z.d(it5);
            }
        }
        if (i18 >= 29) {
            m0.a0.a((Notification.Builder) this.f6035b, qVar.l);
            m0.a0.b((Notification.Builder) this.f6035b, null);
        }
        if (qVar.f10789n) {
            ((m0.q) this.f6036c).getClass();
            this.f6034a = 1;
            ((Notification.Builder) this.f6035b).setVibrate(null);
            ((Notification.Builder) this.f6035b).setSound(null);
            int i19 = notification.defaults & (-4);
            notification.defaults = i19;
            ((Notification.Builder) this.f6035b).setDefaults(i19);
            if (i18 >= 26) {
                ((m0.q) this.f6036c).getClass();
                if (TextUtils.isEmpty(null)) {
                    m0.u.g((Notification.Builder) this.f6035b, "silent");
                }
                m0.y.d((Notification.Builder) this.f6035b, 1);
            }
        }
    }

    @Override // kf.e
    public void g(ba.h hVar) {
    }

    @Override // kf.e
    public void i(ba.h hVar) {
    }

    @Override // s3.y
    public void c(d0 d0Var, l2.q qVar, s3.d0 d0Var2) {
    }

    public j(String str, String str2) throws u1.h {
        byte[] bArr;
        byte[] bArr2;
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.f6034a = iGlCreateProgram;
        u1.a.b();
        b(iGlCreateProgram, 35633, str);
        b(iGlCreateProgram, 35632, str2);
        GLES20.glLinkProgram(iGlCreateProgram);
        int i10 = 0;
        int[] iArr = {0};
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        int i11 = 1;
        u1.a.c("Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(iGlCreateProgram), iArr[0] == 1);
        GLES20.glUseProgram(iGlCreateProgram);
        this.f6037d = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35721, iArr2, 0);
        this.f6035b = new s5.c[iArr2[0]];
        int i12 = 0;
        while (i12 < iArr2[0]) {
            int i13 = this.f6034a;
            int[] iArr3 = new int[i11];
            GLES20.glGetProgramiv(i13, 35722, iArr3, 0);
            int i14 = iArr3[0];
            byte[] bArr3 = new byte[i14];
            GLES20.glGetActiveAttrib(i13, i12, i14, new int[i11], 0, new int[i11], 0, new int[i11], 0, bArr3, 0);
            int i15 = 0;
            while (true) {
                if (i15 >= i14) {
                    bArr2 = bArr3;
                    i15 = i14;
                    break;
                } else {
                    bArr2 = bArr3;
                    if (bArr2[i15] == 0) {
                        break;
                    }
                    i15++;
                    bArr3 = bArr2;
                }
            }
            String str3 = new String(bArr2, 0, i15);
            GLES20.glGetAttribLocation(i13, str3);
            s5.c cVar = new s5.c(str3);
            ((s5.c[]) this.f6035b)[i12] = cVar;
            ((HashMap) this.f6037d).put(str3, cVar);
            i12++;
            i11 = 1;
        }
        this.f6038e = new HashMap();
        int[] iArr4 = new int[1];
        GLES20.glGetProgramiv(this.f6034a, 35718, iArr4, 0);
        this.f6036c = new s9.a[iArr4[0]];
        for (int i16 = 0; i16 < iArr4[i10]; i16++) {
            int i17 = this.f6034a;
            int[] iArr5 = new int[1];
            GLES20.glGetProgramiv(i17, 35719, iArr5, i10);
            int i18 = iArr5[i10];
            byte[] bArr4 = new byte[i18];
            GLES20.glGetActiveUniform(i17, i16, i18, new int[1], 0, new int[1], 0, new int[1], 0, bArr4, 0);
            int i19 = 0;
            while (true) {
                if (i19 >= i18) {
                    bArr = bArr4;
                    i19 = i18;
                    break;
                } else {
                    bArr = bArr4;
                    if (bArr[i19] == 0) {
                        break;
                    }
                    i19++;
                    bArr4 = bArr;
                }
            }
            i10 = 0;
            String str4 = new String(bArr, 0, i19);
            GLES20.glGetUniformLocation(i17, str4);
            s9.a aVar = new s9.a(str4);
            ((s9.a[]) this.f6036c)[i16] = aVar;
            ((HashMap) this.f6038e).put(str4, aVar);
        }
        u1.a.b();
    }

    public j(l2.a0 a0Var, l0 l0Var, byte[] bArr, ag.h[] hVarArr, int i10) {
        this.f6035b = a0Var;
        this.f6036c = l0Var;
        this.f6037d = bArr;
        this.f6038e = hVarArr;
        this.f6034a = i10;
    }

    public j(b0 b0Var, int i10) {
        this.f6038e = b0Var;
        this.f6035b = new j3.f(new byte[5], 5);
        this.f6036c = new SparseArray();
        this.f6037d = new SparseIntArray();
        this.f6034a = i10;
    }
}
