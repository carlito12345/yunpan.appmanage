package ha;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.util.Base64;
import android.view.View;
import com.hjq.permissions.OnPermissionCallback;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import com.yunpan.appmanage.db.AppBean;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final /* synthetic */ class jd implements c6.e, ma.g, OnPermissionCallback, v8.c, y9.a, u1.f, t7.d, te.p, q7.a0, qh.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7289a;

    public /* synthetic */ jd(int i10) {
        this.f7289a = i10;
    }

    public Constructor a() {
        switch (this.f7289a) {
            case 13:
                if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
                    return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(l2.o.class).getConstructor(Integer.TYPE);
                }
                return null;
            default:
                return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(l2.o.class).getConstructor(null);
        }
    }

    @Override // u1.f
    public void accept(Object obj) {
        ((ExecutorService) obj).shutdown();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x032b  */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v31, types: [android.text.Spannable, android.text.SpannableString] */
    @Override // t7.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object apply(Object obj) {
        CharSequence charSequence;
        Bitmap bitmapDecodeByteArray;
        String str;
        float f10;
        int i10;
        String str2;
        int i11;
        float f11;
        String str3;
        int i12;
        int i13 = 3;
        int i14 = 2;
        boolean z = true;
        switch (this.f7289a) {
            case 10:
                Bundle bundle = (Bundle) obj;
                ?? charSequence2 = bundle.getCharSequence(t1.b.f14657s);
                if (charSequence2 != 0) {
                    ArrayList parcelableArrayList = bundle.getParcelableArrayList(t1.b.f14658t);
                    if (parcelableArrayList != null) {
                        charSequence2 = SpannableString.valueOf(charSequence2);
                        Iterator it = parcelableArrayList.iterator();
                        while (it.hasNext()) {
                            Bundle bundle2 = (Bundle) it.next();
                            int i15 = bundle2.getInt(t1.d.f14683a);
                            int i16 = bundle2.getInt(t1.d.f14684b);
                            int i17 = bundle2.getInt(t1.d.f14685c);
                            int i18 = bundle2.getInt(t1.d.f14686d, -1);
                            Bundle bundle3 = bundle2.getBundle(t1.d.f14687e);
                            if (i18 == 1) {
                                bundle3.getClass();
                                String string = bundle3.getString(t1.g.f14688c);
                                string.getClass();
                                charSequence2.setSpan(new t1.g(string, bundle3.getInt(t1.g.f14689d)), i15, i16, i17);
                            } else if (i18 == i14) {
                                bundle3.getClass();
                                charSequence2.setSpan(new t1.h(bundle3.getInt(t1.h.f14692d), bundle3.getInt(t1.h.f14693e), bundle3.getInt(t1.h.f14694f)), i15, i16, i17);
                            } else if (i18 == i13) {
                                charSequence2.setSpan(new t1.e(), i15, i16, i17);
                            } else if (i18 == 4) {
                                bundle3.getClass();
                                String string2 = bundle3.getString(t1.i.f14698b);
                                string2.getClass();
                                charSequence2.setSpan(new t1.i(string2), i15, i16, i17);
                            }
                            i13 = 3;
                            i14 = 2;
                        }
                    }
                } else {
                    charSequence2 = 0;
                }
                Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(t1.b.f14659u);
                Layout.Alignment alignment2 = alignment != null ? alignment : null;
                Layout.Alignment alignment3 = (Layout.Alignment) bundle.getSerializable(t1.b.f14660v);
                Layout.Alignment alignment4 = alignment3 != null ? alignment3 : null;
                Bitmap bitmap = (Bitmap) bundle.getParcelable(t1.b.f14661w);
                if (bitmap != null) {
                    bitmapDecodeByteArray = bitmap;
                } else {
                    byte[] byteArray = bundle.getByteArray(t1.b.f14662x);
                    if (byteArray == null) {
                        charSequence = charSequence2;
                        bitmapDecodeByteArray = null;
                        str = t1.b.f14663y;
                        if (!bundle.containsKey(str)) {
                            String str4 = t1.b.z;
                            if (bundle.containsKey(str4)) {
                                f10 = bundle.getFloat(str);
                                i10 = bundle.getInt(str4);
                            } else {
                                f10 = -3.4028235E38f;
                                i10 = Integer.MIN_VALUE;
                            }
                        }
                        String str5 = t1.b.A;
                        int i19 = !bundle.containsKey(str5) ? bundle.getInt(str5) : Integer.MIN_VALUE;
                        String str6 = t1.b.B;
                        float f12 = !bundle.containsKey(str6) ? bundle.getFloat(str6) : -3.4028235E38f;
                        String str7 = t1.b.C;
                        int i20 = !bundle.containsKey(str7) ? bundle.getInt(str7) : Integer.MIN_VALUE;
                        str2 = t1.b.E;
                        if (!bundle.containsKey(str2)) {
                            String str8 = t1.b.D;
                            if (bundle.containsKey(str8)) {
                                f11 = bundle.getFloat(str2);
                                i11 = bundle.getInt(str8);
                            } else {
                                i11 = Integer.MIN_VALUE;
                                f11 = -3.4028235E38f;
                            }
                        }
                        String str9 = t1.b.F;
                        float f13 = !bundle.containsKey(str9) ? bundle.getFloat(str9) : -3.4028235E38f;
                        String str10 = t1.b.G;
                        float f14 = !bundle.containsKey(str10) ? bundle.getFloat(str10) : -3.4028235E38f;
                        str3 = t1.b.H;
                        if (bundle.containsKey(str3)) {
                            z = false;
                            i12 = -16777216;
                        } else {
                            i12 = bundle.getInt(str3);
                        }
                        boolean z4 = bundle.getBoolean(t1.b.I, false) ? false : z;
                        String str11 = t1.b.J;
                        int i21 = !bundle.containsKey(str11) ? bundle.getInt(str11) : Integer.MIN_VALUE;
                        String str12 = t1.b.K;
                        float f15 = !bundle.containsKey(str12) ? bundle.getFloat(str12) : 0.0f;
                        String str13 = t1.b.L;
                        return new t1.b(charSequence, alignment2, alignment4, bitmapDecodeByteArray, f10, i10, i19, f12, i20, i11, f11, f13, f14, z4, i12, i21, f15, !bundle.containsKey(str13) ? bundle.getInt(str13) : 0);
                    }
                    bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                }
                charSequence = null;
                str = t1.b.f14663y;
                if (!bundle.containsKey(str)) {
                }
                String str52 = t1.b.A;
                if (!bundle.containsKey(str52)) {
                }
                String str62 = t1.b.B;
                if (!bundle.containsKey(str62)) {
                }
                String str72 = t1.b.C;
                if (!bundle.containsKey(str72)) {
                }
                str2 = t1.b.E;
                if (!bundle.containsKey(str2)) {
                }
                String str92 = t1.b.F;
                if (!bundle.containsKey(str92)) {
                }
                String str102 = t1.b.G;
                if (!bundle.containsKey(str102)) {
                }
                str3 = t1.b.H;
                if (bundle.containsKey(str3)) {
                }
                if (bundle.getBoolean(t1.b.I, false)) {
                }
                String str112 = t1.b.J;
                if (!bundle.containsKey(str112)) {
                }
                String str122 = t1.b.K;
                if (!bundle.containsKey(str122)) {
                }
                String str132 = t1.b.L;
                return new t1.b(charSequence, alignment2, alignment4, bitmapDecodeByteArray, f10, i10, i19, f12, i20, i11, f11, f13, f14, z4, i12, i21, f15, !bundle.containsKey(str132) ? bundle.getInt(str132) : 0);
            case 11:
                t1.b bVar = (t1.b) obj;
                bVar.getClass();
                Bundle bundle4 = new Bundle();
                CharSequence charSequence3 = bVar.f14664a;
                if (charSequence3 != null) {
                    bundle4.putCharSequence(t1.b.f14657s, charSequence3);
                    if (charSequence3 instanceof Spanned) {
                        Spanned spanned = (Spanned) charSequence3;
                        String str14 = t1.d.f14683a;
                        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                        for (t1.g gVar : (t1.g[]) spanned.getSpans(0, spanned.length(), t1.g.class)) {
                            gVar.getClass();
                            Bundle bundle5 = new Bundle();
                            bundle5.putString(t1.g.f14688c, gVar.f14690a);
                            bundle5.putInt(t1.g.f14689d, gVar.f14691b);
                            arrayList.add(t1.d.a(spanned, gVar, 1, bundle5));
                        }
                        for (t1.h hVar : (t1.h[]) spanned.getSpans(0, spanned.length(), t1.h.class)) {
                            hVar.getClass();
                            Bundle bundle6 = new Bundle();
                            bundle6.putInt(t1.h.f14692d, hVar.f14695a);
                            bundle6.putInt(t1.h.f14693e, hVar.f14696b);
                            bundle6.putInt(t1.h.f14694f, hVar.f14697c);
                            arrayList.add(t1.d.a(spanned, hVar, 2, bundle6));
                        }
                        for (t1.e eVar : (t1.e[]) spanned.getSpans(0, spanned.length(), t1.e.class)) {
                            arrayList.add(t1.d.a(spanned, eVar, 3, null));
                        }
                        for (t1.i iVar : (t1.i[]) spanned.getSpans(0, spanned.length(), t1.i.class)) {
                            iVar.getClass();
                            Bundle bundle7 = new Bundle();
                            bundle7.putString(t1.i.f14698b, iVar.f14699a);
                            arrayList.add(t1.d.a(spanned, iVar, 4, bundle7));
                        }
                        if (!arrayList.isEmpty()) {
                            bundle4.putParcelableArrayList(t1.b.f14658t, arrayList);
                        }
                    }
                }
                bundle4.putSerializable(t1.b.f14659u, bVar.f14665b);
                bundle4.putSerializable(t1.b.f14660v, bVar.f14666c);
                bundle4.putFloat(t1.b.f14663y, bVar.f14668e);
                bundle4.putInt(t1.b.z, bVar.f14669f);
                bundle4.putInt(t1.b.A, bVar.f14670g);
                bundle4.putFloat(t1.b.B, bVar.f14671h);
                bundle4.putInt(t1.b.C, bVar.f14672i);
                bundle4.putInt(t1.b.D, bVar.f14676n);
                bundle4.putFloat(t1.b.E, bVar.f14677o);
                bundle4.putFloat(t1.b.F, bVar.f14673j);
                bundle4.putFloat(t1.b.G, bVar.f14674k);
                bundle4.putBoolean(t1.b.I, bVar.l);
                bundle4.putInt(t1.b.H, bVar.f14675m);
                bundle4.putInt(t1.b.J, bVar.f14678p);
                bundle4.putFloat(t1.b.K, bVar.f14679q);
                bundle4.putInt(t1.b.L, bVar.r);
                Bitmap bitmap2 = bVar.f14667d;
                if (bitmap2 != null) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    a9.o.t(bitmap2.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream));
                    bundle4.putByteArray(t1.b.f14662x, byteArrayOutputStream.toByteArray());
                }
                return bundle4;
            case 12:
                long j10 = ((i3.a) obj).f8485b;
                if (j10 == -9223372036854775807L) {
                    j10 = 0;
                }
                return Long.valueOf(j10);
            case 19:
                r1.q qVar = (r1.q) obj;
                return qVar.f13549a + ": " + qVar.f13550b;
            default:
                return Integer.valueOf(((t1.b) obj).r);
        }
    }

    @Override // qh.a
    public boolean b(char c7) {
        return (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ' || c7 == '/' || c7 == '>') ? false : true;
    }

    @Override // ma.g
    public void c(String str, boolean z) {
        switch (this.f7289a) {
            case 1:
                if (!z) {
                    com.yunpan.appmanage.util.a0.s(str, false);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.v("安装成功", true);
                    break;
                }
            case 2:
                if (!z) {
                    com.yunpan.appmanage.util.a0.s(str, false);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.v("安装成功", true);
                    break;
                }
            case 3:
                if (!z) {
                    com.yunpan.appmanage.util.a0.s(str, false);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.v("安装成功", true);
                    break;
                }
            default:
                if (!z) {
                    com.yunpan.appmanage.util.a0.t(str);
                    break;
                } else {
                    Toaster.show((CharSequence) "安装成功");
                    break;
                }
        }
    }

    @Override // y9.a
    public String d(byte[] bArr) {
        switch (this.f7289a) {
        }
        return Base64.encodeToString(bArr, 2);
    }

    @Override // v8.c
    public void e(v8.a aVar, View view) {
        switch (this.f7289a) {
            case 5:
                new fg.b(new Cif(aVar, 0, (byte) 0), 1).start();
                break;
            case 6:
                aVar.b();
                break;
            default:
                aVar.g();
                break;
        }
    }

    @Override // te.p
    public Object f(Object obj, Object obj2) {
        switch (this.f7289a) {
            case 15:
                return new lb.a(((Integer) obj).intValue(), ((Long) obj2).longValue());
            case 27:
                CodeEditor codeEditor = (CodeEditor) obj;
                mb.b bVar = (mb.b) obj2;
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                long jO = codeEditor.f8719j.o(bVar.f11057b, bVar.f11058c);
                return codeEditor.getText().n().A((int) (jO >> 32), (int) (jO & 4294967295L));
            case 28:
                CodeEditor codeEditor2 = (CodeEditor) obj;
                mb.b bVar2 = (mb.b) obj2;
                ue.d.e(codeEditor2, "editor");
                ue.d.e(bVar2, "pos");
                mb.g text = codeEditor2.getText();
                ue.d.d(text, "getText(...)");
                mb.b bVar3 = sb.h.c(bVar2, text, true).f11102a;
                ue.d.d(bVar3, "getStart(...)");
                return codeEditor2.getText().n().A(bVar3.f11057b, bVar3.f11058c);
            default:
                CodeEditor codeEditor3 = (CodeEditor) obj;
                mb.b bVar4 = (mb.b) obj2;
                ue.d.e(codeEditor3, "editor");
                ue.d.e(bVar4, "pos");
                mb.g text2 = codeEditor3.getText();
                ue.d.d(text2, "getText(...)");
                mb.b bVar5 = sb.h.c(bVar4, text2, false).f11103b;
                ue.d.d(bVar5, "getEnd(...)");
                return codeEditor3.getText().n().A(bVar5.f11057b, bVar5.f11058c);
        }
    }

    @Override // com.hjq.permissions.OnPermissionCallback
    public void onPermissionResult(List list, List list2) {
        if (list.isEmpty()) {
            com.yunpan.appmanage.util.a0.u("请先授予【在上层显示】悬浮窗权限");
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        NameContentSelectBean nameContentSelectBean = (NameContentSelectBean) gVar.t(i10);
        if (nameContentSelectBean.isSelect) {
            return;
        }
        for (int i11 = 0; i11 < gVar.b(); i11++) {
            if (i11 != i10) {
                ((NameContentSelectBean) gVar.t(i11)).isSelect = false;
                gVar.e(i11);
            }
        }
        if (i10 == 2 || i10 == 3) {
            AppBean appBeanK = android.support.v4.media.session.a.k("com.tcl.MultiScreenInteraction_TV");
            if (appBeanK == null) {
                com.yunpan.appmanage.util.a0.w("您系统不存在此app，无法使用此功能");
                return;
            }
            if (!appBeanK.isSystem || appBeanK.uid != 1000) {
                com.yunpan.appmanage.util.a0.w("您的多屏互动app不是系统app");
                return;
            } else if (appBeanK.isUnInstall || appBeanK.isDisable || appBeanK.isHide) {
                com.yunpan.appmanage.util.a0.w("您是不是禁用了多屏互动？");
                return;
            }
        }
        nameContentSelectBean.isSelect = true;
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        wVar.T = i10;
        try {
            wVar.f4123i.l("Tcl_install_mode", Integer.valueOf(i10));
        } catch (Exception unused) {
        }
        wVar.m();
        gVar.e(i10);
    }
}
