package a1;

import a2.w0;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.location.LocationManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.TextView;
import androidx.room.s;
import b8.o;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.desay_svautomotive.p023a.C0526b;
import com.hjq.permissions.OnPermissionCallback;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.AppSelectHomeActivityBean;
import com.yunpan.appmanage.bean.IntIntBean;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.bean.MemBean;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import com.yunpan.appmanage.bean.NameValueBean;
import com.yunpan.appmanage.bean.SignatureBean;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.w;
import fa.b0;
import h2.k;
import ha.a6;
import ha.b6;
import ha.cd;
import ha.e6;
import ha.ea;
import ha.ed;
import ha.fa;
import ha.ga;
import ha.h3;
import ha.i4;
import ha.j0;
import ha.j3;
import ha.j4;
import ha.j6;
import ha.j7;
import ha.l4;
import ha.m4;
import ha.m7;
import ha.o0;
import ha.p0;
import ha.p6;
import ha.q2;
import ha.q5;
import ha.q6;
import ha.r2;
import ha.r3;
import ha.r5;
import ha.s2;
import ha.t2;
import ha.u3;
import ha.v2;
import ha.v3;
import ha.z5;
import ha.z6;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.NetworkInterface;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import net.sf.sevenzipjbinding.SevenZip;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import r1.r0;
import ta.m;
import u7.a0;
import u7.e0;
import u7.g0;
import u7.q;
import u7.y0;
import ua.d8;
import w.u;
import wa.t;
import x0.b1;
import x9.k5;
import x9.t3;
import x9.w3;
import x9.x0;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements o, k, c6.e, a6, ea.c, ec.d, ga {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f70a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f71b;

    public /* synthetic */ d(int i10, Object obj) {
        this.f70a = i10;
        this.f71b = obj;
    }

    private final void a(c6.g gVar, View view, int i10) {
        b6 b6Var = (b6) this.f71b;
        b6Var.getClass();
        b6Var.f6801j.f((w3) gVar.t(i10));
        b6Var.dismiss();
    }

    private final void h(c6.g gVar, View view, int i10) throws Exception {
        e6 e6Var = (e6) this.f71b;
        e6Var.getClass();
        s1.g.Y(view);
        x0 x0Var = (x0) e6Var.f6945h.t(i10);
        if (x0Var.f18383a.startsWith("文件菜单")) {
            w wVar = v.f4106a;
            int i11 = wVar.f4126j0;
            if (i11 == 1) {
                wVar.t(0);
                Toaster.showShort((CharSequence) "切换为居中");
                x0Var.f18383a = "文件菜单居中";
            } else if (i11 == 2) {
                wVar.t(1);
                Toaster.showShort((CharSequence) "切换为靠左");
                x0Var.f18383a = "文件菜单靠左";
            } else {
                wVar.t(2);
                Toaster.showShort((CharSequence) "切换为靠右");
                x0Var.f18383a = "文件菜单靠右";
            }
            e6Var.f6945h.D(i10, x0Var);
            return;
        }
        x0Var.f18384b = !x0Var.f18384b;
        e6Var.f6945h.D(i10, x0Var);
        boolean zContains = x0Var.f18383a.contains("显示隐藏文件");
        d8 d8Var = e6Var.f6946i;
        if (zContains) {
            w wVar2 = v.f4106a;
            boolean z = x0Var.f18384b;
            wVar2.f4129l0 = z;
            try {
                wVar2.f4123i.k("mFile_hide", Boolean.valueOf(z));
            } catch (Exception unused) {
            }
            wVar2.m();
            d8Var.b();
            return;
        }
        if (x0Var.f18383a.contains("关联图标")) {
            w wVar3 = v.f4106a;
            boolean z4 = x0Var.f18384b;
            wVar3.f4131m0 = z4;
            try {
                wVar3.f4123i.k("mFile_ico", Boolean.valueOf(z4));
            } catch (Exception unused2) {
            }
            wVar3.m();
            return;
        }
        if (x0Var.f18383a.contains("排序")) {
            w wVar4 = v.f4106a;
            boolean z10 = x0Var.f18384b;
            wVar4.f4133n0 = z10;
            try {
                wVar4.f4123i.k("mFile_sort", Boolean.valueOf(z10));
            } catch (Exception unused3) {
            }
            wVar4.m();
            d8Var.b();
            return;
        }
        if (x0Var.f18383a.contains("多次粘贴")) {
            w wVar5 = v.f4106a;
            boolean z11 = x0Var.f18384b;
            wVar5.f4135o0 = z11;
            try {
                wVar5.f4123i.k("mFile_copyMulti", Boolean.valueOf(z11));
            } catch (Exception unused4) {
            }
            wVar5.m();
            return;
        }
        if (x0Var.f18383a.contains("图片预览")) {
            w wVar6 = v.f4106a;
            boolean z12 = x0Var.f18384b;
            wVar6.f4128k0 = z12;
            try {
                wVar6.f4123i.k("mFile_hideImage", Boolean.valueOf(z12));
            } catch (Exception unused5) {
            }
            wVar6.m();
            return;
        }
        if (x0Var.f18383a.contains("使用旧解压器")) {
            boolean z13 = x0Var.f18384b;
            if (z13) {
                v.f4106a.v(z13);
                return;
            }
            try {
                if (!SevenZip.isInitializedSuccessfully()) {
                    throw new Exception();
                }
                v.f4106a.v(x0Var.f18384b);
                return;
            } catch (Exception unused6) {
                x0Var.f18384b = true;
                e6Var.f6945h.D(i10, x0Var);
                return;
            }
        }
        if (x0Var.f18383a.contains("使用旧压缩器")) {
            boolean z14 = x0Var.f18384b;
            if (z14) {
                v.f4106a.u(z14);
                return;
            }
            try {
                if (!SevenZip.isInitializedSuccessfully()) {
                    throw new Exception();
                }
                v.f4106a.u(x0Var.f18384b);
            } catch (Exception unused7) {
                x0Var.f18384b = true;
                e6Var.f6945h.D(i10, x0Var);
            }
        }
    }

    private final void i(c6.g gVar, View view, int i10) {
        j6 j6Var = (j6) this.f71b;
        j6Var.f7267i.e(((IntIntBean) j6Var.l.t(i10)).int1);
        j6Var.dismiss();
    }

    @Override // ha.ga
    public void b(int i10) {
        m7 m7Var = (m7) this.f71b;
        KeyCodeBean keyCodeBean = (KeyCodeBean) m7Var.f7425w.get(i10);
        m7Var.f7424v = keyCodeBean;
        m7Var.f7422s.setText(keyCodeBean.keyName);
        if (i10 == 0) {
            m7Var.f7420p.setVisibility(8);
            m7Var.f7421q.setVisibility(8);
        } else if (i10 == 1) {
            m7Var.f7420p.setVisibility(0);
            m7Var.f7421q.setVisibility(8);
        } else {
            m7Var.f7420p.setVisibility(0);
            m7Var.f7421q.setVisibility(0);
        }
    }

    @Override // b8.o
    public Object c() {
        Object obj = this.f71b;
        switch (this.f70a) {
            case 2:
                Constructor constructor = (Constructor) obj;
                try {
                    return constructor.newInstance(null);
                } catch (IllegalAccessException e7) {
                    p000if.a aVar = e8.c.f4819a;
                    throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.13.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e7);
                } catch (InstantiationException e10) {
                    throw new RuntimeException("Failed to invoke constructor '" + e8.c.b(constructor) + "' with no args", e10);
                } catch (InvocationTargetException e11) {
                    throw new RuntimeException("Failed to invoke constructor '" + e8.c.b(constructor) + "' with no args", e11.getCause());
                }
            default:
                Class cls = (Class) obj;
                try {
                    return b8.w.f2664a.a(cls);
                } catch (Exception e12) {
                    throw new RuntimeException(android.support.v4.media.session.a.r("Unable to create instance of ", cls, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."), e12);
                }
        }
    }

    @Override // h2.k
    public y0 d(int i10, r0 r0Var, int[] iArr) {
        e0 e0Var = g0.f15471b;
        q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i11 = 0;
        int i12 = 0;
        while (i11 < r0Var.f13553a) {
            int i13 = i11;
            h2.f fVar = new h2.f(i10, r0Var, i13, (h2.i) this.f71b, iArr[i11]);
            int i14 = i12 + 1;
            int iF = a0.f(objArrCopyOf.length, i14);
            if (iF > objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
            }
            objArrCopyOf[i12] = fVar;
            i11++;
            i12 = i14;
        }
        return g0.i(i12, objArrCopyOf);
    }

    @Override // ea.c
    public void e(int i10) {
        ((TextView) this.f71b).setText(String.valueOf(i10));
    }

    @Override // ha.a6
    public void f(w3 w3Var) {
        switch (this.f70a) {
            case 8:
                ((ha.x0) ((p0) this.f71b).f7562c).f8027q.q(w3Var);
                break;
            case 13:
                j3 j3Var = (j3) ((h3) this.f71b).f7143d;
                j3Var.f7239h = w3Var;
                j3Var.f7240i.setText(w3Var.f18364a);
                if (Build.VERSION.SDK_INT < 28 && j3Var.F.size() > 2) {
                    if (!j3Var.f7239h.f18365b.toLowerCase().endsWith(".pcm")) {
                        j3Var.G.setVisibility(8);
                        break;
                    } else {
                        j3Var.G.setVisibility(0);
                        break;
                    }
                }
                break;
            default:
                r3 r3Var = (r3) ((h3) this.f71b).f7143d;
                if (r3Var.f7677x.b() == 1 && ((w3) r3Var.f7677x.t(0)).f18366c) {
                    r3Var.f7677x.C(0);
                }
                r3Var.f7677x.q(w3Var);
                break;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(46:10|(1:16)|17|(2:19|(1:25))(2:26|(1:28))|29|(2:31|(1:38))(2:39|(1:41)(0))|42|(5:356|44|(1:51)(1:49)|52|53)(4:342|54|55|(2:346|57))|61|(1:65)|66|(4:68|(4:70|(1:72)(1:74)|73|75)|360|76)(1:77)|78|(2:80|(1:84))|85|(8:87|(1:173)(2:92|(1:94)(2:95|(1:172)(2:100|(1:102)(2:103|(1:171)(2:108|(1:110)(2:111|(1:113)(2:114|(1:116)(2:117|(1:170)(2:124|(1:169)(2:129|(1:168)(2:134|(1:136)(2:137|(1:139)(2:140|(1:142)(2:143|(1:145)(2:146|(1:148)(2:149|(1:151)(2:152|(1:154)(2:155|(1:157)(2:158|(1:160)(2:161|(1:163)(3:340|164|(1:166))))))))))))))))))))))|174|(4:177|(2:179|363)(2:180|(2:182|(3:344|184|367)(1:364))(2:187|(2:189|368)(2:191|(5:193|361|196|(1:200)|201)(1:366))))|195|175)|362|196|(2:198|200)|201)|202|(2:354|203)|(4:206|(3:370|209|(9:211|(1:213)|377|214|(1:216)|217|(1:219)|220|(26:373|222|233|(1:237)|238|(1:240)(2:241|(1:243)(2:244|(1:246)(1:247)))|248|350|249|(6:252|(2:387|254)(2:256|(2:380|258)(2:259|(2:381|261)(2:262|(2:382|264)(2:265|(2:383|267)(2:268|(2:384|270)(2:271|(2:385|273)(2:274|(4:378|276|389|388)(1:386))))))))|255|390|388|250)|379|277|278|(1:280)(1:281)|282|(1:284)|285|(2:289|(1:291)(2:292|(1:294)(2:295|(1:297)(2:298|(1:300)(2:301|(1:304))))))|305|(1:307)(1:308)|309|(3:311|(1:314)|315)(1:316)|317|348|318|319)(2:223|375))(3:372|224|225))(3:371|208|376)|374|204)|369|226|(1:232)(1:228)|233|(2:235|237)|238|(0)(0)|248|350|249|(1:250)|379|277|278|(0)(0)|282|(0)|285|(3:287|289|(0)(0))|305|(0)(0)|309|(0)(0)|317|348|318|319) */
    /* JADX WARN: Removed duplicated region for block: B:206:0x045f A[Catch: Exception -> 0x04c9, TryCatch #7 {Exception -> 0x04c9, blocks: (B:203:0x044d, B:204:0x0459, B:206:0x045f, B:209:0x0472, B:211:0x0478, B:213:0x0481, B:214:0x049e, B:216:0x04a4, B:217:0x04ad, B:220:0x04b8, B:224:0x04c3, B:225:0x04c8), top: B:354:0x044d }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x04df  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x057a  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x05fd A[Catch: Exception -> 0x07ca, TryCatch #5 {Exception -> 0x07ca, blocks: (B:249:0x05db, B:250:0x05f7, B:252:0x05fd, B:254:0x060f, B:256:0x0625, B:258:0x062d, B:259:0x0642, B:261:0x064a, B:262:0x065f, B:264:0x0667, B:265:0x067c, B:267:0x0684, B:268:0x0699, B:270:0x06a1, B:271:0x06b7, B:273:0x06bf, B:274:0x06d5, B:276:0x06dd, B:277:0x06f3, B:280:0x06fb, B:282:0x0783, B:284:0x078f, B:281:0x074a), top: B:350:0x05db }] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x06fb A[Catch: Exception -> 0x07ca, TRY_ENTER, TryCatch #5 {Exception -> 0x07ca, blocks: (B:249:0x05db, B:250:0x05f7, B:252:0x05fd, B:254:0x060f, B:256:0x0625, B:258:0x062d, B:259:0x0642, B:261:0x064a, B:262:0x065f, B:264:0x0667, B:265:0x067c, B:267:0x0684, B:268:0x0699, B:270:0x06a1, B:271:0x06b7, B:273:0x06bf, B:274:0x06d5, B:276:0x06dd, B:277:0x06f3, B:280:0x06fb, B:282:0x0783, B:284:0x078f, B:281:0x074a), top: B:350:0x05db }] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x074a A[Catch: Exception -> 0x07ca, TryCatch #5 {Exception -> 0x07ca, blocks: (B:249:0x05db, B:250:0x05f7, B:252:0x05fd, B:254:0x060f, B:256:0x0625, B:258:0x062d, B:259:0x0642, B:261:0x064a, B:262:0x065f, B:264:0x0667, B:265:0x067c, B:267:0x0684, B:268:0x0699, B:270:0x06a1, B:271:0x06b7, B:273:0x06bf, B:274:0x06d5, B:276:0x06dd, B:277:0x06f3, B:280:0x06fb, B:282:0x0783, B:284:0x078f, B:281:0x074a), top: B:350:0x05db }] */
    /* JADX WARN: Removed duplicated region for block: B:284:0x078f A[Catch: Exception -> 0x07ca, TRY_LEAVE, TryCatch #5 {Exception -> 0x07ca, blocks: (B:249:0x05db, B:250:0x05f7, B:252:0x05fd, B:254:0x060f, B:256:0x0625, B:258:0x062d, B:259:0x0642, B:261:0x064a, B:262:0x065f, B:264:0x0667, B:265:0x067c, B:267:0x0684, B:268:0x0699, B:270:0x06a1, B:271:0x06b7, B:273:0x06bf, B:274:0x06d5, B:276:0x06dd, B:277:0x06f3, B:280:0x06fb, B:282:0x0783, B:284:0x078f, B:281:0x074a), top: B:350:0x05db }] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x07d2  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x07e8  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x07f4  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x085a  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x085c  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0887  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x08c5  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b0 A[PHI: r9
  0x00b0: PHI (r9v31 java.lang.String) = (r9v5 java.lang.String), (r9v32 java.lang.String) binds: [B:40:0x00b8, B:36:0x00ad] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0255  */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r11v97 */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws Exception {
        Context context;
        DisplayMetrics displayMetrics;
        Activity activity;
        int i10;
        int i11;
        String strK;
        s sVarL0;
        s sVarL02;
        String strTrim;
        long j10;
        ?? r11;
        String str;
        com.yunpan.appmanage.util.k kVar;
        SignatureBean signatureBean;
        SignatureBean signatureBeanV;
        boolean z;
        MemBean memBean;
        Iterator it;
        Object obj = this.f71b;
        switch (this.f70a) {
            case 22:
                String str2 = "无法修改此{目录/文件}权限！";
                StringBuilder sb2 = new StringBuilder("chmod ");
                z5 z5Var = (z5) obj;
                sb2.append(z5Var.A.isChecked() ? "-R " : "");
                sb2.append(z5Var.f8138i);
                sb2.append(" '");
                String strL = g.b.l(z5Var.f8137h.filePath, "'", sb2);
                b0.f5652a.getClass();
                if (w0.h(strL).f5648a != 0) {
                    str2 = "无权限更改";
                } else {
                    try {
                        if (w0.c0(z5Var.f8136g).filePermission != z5Var.f8138i) {
                            bVar.d(new Exception("无法修改此{目录/文件}权限！"));
                            break;
                        } else {
                            bVar.b();
                            break;
                        }
                    } catch (Exception unused) {
                    }
                }
                android.support.v4.media.session.a.B(str2, bVar);
                break;
            case 27:
                q6 q6Var = (q6) obj;
                q6Var.getClass();
                String strK2 = Build.MODEL;
                String strK3 = "未知";
                if (strK2.equals("未知") || strK2.equals("null") || strK2.equals("unknown")) {
                    strK2 = "";
                }
                if (strK2.isEmpty()) {
                    strK2 = Build.PRODUCT;
                    if (strK2.equals("未知") || strK2.equals("null") || strK2.equals("unknown")) {
                        strK2 = "";
                    }
                } else {
                    String str3 = Build.PRODUCT;
                    if (!strK2.contains(str3)) {
                        strK2 = g.b.k(strK2, "  ", str3);
                    }
                }
                if (strK2.isEmpty()) {
                    strK2 = Build.BOARD;
                    if (!strK2.equals("未知") && !strK2.equals("null") && !strK2.equals("unknown")) {
                        strK3 = strK2;
                    }
                } else {
                    String str4 = Build.BOARD;
                    if (!strK2.contains(str4)) {
                        strK3 = g.b.k(strK2, "  ", str4);
                    }
                }
                bVar.f(new k5("型号", strK3, false));
                Context context2 = q6Var.f6725b;
                if (com.yunpan.appmanage.carsdk.e.e(context2)) {
                    try {
                        C0526b.m218a().m230a(context2);
                        int[] iArrM237b = C0526b.m218a().m237b(1, 28);
                        bVar.f(new k5("电量", ((iArrM237b == null || iArrM237b.length < 2) ? 100.0f : ((iArrM237b[0] * 256) + iArrM237b[1]) * 0.1f) + "%", false));
                    } catch (Throwable unused2) {
                    }
                    context = context2;
                } else {
                    try {
                        context = context2;
                        long jA = q6.a(context2);
                        if (jA > 0) {
                            try {
                                bVar.f(new k5("电量", jA + "%", false));
                            } catch (Exception unused3) {
                                displayMetrics = new DisplayMetrics();
                                activity = q6Var.f6724a;
                                activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
                                if (displayMetrics.widthPixels != 1920) {
                                    bVar.f(new k5("屏幕", displayMetrics.widthPixels + " x " + displayMetrics.heightPixels, false));
                                    activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                                    bVar.f(new k5("窗口", displayMetrics.widthPixels + " x " + displayMetrics.heightPixels, false));
                                }
                                StringBuilder sb3 = new StringBuilder("Android");
                                i10 = Build.VERSION.SDK_INT;
                                sb3.append(p000if.a.w0(i10));
                                sb3.append(" (API:");
                                sb3.append(i10);
                                sb3.append(")");
                                bVar.f(new k5("系统", sb3.toString(), false));
                                if (i10 < 21) {
                                }
                                bVar.f(new k5("支持", strK, false));
                                String[] strArr = new String[i11];
                                strArr[0] = "getprop ro.product.cpu.abi";
                                sVarL0 = u9.d.r(strArr).l0();
                                if (sVarL0.q()) {
                                }
                                sVarL02 = u9.d.r("cat /proc/cpuinfo").l0();
                                if (sVarL02.q()) {
                                }
                                while (r5.hasNext()) {
                                }
                                String macAddress = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
                                if (macAddress == null) {
                                }
                                if (!strTrim.isEmpty()) {
                                }
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis() - SystemClock.elapsedRealtime())));
                                sb4.append("   （已运行：");
                                long jElapsedRealtime = SystemClock.elapsedRealtime();
                                long j11 = (jElapsedRealtime / 1000) % 60;
                                long j12 = (jElapsedRealtime / 60000) % 60;
                                long j13 = (jElapsedRealtime / 3600000) % 24;
                                j10 = jElapsedRealtime / 86400000;
                                if (j10 > 0) {
                                }
                                bVar.f(new k5("开机时间", g.b.l(str, "）", sb4), r11));
                                memBean = new MemBean();
                                String[] strArr2 = new String[1];
                                strArr2[r11] = "cat /proc/meminfo";
                                it = u9.d.r(strArr2).l0().k().iterator();
                                while (it.hasNext()) {
                                }
                                if (memBean.MemAvailable == null) {
                                }
                                if (Double.parseDouble(memBean.SwapTotal) > 1024.0d) {
                                }
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                kVar = j.f4033a;
                                signatureBean = kVar.f4066q;
                                if (signatureBean != null) {
                                }
                                if (kVar.f4066q == null) {
                                }
                                bVar.f(new k5("系统签名", kVar.f4066q == null ? "" : "序列号：" + kVar.f4066q.str_number + "\nmd5：" + kVar.f4066q.str_md5, false));
                                signatureBeanV = d.b.v(kVar.f4041d);
                                if (signatureBeanV != null) {
                                }
                                bVar.f(new k5("系统版本", Build.FINGERPRINT, z));
                                bVar.f(new k5("系统标识", String.valueOf(Build.DISPLAY), z));
                                bVar.f(new k5("系统标识", String.valueOf(Build.ID), z));
                                bVar.f(new k5("系统标识", String.valueOf(Build.DEVICE), z));
                                bVar.f(new k5("内核版本", String.valueOf(System.getProperty("os.version")), z));
                                bVar.f(new k5("内网IP", kVar.g(), z));
                                ba.h hVarB = q6.b();
                                bVar.f(new k5("外网IP", hVarB.f2696b, z));
                                bVar.f(new k5("IP位置", hVarB.f2697c, z));
                                bVar.f(new k5("IPv6", q6.c(), z));
                                bVar.b();
                                return;
                            }
                        }
                    } catch (Exception unused4) {
                        context = context2;
                    }
                }
                displayMetrics = new DisplayMetrics();
                activity = q6Var.f6724a;
                activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
                if (displayMetrics.widthPixels != 1920 && displayMetrics.heightPixels != 1080) {
                    bVar.f(new k5("屏幕", displayMetrics.widthPixels + " x " + displayMetrics.heightPixels, false));
                    activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                    bVar.f(new k5("窗口", displayMetrics.widthPixels + " x " + displayMetrics.heightPixels, false));
                }
                StringBuilder sb32 = new StringBuilder("Android");
                i10 = Build.VERSION.SDK_INT;
                sb32.append(p000if.a.w0(i10));
                sb32.append(" (API:");
                sb32.append(i10);
                sb32.append(")");
                bVar.f(new k5("系统", sb32.toString(), false));
                if (i10 < 21) {
                    strK = "";
                    for (String str5 : Build.SUPPORTED_ABIS) {
                        strK = !strK.isEmpty() ? g.b.k(strK, ",", str5) : str5;
                    }
                    i11 = 1;
                } else {
                    i11 = 1;
                    strK = Build.CPU_ABI;
                }
                bVar.f(new k5("支持", strK, false));
                String[] strArr3 = new String[i11];
                strArr3[0] = "getprop ro.product.cpu.abi";
                sVarL0 = u9.d.r(strArr3).l0();
                if (sVarL0.q()) {
                    List listK = sVarL0.k();
                    if (!listK.isEmpty() && !((String) listK.get(0)).equals(strK)) {
                        bVar.f(new k5("架构", (String) listK.get(0), false));
                    }
                }
                sVarL02 = u9.d.r("cat /proc/cpuinfo").l0();
                if (sVarL02.q()) {
                    List<String> listK2 = sVarL02.k();
                    String lowerCase = Build.HARDWARE.toLowerCase();
                    if (lowerCase.startsWith("qcom") || lowerCase.startsWith("qualcomm")) {
                        lowerCase = "高通";
                    } else if (lowerCase.startsWith("freescale")) {
                        lowerCase = "飞思卡尔";
                    } else if (lowerCase.equals("rackchip") || lowerCase.startsWith("rockchip")) {
                        lowerCase = "瑞芯微";
                    } else if (lowerCase.equals("spreadtrum")) {
                        lowerCase = "展讯";
                    } else if (lowerCase.startsWith("mediatek") || lowerCase.equals("helio")) {
                        lowerCase = "联发科";
                    } else if (lowerCase.equals("dimensity")) {
                        lowerCase = "联发科(天玑)";
                    } else if (lowerCase.startsWith("kirin")) {
                        lowerCase = "海思麒麟";
                    } else if (lowerCase.startsWith("hisilicon")) {
                        lowerCase = "海思";
                    } else if (lowerCase.startsWith("exynos") || lowerCase.startsWith("samsung") || lowerCase.equals("universal")) {
                        lowerCase = "三星";
                    } else if (lowerCase.startsWith("intel") || lowerCase.startsWith("mobileye")) {
                        lowerCase = "英特尔";
                    } else if (lowerCase.equals("nvidia") || lowerCase.equals("tegra")) {
                        lowerCase = "英伟达";
                    } else if (lowerCase.contains("ryzen")) {
                        lowerCase = "AMD锐龙";
                    } else if (lowerCase.startsWith("amd")) {
                        lowerCase = "AMD";
                    } else if (lowerCase.startsWith("jacinto6evm")) {
                        lowerCase = "德州仪器";
                    } else if (lowerCase.startsWith("amlogic")) {
                        lowerCase = "晶晨";
                    } else if (lowerCase.startsWith("unisoc")) {
                        lowerCase = "紫光展锐";
                    } else if (lowerCase.startsWith("horizon")) {
                        lowerCase = "地平线";
                    } else if (lowerCase.startsWith("black sesame")) {
                        lowerCase = "黑芝麻智能";
                    } else if (lowerCase.startsWith("renesas")) {
                        lowerCase = "瑞萨";
                    } else if (lowerCase.startsWith("xecarx")) {
                        lowerCase = "亿咖通";
                    } else if (lowerCase.startsWith("x9m")) {
                        lowerCase = "芯驰 x9m";
                    } else {
                        try {
                            if (Build.BRAND.equals("Allwinner")) {
                                lowerCase = "全志";
                            }
                        } catch (Exception unused5) {
                        }
                    }
                    String strTrim2 = "";
                    int i12 = 0;
                    for (String str6 : listK2) {
                        if (str6.contains("BogoMIPS")) {
                            i12++;
                        } else if (str6.contains("model name")) {
                            if (strTrim2.isEmpty()) {
                                try {
                                    strTrim2 = str6.substring(str6.indexOf(":") + 1).trim();
                                } catch (Exception unused6) {
                                }
                            }
                        } else if (str6.startsWith("Hardware")) {
                            strTrim2 = str6.substring(str6.indexOf(":") + 1).trim();
                        } else if (str6.contains("cpu cores")) {
                            i12 = Integer.parseInt(str6.substring(str6.indexOf(":") + 1).trim());
                            if (strTrim2.isEmpty() && Build.VERSION.SDK_INT >= 31) {
                                strTrim2 = Build.SOC_MODEL;
                            }
                            bVar.f(new k5("CPU", lowerCase + " " + strTrim2 + " (" + i12 + "核)", false));
                        } else {
                            continue;
                        }
                    }
                    if (strTrim2.isEmpty()) {
                        strTrim2 = Build.SOC_MODEL;
                    }
                    bVar.f(new k5("CPU", lowerCase + " " + strTrim2 + " (" + i12 + "核)", false));
                }
                try {
                } catch (Exception unused7) {
                }
                for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                    if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                        byte[] hardwareAddress = networkInterface.getHardwareAddress();
                        if (hardwareAddress == null) {
                            throw new Exception("");
                        }
                        StringBuilder sb5 = new StringBuilder();
                        for (byte b10 : hardwareAddress) {
                            sb5.append(String.format("%02X:", Byte.valueOf(b10)));
                        }
                        if (sb5.length() > 0) {
                            sb5.deleteCharAt(sb5.length() - 1);
                        }
                        strTrim = sb5.toString();
                        if (strTrim.contains("02:00:00:00:00:00")) {
                            strTrim = "null";
                        }
                        if (!strTrim.equals("null")) {
                            if (!strTrim.isEmpty() && !strTrim.equals("null")) {
                                bVar.f(new k5("MAC", strTrim, false));
                            }
                            StringBuilder sb42 = new StringBuilder();
                            sb42.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis() - SystemClock.elapsedRealtime())));
                            sb42.append("   （已运行：");
                            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                            long j112 = (jElapsedRealtime2 / 1000) % 60;
                            long j122 = (jElapsedRealtime2 / 60000) % 60;
                            long j132 = (jElapsedRealtime2 / 3600000) % 24;
                            j10 = jElapsedRealtime2 / 86400000;
                            if (j10 > 0) {
                                str = String.format("%d天%d时%d分%d秒", Long.valueOf(j10), Long.valueOf(j132), Long.valueOf(j122), Long.valueOf(j112));
                                r11 = 0;
                            } else if (j132 > 0) {
                                r11 = 0;
                                str = String.format("%d时%d分%d秒", Long.valueOf(j132), Long.valueOf(j122), Long.valueOf(j112));
                            } else {
                                r11 = 0;
                                r11 = 0;
                                str = j122 > 0 ? String.format("%d分%d秒", Long.valueOf(j122), Long.valueOf(j112)) : String.format("%d秒", Long.valueOf(j112));
                            }
                            bVar.f(new k5("开机时间", g.b.l(str, "）", sb42), r11));
                            memBean = new MemBean();
                            String[] strArr22 = new String[1];
                            strArr22[r11] = "cat /proc/meminfo";
                            it = u9.d.r(strArr22).l0().k().iterator();
                            while (it.hasNext()) {
                                String strTrim3 = ((String) it.next()).trim();
                                if (strTrim3.contains("MemTotal")) {
                                    memBean.MemTotal = strTrim3.substring(strTrim3.indexOf(":") + 1, strTrim3.lastIndexOf(" ")).trim();
                                } else if (strTrim3.contains("MemAvailable")) {
                                    memBean.MemAvailable = strTrim3.substring(strTrim3.indexOf(":") + 1, strTrim3.lastIndexOf(" ")).trim();
                                } else if (strTrim3.contains("SwapTotal")) {
                                    memBean.SwapTotal = strTrim3.substring(strTrim3.indexOf(":") + 1, strTrim3.lastIndexOf(" ")).trim();
                                } else if (strTrim3.contains("SwapFree")) {
                                    memBean.SwapFree = strTrim3.substring(strTrim3.indexOf(":") + 1, strTrim3.lastIndexOf(" ")).trim();
                                } else if (strTrim3.contains("MemFree")) {
                                    memBean.MemFree = strTrim3.substring(strTrim3.indexOf(":") + 1, strTrim3.lastIndexOf(" ")).trim();
                                } else if (strTrim3.contains("Buffers")) {
                                    memBean.Buffers = strTrim3.substring(strTrim3.indexOf(":") + 1, strTrim3.lastIndexOf(" ")).trim();
                                } else if (strTrim3.contains("Cached")) {
                                    memBean.Cached = strTrim3.substring(strTrim3.indexOf(":") + 1, strTrim3.lastIndexOf(" ")).trim();
                                } else if (strTrim3.contains("Slab")) {
                                    memBean.Slab = strTrim3.substring(strTrim3.indexOf(":") + 1, strTrim3.lastIndexOf(" ")).trim();
                                }
                            }
                            if (memBean.MemAvailable == null) {
                                bVar.f(new k5("真实内存", q6.e(Double.parseDouble(memBean.MemTotal)) + " (已用: " + q6.e(Double.parseDouble(memBean.MemTotal) - (((Double.parseDouble(memBean.MemFree) + Double.parseDouble(memBean.Buffers)) + Double.parseDouble(memBean.Cached)) + Double.parseDouble(memBean.Slab))) + ")", false));
                            } else {
                                bVar.f(new k5("真实内存", q6.e(Double.parseDouble(memBean.MemTotal)) + " (已用: " + q6.e(Double.parseDouble(memBean.MemTotal) - Double.parseDouble(memBean.MemAvailable)) + ")", false));
                            }
                            if (Double.parseDouble(memBean.SwapTotal) > 1024.0d) {
                                bVar.f(new k5("虚拟内存", q6.e(Double.parseDouble(memBean.SwapTotal)) + " (已用: " + q6.e(Double.parseDouble(memBean.SwapTotal) - Double.parseDouble(memBean.SwapFree)) + ")", false));
                            }
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            kVar = j.f4033a;
                            signatureBean = kVar.f4066q;
                            if (signatureBean != null && !signatureBean.str_number.isEmpty()) {
                                if (!kVar.f4066q.str_number.endsWith("ebebe2")) {
                                    bVar.f(new k5("适合公签", "公签版(飞思卡尔)", false));
                                } else if (kVar.f4066q.str_number.endsWith("56cffa")) {
                                    bVar.f(new k5("适合公签", "公签版、原生安卓", false));
                                } else if (kVar.f4066q.str_number.endsWith("f201df")) {
                                    bVar.f(new k5("适合公签", "公签版(展讯SC9853)", false));
                                } else if (kVar.f4066q.str_number.equals("92a528c773d7a141")) {
                                    bVar.f(new k5("适合公签", "公签版(瑞芯微RK3288)", false));
                                } else if (!kVar.f4066q.str_number.equals("dd9f672ad5cb3cb2")) {
                                    kVar.f4066q.str_number.equals("ea73f1e4d2cbcee0");
                                }
                            }
                            bVar.f(new k5("系统签名", kVar.f4066q == null ? "" : "序列号：" + kVar.f4066q.str_number + "\nmd5：" + kVar.f4066q.str_md5, false));
                            signatureBeanV = d.b.v(kVar.f4041d);
                            if (signatureBeanV != null) {
                                StringBuilder sb6 = new StringBuilder("序列号：");
                                sb6.append(signatureBeanV.str_number);
                                sb6.append("\nmd5：");
                                sb6.append(signatureBeanV.str_md5);
                                sb6.append(kVar.f4064p.isEmpty() ? "" : "\nsha256：" + kVar.f4064p);
                                z = false;
                                bVar.f(new k5("自身签名", sb6.toString(), false));
                            } else {
                                z = false;
                            }
                            bVar.f(new k5("系统版本", Build.FINGERPRINT, z));
                            bVar.f(new k5("系统标识", String.valueOf(Build.DISPLAY), z));
                            bVar.f(new k5("系统标识", String.valueOf(Build.ID), z));
                            bVar.f(new k5("系统标识", String.valueOf(Build.DEVICE), z));
                            bVar.f(new k5("内核版本", String.valueOf(System.getProperty("os.version")), z));
                            bVar.f(new k5("内网IP", kVar.g(), z));
                            ba.h hVarB2 = q6.b();
                            bVar.f(new k5("外网IP", hVarB2.f2696b, z));
                            bVar.f(new k5("IP位置", hVarB2.f2697c, z));
                            bVar.f(new k5("IPv6", q6.c(), z));
                            bVar.b();
                        }
                    }
                }
                String macAddress2 = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
                strTrim = (macAddress2 == null && !"02:00:00:00:00:00".equals(macAddress2.trim())) ? macAddress2.trim() : "null";
                if (!strTrim.isEmpty()) {
                    bVar.f(new k5("MAC", strTrim, false));
                }
                StringBuilder sb422 = new StringBuilder();
                sb422.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis() - SystemClock.elapsedRealtime())));
                sb422.append("   （已运行：");
                long jElapsedRealtime22 = SystemClock.elapsedRealtime();
                long j1122 = (jElapsedRealtime22 / 1000) % 60;
                long j1222 = (jElapsedRealtime22 / 60000) % 60;
                long j1322 = (jElapsedRealtime22 / 3600000) % 24;
                j10 = jElapsedRealtime22 / 86400000;
                if (j10 > 0) {
                }
                bVar.f(new k5("开机时间", g.b.l(str, "）", sb422), r11));
                memBean = new MemBean();
                String[] strArr222 = new String[1];
                strArr222[r11] = "cat /proc/meminfo";
                it = u9.d.r(strArr222).l0().k().iterator();
                while (it.hasNext()) {
                }
                if (memBean.MemAvailable == null) {
                }
                if (Double.parseDouble(memBean.SwapTotal) > 1024.0d) {
                }
                DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                kVar = j.f4033a;
                signatureBean = kVar.f4066q;
                if (signatureBean != null) {
                    if (!kVar.f4066q.str_number.endsWith("ebebe2")) {
                    }
                }
                if (kVar.f4066q == null) {
                }
                bVar.f(new k5("系统签名", kVar.f4066q == null ? "" : "序列号：" + kVar.f4066q.str_number + "\nmd5：" + kVar.f4066q.str_md5, false));
                signatureBeanV = d.b.v(kVar.f4041d);
                if (signatureBeanV != null) {
                }
                bVar.f(new k5("系统版本", Build.FINGERPRINT, z));
                bVar.f(new k5("系统标识", String.valueOf(Build.DISPLAY), z));
                bVar.f(new k5("系统标识", String.valueOf(Build.ID), z));
                bVar.f(new k5("系统标识", String.valueOf(Build.DEVICE), z));
                bVar.f(new k5("内核版本", String.valueOf(System.getProperty("os.version")), z));
                bVar.f(new k5("内网IP", kVar.g(), z));
                ba.h hVarB22 = q6.b();
                bVar.f(new k5("外网IP", hVarB22.f2696b, z));
                bVar.f(new k5("IP位置", hVarB22.f2697c, z));
                bVar.f(new k5("IPv6", q6.c(), z));
                bVar.b();
                break;
            default:
                j7 j7Var = (j7) obj;
                j7Var.getClass();
                StringBuilder sb7 = new StringBuilder("http://");
                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar2 = j.f4033a;
                sb7.append(kVar2.f4052i0);
                sb7.append(":");
                String strS = android.support.v4.media.session.a.s(sb7, kVar2.f4054j0, "/input.html");
                try {
                    int iD = com.yunpan.appmanage.util.k.d(j7Var.f6725b, 280);
                    bVar.f(a9.o.J(iD, iD, strS));
                } catch (Exception unused8) {
                    com.yunpan.appmanage.util.a0.u("生成二维码失败");
                }
                bVar.b();
                break;
        }
    }

    public boolean j(i iVar, int i10, Bundle bundle) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 25 && (i10 & 1) != 0) {
            try {
                ((h) iVar.f76b).f();
                Parcelable parcelable = (Parcelable) ((h) iVar.f76b).k();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception unused) {
                return false;
            }
        }
        ClipDescription description = ((h) iVar.f76b).getDescription();
        h hVar = (h) iVar.f76b;
        ClipData clipData = new ClipData(description, new ClipData.Item(hVar.b()));
        x0.f eVar = i11 >= 31 ? new x0.e(clipData, 2) : new x0.g(clipData, 2);
        eVar.c(hVar.g());
        eVar.a(bundle);
        return b1.r((u) this.f71b, eVar.build()) == null;
    }

    @Override // c6.e
    public void x(final c6.g gVar, View view, final int i10) throws Exception {
        x9.v vVar;
        String str = "";
        int i11 = 2;
        final int i12 = 1;
        Object obj = this.f71b;
        switch (this.f70a) {
            case 6:
                ha.b bVar = (ha.b) obj;
                Context context = bVar.f6725b;
                NameContentSelectBean nameContentSelectBean = (NameContentSelectBean) gVar.t(i10);
                if (i10 == 0) {
                    w wVar = v.f4106a;
                    boolean z = !wVar.R;
                    wVar.R = z;
                    try {
                        wVar.f4123i.k("Accessibility_boot_task", Boolean.valueOf(z));
                    } catch (Exception unused) {
                    }
                    wVar.m();
                    nameContentSelectBean.isSelect = v.f4106a.R;
                    gVar.e(i10);
                    try {
                        String string = Settings.Global.getString(context.getContentResolver(), "enabled_accessibility_services");
                        if (string != null) {
                            str = string;
                        }
                        boolean zIsEmpty = str.isEmpty();
                        com.yunpan.appmanage.util.b0 b0Var = wa.v.f17759a;
                        if (zIsEmpty) {
                            b0Var.e(str);
                        } else {
                            HashSet hashSet = new HashSet();
                            for (String str2 : str.split(":")) {
                                if (str2.contains("/")) {
                                    hashSet.add(ComponentName.unflattenFromString(str2.trim()).flattenToString());
                                }
                            }
                            StringBuilder sb2 = new StringBuilder();
                            Iterator it = hashSet.iterator();
                            while (it.hasNext()) {
                                sb2.append((String) it.next());
                                sb2.append(":");
                            }
                            b0Var.e(sb2.toString().substring(0, sb2.length() - 1));
                        }
                    } catch (Exception unused2) {
                    }
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    j.f4033a.getClass();
                    com.yunpan.appmanage.util.k.m(context, "授权【通知使用权】失败，可能会导致无障碍持久无效");
                    break;
                } else if (i10 == 2) {
                    if (nameContentSelectBean.isSelect) {
                        w wVar2 = v.f4106a;
                        boolean z4 = !wVar2.S;
                        wVar2.S = z4;
                        try {
                            wVar2.f4123i.k("Accessibility_root_mode", Boolean.valueOf(z4));
                        } catch (Exception unused3) {
                        }
                        wVar2.m();
                        nameContentSelectBean.isSelect = wVar2.S;
                        gVar.e(i10);
                        break;
                    } else if (fa.g0.f5682a.f()) {
                        Context context2 = bVar.f6725b;
                        new z6((Activity) context2, context2, "不明白这项是干嘛的话，请一定不要勾选！", "", "我明白的", "取消选择", new ha.a(nameContentSelectBean, gVar, i10, 0)).show();
                        break;
                    } else {
                        com.yunpan.appmanage.util.a0.w("您没有root无需勾选");
                        break;
                    }
                } else if (i10 == 3) {
                    if (nameContentSelectBean.isSelect) {
                        wa.u uVar = t.f17728a;
                        uVar.h(!uVar.f17743h);
                        nameContentSelectBean.isSelect = uVar.f17743h;
                        gVar.e(i10);
                        break;
                    } else {
                        new z6(bVar.f6724a, bVar.f6725b, "警告：请务必认真阅读此项", "勾选后将不能自启动执行任务", "确定勾选", "取消勾选", new ha.a(nameContentSelectBean, gVar, i10, i12)).show();
                        break;
                    }
                } else if (i10 == 1) {
                    wa.u uVar2 = t.f17728a;
                    boolean z10 = !uVar2.f17737e;
                    try {
                        uVar2.f17737e = z10;
                        uVar2.f17731b.k("RebootAccessibility", Boolean.valueOf(z10));
                    } catch (Exception unused4) {
                    }
                    uVar2.i();
                    nameContentSelectBean.isSelect = t.f17728a.f17737e;
                    gVar.e(i10);
                    break;
                } else if (i10 == 4) {
                    wa.u uVar3 = t.f17728a;
                    boolean z11 = !uVar3.f17739f;
                    try {
                        uVar3.f17739f = z11;
                        uVar3.f17731b.k("CoverAccessibility", Boolean.valueOf(z11));
                    } catch (Exception unused5) {
                    }
                    uVar3.i();
                    nameContentSelectBean.isSelect = t.f17728a.f17739f;
                    gVar.e(i10);
                    break;
                }
                break;
            case 7:
                j0 j0Var = (j0) obj;
                ((StrIntBoolBean) j0Var.f7231h.v().get(i10)).boolValue = !((StrIntBoolBean) j0Var.f7231h.v().get(i10)).boolValue;
                j0Var.f7231h.e(i10);
                j0Var.f7233j = 0;
                for (StrIntBoolBean strIntBoolBean : j0Var.f7231h.v()) {
                    if (strIntBoolBean.boolValue) {
                        j0Var.f7233j = strIntBoolBean.intValue | j0Var.f7233j;
                    }
                }
                break;
            case 8:
            case 13:
            case 14:
            case 19:
            case 22:
            default:
                p6 p6Var = (p6) obj;
                p6Var.f7571g.e(((IntIntBean) p6Var.f7574j.t(i10)).int1);
                p6Var.dismiss();
                break;
            case 9:
                q2 q2Var = (q2) obj;
                q2Var.f7604j.c(((AppBean) q2Var.f7602h.t(i10)).name, ((AppBean) q2Var.f7602h.t(i10)).pack);
                q2Var.dismiss();
                break;
            case 10:
                r2 r2Var = (r2) obj;
                AppSelectHomeActivityBean appSelectHomeActivityBean = (AppSelectHomeActivityBean) r2Var.f7660h.t(i10);
                String str3 = appSelectHomeActivityBean.name;
                String str4 = appSelectHomeActivityBean.packageName;
                String str5 = appSelectHomeActivityBean.className;
                ha.o oVar = r2Var.f7662j;
                switch (oVar.f7494a) {
                    case 1:
                        ha.r0 r0Var = ((o0) oVar.f7496c).f7499d;
                        r0Var.f7654j.d(((AppBean) r0Var.f7652h.t(oVar.f7495b)).name + "(" + str3 + ")", str4, str5);
                        r0Var.dismiss();
                        break;
                    case 2:
                        ha.r0 r0Var2 = ((o0) oVar.f7496c).f7499d;
                        r0Var2.f7654j.d(((AppBean) r0Var2.f7652h.t(oVar.f7495b)).name + "(" + str3 + ")", str4, str5);
                        r0Var2.dismiss();
                        break;
                    default:
                        t2 t2Var = (t2) ((s2) oVar.f7496c).f7726d;
                        cd cdVar = t2Var.f7785j;
                        String str6 = ((AppBean) t2Var.f7783h.t(oVar.f7495b)).name;
                        ed edVar = cdVar.f6869a;
                        edVar.f6987k = str6;
                        edVar.l = str4;
                        edVar.f6988m = str5;
                        edVar.f6989n.setText(str6);
                        t2Var.dismiss();
                        break;
                }
                r2Var.dismiss();
                break;
            case 11:
                t2 t2Var2 = (t2) obj;
                if (t2Var2.f7785j != null && (vVar = t2Var2.f7783h) != null && i10 < vVar.b() && t2Var2.f7783h.t(i10) != null) {
                    if (t2Var2.f7784i) {
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        Intent launchIntentForPackage = j.f4033a.f4037b.getLaunchIntentForPackage(((AppBean) t2Var2.f7783h.t(i10)).pack);
                        if (launchIntentForPackage != null) {
                            cd cdVar2 = t2Var2.f7785j;
                            String str7 = ((AppBean) t2Var2.f7783h.t(i10)).name;
                            String str8 = ((AppBean) t2Var2.f7783h.t(i10)).pack;
                            String className = launchIntentForPackage.getComponent().getClassName();
                            ed edVar2 = cdVar2.f6869a;
                            edVar2.f6987k = str7;
                            edVar2.l = str8;
                            edVar2.f6988m = className;
                            edVar2.f6989n.setText(str7);
                            t2Var2.dismiss();
                            break;
                        } else {
                            int i13 = 0;
                            new mc.c(i13, new b8.a(((AppBean) t2Var2.f7783h.t(i10)).pack, 6)).d(rc.f.f13757b).a(fc.b.a()).b(new s2(i10, i13, t2Var2));
                            break;
                        }
                    } else {
                        cd cdVar3 = t2Var2.f7785j;
                        String str9 = ((AppBean) t2Var2.f7783h.t(i10)).name;
                        String str10 = ((AppBean) t2Var2.f7783h.t(i10)).pack;
                        ed edVar3 = cdVar3.f6869a;
                        edVar3.f6987k = str9;
                        edVar3.l = str10;
                        edVar3.f6988m = "";
                        edVar3.f6989n.setText(str9);
                        t2Var2.dismiss();
                        break;
                    }
                }
                break;
            case 12:
                v2 v2Var = (v2) obj;
                ArrayList arrayList = v2Var.f7901i;
                com.bumptech.glide.c.j(view);
                v2Var.dismiss();
                try {
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName(((t3) arrayList.get(i10)).f18339c, ((t3) arrayList.get(i10)).f18340d));
                    intent.setFlags(268435456);
                    v2Var.f6725b.startActivity(intent);
                    break;
                } catch (Exception unused6) {
                    Toaster.show((CharSequence) "此界面无法打开！");
                    return;
                }
            case 15:
                final v3 v3Var = (v3) obj;
                v3Var.getClass();
                final NameContentSelectBean nameContentSelectBean2 = (NameContentSelectBean) gVar.t(i10);
                Context context3 = v3Var.f6725b;
                if (i10 == 0) {
                    wa.u uVar4 = t.f17728a;
                    boolean z12 = !uVar4.D;
                    try {
                        uVar4.D = z12;
                        uVar4.f17731b.k("AutoTaskCloseShowToast", Boolean.valueOf(z12));
                    } catch (Exception unused7) {
                    }
                    uVar4.i();
                    nameContentSelectBean2.isSelect = t.f17728a.D;
                    gVar.e(i10);
                    m.e(context3);
                    break;
                } else if (i10 == 1) {
                    wa.u uVar5 = t.f17728a;
                    boolean z13 = uVar5.E;
                    if (z13 || Build.VERSION.SDK_INT >= 21) {
                        if (z13 || !uVar5.f17743h) {
                            boolean z14 = !z13;
                            try {
                                uVar5.E = z14;
                                uVar5.f17731b.k("AutoTaskStartAutoStartTask", Boolean.valueOf(z14));
                            } catch (Exception unused8) {
                            }
                            uVar5.i();
                            nameContentSelectBean2.isSelect = t.f17728a.E;
                            gVar.e(i10);
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.s("由于您勾选了[开机后手动点击启动]，不能再勾选此项", false);
                            break;
                        }
                    } else {
                        com.yunpan.appmanage.util.a0.u("不支持5.0以下系统使用");
                        break;
                    }
                } else if (i10 == 2) {
                    wa.u uVar6 = t.f17728a;
                    boolean z15 = !uVar6.G;
                    try {
                        uVar6.G = z15;
                        uVar6.f17731b.k("AutoHideFloatingWindow", Boolean.valueOf(z15));
                    } catch (Exception unused9) {
                    }
                    uVar6.i();
                    nameContentSelectBean2.isSelect = t.f17728a.G;
                    gVar.e(i10);
                    m.e(context3);
                    break;
                } else if (i10 == 3) {
                    wa.u uVar7 = t.f17728a;
                    boolean z16 = !uVar7.F;
                    try {
                        uVar7.F = z16;
                        uVar7.f17731b.k("AutoTask_ScreenOnOff_AccService", Boolean.valueOf(z16));
                    } catch (Exception unused10) {
                    }
                    uVar7.i();
                    nameContentSelectBean2.isSelect = t.f17728a.F;
                    gVar.e(i10);
                    m.e(context3);
                    break;
                } else if (i10 == 4) {
                    if (nameContentSelectBean2.isSelect) {
                        wa.u uVar8 = t.f17728a;
                        uVar8.getClass();
                        try {
                            uVar8.z = 0;
                            uVar8.f17731b.l("AutoTaskSafetyProtectionTwoCount", 0);
                        } catch (Exception unused11) {
                        }
                        uVar8.i();
                        nameContentSelectBean2.isSelect = false;
                        nameContentSelectBean2.name = "熔断保护：两分钟内连续触发40次映射以上时，马上停止自动化";
                        gVar.e(i10);
                        m.e(context3);
                        break;
                    } else {
                        String[] strArr = {"5次", "10次", "15次", "20次", "25次", "30次", "35次", "40次", "45次", "50次", "55次", "60次"};
                        ArrayList arrayList2 = new ArrayList(12);
                        int iC = 0;
                        for (int i14 = 12; iC < i14; i14 = 12) {
                            String str11 = strArr[iC];
                            iC = g.b.c(str11, arrayList2, str11, iC, 1);
                        }
                        final int i15 = 0;
                        new fa(v3Var.f6724a, v3Var.f6725b, null, Collections.unmodifiableList(arrayList2), new ea() { // from class: ha.s3
                            @Override // ha.ea
                            public final void b(int i16) {
                                switch (i15) {
                                    case 0:
                                        v3 v3Var2 = v3Var;
                                        v3Var2.getClass();
                                        wa.u uVar9 = wa.t.f17728a;
                                        int i17 = (i16 + 1) * 5;
                                        uVar9.getClass();
                                        try {
                                            uVar9.z = i17;
                                            uVar9.f17731b.l("AutoTaskSafetyProtectionTwoCount", Integer.valueOf(i17));
                                        } catch (Exception unused12) {
                                        }
                                        uVar9.i();
                                        NameContentSelectBean nameContentSelectBean3 = nameContentSelectBean2;
                                        nameContentSelectBean3.isSelect = true;
                                        StringBuilder sb3 = new StringBuilder("熔断保护：两分钟内连续触发");
                                        int i18 = uVar9.z;
                                        sb3.append(i18 == 0 ? "40" : Integer.valueOf(i18));
                                        sb3.append("次映射以上时，马上停止自动化");
                                        nameContentSelectBean3.name = sb3.toString();
                                        gVar.e(i10);
                                        ta.m.e(v3Var2.f6725b);
                                        break;
                                    default:
                                        v3 v3Var3 = v3Var;
                                        v3Var3.getClass();
                                        wa.u uVar10 = wa.t.f17728a;
                                        int i19 = (i16 + 1) * 5;
                                        uVar10.getClass();
                                        try {
                                            uVar10.A = i19;
                                            uVar10.f17731b.l("FuseProtectionLogcatCount", Integer.valueOf(i19));
                                        } catch (Exception unused13) {
                                        }
                                        uVar10.i();
                                        NameContentSelectBean nameContentSelectBean4 = nameContentSelectBean2;
                                        nameContentSelectBean4.isSelect = true;
                                        StringBuilder sb4 = new StringBuilder("熔断保护：两分钟内连续触发");
                                        int i20 = uVar10.A;
                                        sb4.append(i20 == 0 ? "40" : Integer.valueOf(i20));
                                        sb4.append("次日志映射以上时，马上停止自动化");
                                        nameContentSelectBean4.name = sb4.toString();
                                        gVar.e(i10);
                                        ta.m.e(v3Var3.f6725b);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    }
                } else if (i10 == 5) {
                    if (nameContentSelectBean2.isSelect) {
                        new z6(v3Var.f6724a, context3, "是否要取消勾选此功能？？？", "强烈建议您勾选此功能", "确定取消", "算了", new u3(v3Var, nameContentSelectBean2, gVar, i10)).show();
                        break;
                    } else {
                        String[] strArr2 = {"5次", "10次", "15次", "20次", "25次", "30次", "35次", "40次", "45次", "50次", "55次", "60次"};
                        ArrayList arrayList3 = new ArrayList(12);
                        int iC2 = 0;
                        while (iC2 < 12) {
                            String str12 = strArr2[iC2];
                            iC2 = g.b.c(str12, arrayList3, str12, iC2, 1);
                        }
                        final int i16 = 1;
                        new fa(v3Var.f6724a, v3Var.f6725b, null, Collections.unmodifiableList(arrayList3), new ea() { // from class: ha.s3
                            @Override // ha.ea
                            public final void b(int i162) {
                                switch (i16) {
                                    case 0:
                                        v3 v3Var2 = v3Var;
                                        v3Var2.getClass();
                                        wa.u uVar9 = wa.t.f17728a;
                                        int i17 = (i162 + 1) * 5;
                                        uVar9.getClass();
                                        try {
                                            uVar9.z = i17;
                                            uVar9.f17731b.l("AutoTaskSafetyProtectionTwoCount", Integer.valueOf(i17));
                                        } catch (Exception unused12) {
                                        }
                                        uVar9.i();
                                        NameContentSelectBean nameContentSelectBean3 = nameContentSelectBean2;
                                        nameContentSelectBean3.isSelect = true;
                                        StringBuilder sb3 = new StringBuilder("熔断保护：两分钟内连续触发");
                                        int i18 = uVar9.z;
                                        sb3.append(i18 == 0 ? "40" : Integer.valueOf(i18));
                                        sb3.append("次映射以上时，马上停止自动化");
                                        nameContentSelectBean3.name = sb3.toString();
                                        gVar.e(i10);
                                        ta.m.e(v3Var2.f6725b);
                                        break;
                                    default:
                                        v3 v3Var3 = v3Var;
                                        v3Var3.getClass();
                                        wa.u uVar10 = wa.t.f17728a;
                                        int i19 = (i162 + 1) * 5;
                                        uVar10.getClass();
                                        try {
                                            uVar10.A = i19;
                                            uVar10.f17731b.l("FuseProtectionLogcatCount", Integer.valueOf(i19));
                                        } catch (Exception unused13) {
                                        }
                                        uVar10.i();
                                        NameContentSelectBean nameContentSelectBean4 = nameContentSelectBean2;
                                        nameContentSelectBean4.isSelect = true;
                                        StringBuilder sb4 = new StringBuilder("熔断保护：两分钟内连续触发");
                                        int i20 = uVar10.A;
                                        sb4.append(i20 == 0 ? "40" : Integer.valueOf(i20));
                                        sb4.append("次日志映射以上时，马上停止自动化");
                                        nameContentSelectBean4.name = sb4.toString();
                                        gVar.e(i10);
                                        ta.m.e(v3Var3.f6725b);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    }
                } else if (i10 == 6) {
                    wa.u uVar9 = t.f17728a;
                    boolean z17 = !uVar9.C;
                    try {
                        uVar9.C = z17;
                        uVar9.f17731b.k("KeepAlive_FrontDeskNotice", Boolean.valueOf(z17));
                    } catch (Exception unused12) {
                    }
                    uVar9.i();
                    wa.u uVar10 = t.f17728a;
                    nameContentSelectBean2.isSelect = uVar10.C;
                    gVar.e(i10);
                    try {
                        Intent intent2 = new Intent(context3.getPackageName() + ".BROADCAST_FRONT_DESK_SERVICE");
                        intent2.putExtra("bool", uVar10.C);
                        intent2.setPackage(context3.getPackageName());
                        context3.sendBroadcast(intent2);
                        break;
                    } catch (Exception unused13) {
                        return;
                    }
                } else if (i10 == 7) {
                    wa.u uVar11 = t.f17728a;
                    boolean z18 = !uVar11.B;
                    try {
                        uVar11.B = z18;
                        uVar11.f17731b.k("KeepAlive_HiddenFront", Boolean.valueOf(z18));
                    } catch (Exception unused14) {
                    }
                    uVar11.i();
                    nameContentSelectBean2.isSelect = t.f17728a.B;
                    gVar.e(i10);
                    if (Build.VERSION.SDK_INT < 21) {
                        com.yunpan.appmanage.util.a0.u("此功能仅支持安卓5.0以上系统");
                        break;
                    } else {
                        ActivityHome.D(nameContentSelectBean2.isSelect);
                        break;
                    }
                } else if (i10 == 8) {
                    wa.u uVar12 = t.f17728a;
                    boolean z19 = !uVar12.H;
                    try {
                        uVar12.H = z19;
                        uVar12.f17731b.k("AutoTask_error_close_restart", Boolean.valueOf(z19));
                    } catch (Exception unused15) {
                    }
                    uVar12.i();
                    nameContentSelectBean2.isSelect = t.f17728a.H;
                    gVar.e(i10);
                    m.e(context3);
                    break;
                } else if (i10 == 9) {
                    wa.u uVar13 = t.f17728a;
                    boolean z20 = !uVar13.I;
                    try {
                        uVar13.I = z20;
                        uVar13.f17731b.k("AutoTask_error_close_execAutoStartTask", Boolean.valueOf(z20));
                    } catch (Exception unused16) {
                    }
                    uVar13.i();
                    nameContentSelectBean2.isSelect = t.f17728a.I;
                    gVar.e(i10);
                    m.e(context3);
                    break;
                } else if (i10 == 10) {
                    if (nameContentSelectBean2.isSelect) {
                        com.yunpan.appmanage.util.a0.u("如需关闭权限，请在快捷权限管理中关闭");
                        break;
                    } else {
                        b0.f5652a.getClass();
                        if (w0.O()) {
                            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                            j.f4033a.f4048g0.execute(new a2.h(23, v3Var));
                            nameContentSelectBean2.isSelect = true;
                            gVar.e(i10);
                            break;
                        } else {
                            DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                            if (!XXPermissions.isGrantedPermission(j.f4033a.f4035a, PermissionLists.getRequestIgnoreBatteryOptimizationsPermission())) {
                                final int i17 = 0;
                                XXPermissions.with(context3).permission(PermissionLists.getRequestIgnoreBatteryOptimizationsPermission()).request(new OnPermissionCallback() { // from class: ha.t3
                                    @Override // com.hjq.permissions.OnPermissionCallback
                                    public final void onPermissionResult(List list, List list2) {
                                        switch (i17) {
                                            case 0:
                                                if (!list2.isEmpty()) {
                                                    com.yunpan.appmanage.util.a0.u("无法申请权限，请在快捷权限管理中开启");
                                                    break;
                                                } else {
                                                    nameContentSelectBean2.isSelect = true;
                                                    gVar.e(i10);
                                                    break;
                                                }
                                            default:
                                                if (!list2.isEmpty()) {
                                                    com.yunpan.appmanage.util.a0.u("无法申请权限，请在快捷权限管理中开启");
                                                    break;
                                                } else {
                                                    nameContentSelectBean2.isSelect = true;
                                                    gVar.e(i10);
                                                    break;
                                                }
                                        }
                                    }
                                });
                                break;
                            }
                        }
                    }
                }
                break;
            case 16:
                j4 j4Var = (j4) obj;
                int i18 = ((KeyMapSelectBean) j4Var.f7254h.t(i10)).gn_type;
                if (i18 != -1) {
                    if (i18 == -2) {
                        if (((KeyMapSelectBean) j4Var.f7254h.t(i10)).ico == R.drawable.return1) {
                            j4Var.dismiss();
                            break;
                        }
                    } else {
                        int i19 = Build.VERSION.SDK_INT;
                        Context context4 = j4Var.f6725b;
                        if (i19 < 33 || ((i18 != 310 && i18 != 311) || XXPermissions.isGrantedPermission(context4, PermissionLists.getBluetoothConnectPermission()))) {
                            if (i18 == 600) {
                                if (!p000if.a.b0(context4)) {
                                    com.yunpan.appmanage.util.a0.u("请先授予【修改系统安全设置】权限");
                                    break;
                                }
                            } else if (i18 == 116) {
                                new z6(j4Var.f6724a, j4Var.f6725b, "注意：此功能仅适合那些每次开机后，系统时间都不正确的那些古董设备！\n\n如果你设备正常的话，请一定不要使用此功能！", "注意：请在此任务的前面添加适当的延时，因为此功能需要等系统联网后才能读取北京时间", "确定添加", "取消添加", new i4(j4Var, i10, 0)).show();
                                break;
                            } else if (i18 == 601) {
                                new z6(j4Var.f6724a, j4Var.f6725b, "用途：某个别车机，设置了应用沉浸后有效，但是重启后又被系统重置了！如果你是这种情况，那么可以用此功能！", "", "确定", "取消", new i4(j4Var, i10, i12)).show();
                                break;
                            } else {
                                Activity activity = j4Var.f6724a;
                                if (i18 == 347) {
                                    if (!XXPermissions.isGrantedPermission(context4, PermissionLists.getAccessFineLocationPermission())) {
                                        XXPermissions.with(context4).permission(PermissionLists.getAccessFineLocationPermission()).request(new g2.c(7));
                                        break;
                                    } else if (!((LocationManager) context4.getSystemService(RequestParameters.SUBRESOURCE_LOCATION)).isProviderEnabled("gps")) {
                                        com.yunpan.appmanage.util.a0.u("GPS模块未开启");
                                        break;
                                    } else {
                                        new z6(activity, context4, "提示：此任务需GPS，需开启定位，且开机后等GPS正常后方可使用，建议把任务放在最后", "").show();
                                    }
                                } else if (i18 == 348 || i18 == 349) {
                                    new z6(activity, context4, "提示：此任务需联网，所以请把此任务放在最后，前面记得延时等待足够系统联网的时间", "").show();
                                }
                            }
                            j4Var.f7256j.a((KeyMapSelectBean) j4Var.f7254h.t(i10));
                            j4Var.dismiss();
                            break;
                        } else {
                            XXPermissions.with(context4).permission(PermissionLists.getBluetoothConnectPermission()).request(new g2.c(6));
                            break;
                        }
                    }
                }
                break;
            case 17:
                m4 m4Var = (m4) obj;
                m4Var.getClass();
                final NameContentSelectBean nameContentSelectBean3 = (NameContentSelectBean) gVar.t(i10);
                if (i10 == 0) {
                    wa.u uVar14 = t.f17728a;
                    boolean z21 = !uVar14.f17746k;
                    try {
                        uVar14.f17746k = z21;
                        uVar14.f17731b.k("BootStartTaskBroadcast", Boolean.valueOf(z21));
                    } catch (Exception unused17) {
                    }
                    uVar14.i();
                    nameContentSelectBean3.isSelect = t.f17728a.f17746k;
                    gVar.e(i10);
                    break;
                } else if (i10 == 1) {
                    wa.u uVar15 = t.f17728a;
                    boolean z22 = !uVar15.f17745j;
                    try {
                        uVar15.f17745j = z22;
                        uVar15.f17731b.k("BootStartTaskUserPresent", Boolean.valueOf(z22));
                    } catch (Exception unused18) {
                    }
                    uVar15.i();
                    nameContentSelectBean3.isSelect = t.f17728a.f17745j;
                    gVar.e(i10);
                    break;
                } else if (i10 == 2) {
                    wa.u uVar16 = t.f17728a;
                    boolean z23 = !uVar16.f17744i;
                    try {
                        uVar16.f17744i = z23;
                        uVar16.f17731b.k("BootStartTaskScreenOn", Boolean.valueOf(z23));
                    } catch (Exception unused19) {
                    }
                    uVar16.i();
                    nameContentSelectBean3.isSelect = t.f17728a.f17744i;
                    gVar.e(i10);
                    break;
                } else if (i10 == 3) {
                    wa.u uVar17 = t.f17728a;
                    boolean z24 = !uVar17.f17740f0;
                    try {
                        uVar17.f17740f0 = z24;
                        uVar17.f17731b.k("BootTaskWaitingSystemLoading", Boolean.valueOf(z24));
                    } catch (Exception unused20) {
                    }
                    uVar17.i();
                    nameContentSelectBean3.isSelect = t.f17728a.f17740f0;
                    gVar.e(i10);
                    break;
                } else if (i10 == 4) {
                    wa.u uVar18 = t.f17728a;
                    boolean z25 = !uVar18.f17734c0;
                    try {
                        uVar18.f17734c0 = z25;
                        uVar18.f17731b.k("BootTaskDetectionBootTime", Boolean.valueOf(z25));
                    } catch (Exception unused21) {
                    }
                    uVar18.i();
                    nameContentSelectBean3.isSelect = t.f17728a.f17734c0;
                    gVar.e(i10);
                    break;
                } else if (i10 == 5) {
                    wa.u uVar19 = t.f17728a;
                    boolean z26 = !uVar19.f17736d0;
                    try {
                        uVar19.f17736d0 = z26;
                        uVar19.f17731b.k("BootTaskPreventRepeatedLaunches", Boolean.valueOf(z26));
                    } catch (Exception unused22) {
                    }
                    uVar19.i();
                    nameContentSelectBean3.isSelect = t.f17728a.f17736d0;
                    gVar.e(i10);
                    break;
                } else if (i10 == 6) {
                    b0.f5652a.getClass();
                    if (w0.O()) {
                        nameContentSelectBean3.isSelect = !nameContentSelectBean3.isSelect;
                        gVar.e(i10);
                        new mc.c(0, new d2.w(m4Var, 12, nameContentSelectBean3)).d(rc.f.f13757b).a(fc.b.a()).b(new l4(nameContentSelectBean3, gVar, i10));
                        break;
                    } else {
                        com.yunpan.appmanage.util.a0.u("需连接adb");
                        break;
                    }
                } else if (i10 == 7) {
                    wa.u uVar20 = t.f17728a;
                    boolean z27 = !uVar20.f17738e0;
                    try {
                        uVar20.f17738e0 = z27;
                        uVar20.f17731b.k("DetectionBootUnableToEnterDesktop", Boolean.valueOf(z27));
                    } catch (Exception unused23) {
                    }
                    uVar20.i();
                    nameContentSelectBean3.isSelect = t.f17728a.f17738e0;
                    gVar.e(i10);
                    break;
                } else if (i10 == 8) {
                    if (nameContentSelectBean3.isSelect) {
                        wa.u uVar21 = t.f17728a;
                        uVar21.h(!uVar21.f17743h);
                        nameContentSelectBean3.isSelect = uVar21.f17743h;
                        gVar.e(i10);
                        break;
                    } else {
                        new z6(m4Var.f6724a, m4Var.f6725b, "警告：请务必认真阅读此项", "勾选后将不能自启动执行任务", "确定勾选", "取消勾选", new ha.a(nameContentSelectBean3, gVar, i10, i11)).show();
                        break;
                    }
                } else if (i10 == 9) {
                    if (nameContentSelectBean3.isSelect) {
                        com.yunpan.appmanage.util.a0.u("如需关闭权限，请在快捷权限管理中关闭");
                        break;
                    } else {
                        b0.f5652a.getClass();
                        if (w0.O()) {
                            DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
                            j.f4033a.f4048g0.execute(new a2.h(24, m4Var));
                            nameContentSelectBean3.isSelect = true;
                            gVar.e(i10);
                            break;
                        } else {
                            DecimalFormat decimalFormat6 = com.yunpan.appmanage.util.k.f4034u0;
                            if (!XXPermissions.isGrantedPermission(j.f4033a.f4035a, PermissionLists.getRequestIgnoreBatteryOptimizationsPermission())) {
                                XXPermissions.with(m4Var.f6725b).permission(PermissionLists.getRequestIgnoreBatteryOptimizationsPermission()).request(new OnPermissionCallback() { // from class: ha.t3
                                    @Override // com.hjq.permissions.OnPermissionCallback
                                    public final void onPermissionResult(List list, List list2) {
                                        switch (i12) {
                                            case 0:
                                                if (!list2.isEmpty()) {
                                                    com.yunpan.appmanage.util.a0.u("无法申请权限，请在快捷权限管理中开启");
                                                    break;
                                                } else {
                                                    nameContentSelectBean3.isSelect = true;
                                                    gVar.e(i10);
                                                    break;
                                                }
                                            default:
                                                if (!list2.isEmpty()) {
                                                    com.yunpan.appmanage.util.a0.u("无法申请权限，请在快捷权限管理中开启");
                                                    break;
                                                } else {
                                                    nameContentSelectBean3.isSelect = true;
                                                    gVar.e(i10);
                                                    break;
                                                }
                                        }
                                    }
                                });
                                break;
                            }
                        }
                    }
                }
                break;
            case 18:
                x9.y0 y0Var = (x9.y0) obj;
                ((x0) y0Var.t(i10)).f18384b = !((x0) y0Var.t(i10)).f18384b;
                y0Var.e(i10);
                break;
            case 20:
                q5 q5Var = (q5) obj;
                NameValueBean nameValueBean = (NameValueBean) q5Var.f7613h.t(i10);
                boolean zEquals = nameValueBean.name.equals("权限：");
                Context context5 = q5Var.f6725b;
                if (zEquals) {
                    new z5(q5Var.f6724a, context5, q5Var.f7614i, q5Var.f7615j).show();
                    q5Var.dismiss();
                    break;
                } else {
                    ClipboardManager clipboardManager = (ClipboardManager) context5.getSystemService("clipboard");
                    if (clipboardManager == null) {
                        com.yunpan.appmanage.util.a0.y("无法复制：无法获取剪切板，可能您没给权限(剪切板)");
                        break;
                    } else {
                        clipboardManager.setPrimaryClip(ClipData.newPlainText(AnnotatedPrivateKey.LABEL, nameValueBean.value));
                        com.yunpan.appmanage.util.a0.w("已复制");
                        break;
                    }
                }
            case 21:
                r5 r5Var = (r5) obj;
                ((ClipboardManager) r5Var.f6724a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(AnnotatedPrivateKey.LABEL, ((w3) r5Var.f7682h.t(i10)).f18365b.trim()));
                Toaster.show((CharSequence) "已复制路径");
                break;
            case 23:
                a(gVar, view, i10);
                break;
            case 24:
                h(gVar, view, i10);
                break;
            case 25:
                i(gVar, view, i10);
                break;
        }
    }
}
