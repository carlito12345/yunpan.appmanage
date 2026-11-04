package ha;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.view.View;
import com.google.android.material.tabs.TabLayout;
import com.hjq.permissions.OnPermissionCallback;
import com.hjq.toast.Toaster;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;

/* loaded from: classes.dex */
public class l2 implements wd, ma.k, OnPermissionCallback, i3.h, i5.c, j5.a, lg.b, l2.g, l2.q, vc.g, o5.o, o5.d0, p0.m, ec.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7347a;

    public /* synthetic */ l2(int i10) {
        this.f7347a = i10;
    }

    public static RectF G(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (tabLayout.F || !(view instanceof p7.k)) {
            return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        p7.k kVar = (p7.k) view;
        int contentWidth = kVar.getContentWidth();
        int contentHeight = kVar.getContentHeight();
        int iD = (int) g7.l.d(kVar.getContext(), 24);
        if (contentWidth < iD) {
            contentWidth = iD;
        }
        int right = (kVar.getRight() + kVar.getLeft()) / 2;
        int bottom = (kVar.getBottom() + kVar.getTop()) / 2;
        int i10 = contentWidth / 2;
        return new RectF(right - i10, bottom - (contentHeight / 2), i10 + right, (right / 2) + bottom);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004b, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0088, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0072 A[EDGE_INSN: B:90:0x0072->B:47:0x0072 BREAK  A[LOOP:2: B:48:0x0074->B:59:0x008b, LOOP_LABEL: LOOP:2: B:48:0x0074->B:59:0x008b], EDGE_INSN: B:93:0x0072->B:47:0x0072 BREAK  A[LOOP:2: B:48:0x0074->B:59:0x008b]] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00a8 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean I(i1.c cVar, Editable editable, int i10, int i11, boolean z) {
        int iMin;
        if (Build.VERSION.SDK_INT < 19 || editable == null || i10 < 0 || i11 < 0) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart == -1 || selectionEnd == -1 || selectionStart != selectionEnd) {
            return false;
        }
        if (z) {
            int iMax = Math.max(i10, 0);
            int length = editable.length();
            if (selectionStart < 0 || length < selectionStart || iMax < 0) {
                selectionStart = -1;
                int iMax2 = Math.max(i11, 0);
                iMin = editable.length();
                if (selectionEnd < 0 && iMin >= selectionEnd && iMax2 >= 0) {
                    loop2: while (true) {
                        boolean z4 = false;
                        while (true) {
                            if (iMax2 == 0) {
                                iMin = selectionEnd;
                                break loop2;
                            }
                            if (selectionEnd >= iMin) {
                                if (z4) {
                                    break loop2;
                                }
                            } else {
                                char cCharAt = editable.charAt(selectionEnd);
                                if (z4) {
                                    break;
                                }
                                if (!Character.isSurrogate(cCharAt)) {
                                    iMax2--;
                                    selectionEnd++;
                                } else {
                                    if (Character.isLowSurrogate(cCharAt)) {
                                        break loop2;
                                    }
                                    selectionEnd++;
                                    z4 = true;
                                }
                            }
                        }
                        iMax2--;
                        selectionEnd++;
                    }
                    iMin = -1;
                    return selectionStart == -1 ? false : false;
                }
                iMin = -1;
                if (selectionStart == -1 || iMin == -1) {
                }
            } else {
                loop0: while (true) {
                    boolean z10 = false;
                    while (true) {
                        if (iMax == 0) {
                            break loop0;
                        }
                        selectionStart--;
                        if (selectionStart >= 0) {
                            char cCharAt2 = editable.charAt(selectionStart);
                            if (z10) {
                                break;
                            }
                            if (!Character.isSurrogate(cCharAt2)) {
                                iMax--;
                            } else {
                                if (Character.isHighSurrogate(cCharAt2)) {
                                    break loop0;
                                }
                                z10 = true;
                            }
                        } else {
                            if (z10) {
                                break;
                            }
                            selectionStart = 0;
                        }
                    }
                    iMax--;
                }
                selectionStart = -1;
                int iMax22 = Math.max(i11, 0);
                iMin = editable.length();
                if (selectionEnd < 0) {
                    iMin = -1;
                    if (selectionStart == -1) {
                    }
                }
            }
        } else {
            selectionStart = Math.max(selectionStart - i10, 0);
            iMin = Math.min(selectionEnd + i11, editable.length());
        }
        androidx.emoji2.text.w[] wVarArr = (androidx.emoji2.text.w[]) editable.getSpans(selectionStart, iMin, androidx.emoji2.text.w.class);
        if (wVarArr == null || wVarArr.length <= 0) {
            return false;
        }
        for (androidx.emoji2.text.w wVar : wVarArr) {
            int spanStart = editable.getSpanStart(wVar);
            int spanEnd = editable.getSpanEnd(wVar);
            selectionStart = Math.min(spanStart, selectionStart);
            iMin = Math.max(spanEnd, iMin);
        }
        int iMax3 = Math.max(selectionStart, 0);
        int iMin2 = Math.min(iMin, editable.length());
        cVar.beginBatchEdit();
        editable.delete(iMax3, iMin2);
        cVar.endBatchEdit();
        return true;
    }

    @Override // o5.d0
    public void C(MediaMetadataRetriever mediaMetadataRetriever, Object obj) throws IllegalArgumentException {
        switch (this.f7347a) {
            case 24:
                mediaMetadataRetriever.setDataSource(new o5.c0((ByteBuffer) obj));
                break;
            default:
                mediaMetadataRetriever.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
                break;
        }
    }

    @Override // ha.wd
    public void D() {
        switch (this.f7347a) {
            case 0:
                fa.b0.f5652a.getClass();
                a2.w0.d0();
                break;
        }
    }

    public void X(TabLayout tabLayout, View view, View view2, float f10, Drawable drawable) {
        RectF rectFG = G(tabLayout, view);
        RectF rectFG2 = G(tabLayout, view2);
        drawable.setBounds(r6.a.c((int) rectFG.left, f10, (int) rectFG2.left), drawable.getBounds().top, r6.a.c((int) rectFG.right, f10, (int) rectFG2.right), drawable.getBounds().bottom);
    }

    @Override // i5.c
    public void c(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // lg.b
    public String decode(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length);
        for (byte b10 : bArr) {
            if (b10 == 0) {
                break;
            }
            sb2.append((char) (b10 & 255));
        }
        return sb2.toString();
    }

    @Override // ma.k
    public void e(int i10, String str) {
        switch (this.f7347a) {
            case 2:
                break;
            default:
                if (str.equals("下载中")) {
                    Toaster.show((CharSequence) ("传输中：" + i10 + "%"));
                } else {
                    Toaster.show((CharSequence) str);
                }
                System.out.getClass();
                break;
        }
    }

    @Override // i5.c
    public Bitmap f(int i10, int i11, Bitmap.Config config) {
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // i5.c
    public Bitmap h(int i10, int i11, Bitmap.Config config) {
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // vc.g
    public int i(int i10, int i11, byte[] bArr) throws ad.g {
        switch (this.f7347a) {
            case 20:
                rd.a.b(i10, bArr);
                rd.a.b(i10 + 4, bArr);
                rd.a.b(i10 + 8, bArr);
                return (i10 + 12) - i10;
            default:
                if (i11 < 24) {
                    throw new ad.g("Invalid resume key");
                }
                System.arraycopy(bArr, i10, new byte[24], 0, 24);
                rd.a.b(i10 + 24, bArr);
                return (i10 + 28) - i10;
        }
    }

    @Override // ma.k
    public void j() {
        switch (this.f7347a) {
            case 2:
                break;
            default:
                Toaster.show((CharSequence) "请选择【同意】");
                break;
        }
    }

    @Override // i3.h
    public i3.j k(r1.p pVar) {
        List list;
        String str = pVar.f13523o;
        if (str != null) {
            list = pVar.r;
            switch (str) {
                case "application/dvbsubs":
                    return new k3.h(list);
                case "application/pgs":
                    return new a2.w0(9);
                case "application/x-mp4-vtt":
                    return new l2.x(1);
                case "text/vtt":
                    return new kf.d(13);
                case "application/x-quicktime-tx3g":
                    return new p3.a(list);
                case "text/x-ssa":
                    return new m3.a(list);
                case "application/vobsub":
                    return new q3.b(list);
                case "application/x-subrip":
                    return new n3.a();
                case "application/ttml+xml":
                    return new o3.d();
            }
        }
        throw new IllegalArgumentException(da.b.c("Unsupported MIME type: ", str));
    }

    @Override // i3.h
    public boolean m(r1.p pVar) {
        String str = pVar.f13523o;
        return Objects.equals(str, "text/x-ssa") || Objects.equals(str, "text/vtt") || Objects.equals(str, "application/x-mp4-vtt") || Objects.equals(str, "application/x-subrip") || Objects.equals(str, "application/x-quicktime-tx3g") || Objects.equals(str, "application/pgs") || Objects.equals(str, "application/vobsub") || Objects.equals(str, "application/dvbsubs") || Objects.equals(str, "application/ttml+xml");
    }

    @Override // o5.d0
    public void o(MediaExtractor mediaExtractor, Object obj) throws IOException {
        switch (this.f7347a) {
            case 24:
                mediaExtractor.setDataSource(new o5.c0((ByteBuffer) obj));
                break;
            default:
                mediaExtractor.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
                break;
        }
    }

    @Override // com.hjq.permissions.OnPermissionCallback
    public void onPermissionResult(List list, List list2) {
        if (list.isEmpty()) {
            com.yunpan.appmanage.util.a0.u("请先授予【电话权限】");
        }
    }

    @Override // ma.k
    public void r() {
        switch (this.f7347a) {
            case 2:
                break;
            default:
                Toaster.show((CharSequence) "系统正在安装其它应用");
                break;
        }
    }

    @Override // ha.wd
    public void t() {
        int i10 = this.f7347a;
    }

    public String toString() {
        switch (this.f7347a) {
            case 13:
                return "EmptyAction";
            default:
                return super.toString();
        }
    }

    @Override // p0.m
    public int u(Object obj) {
        return ((u0.g) obj).f15177c;
    }

    @Override // p0.m
    public boolean v(Object obj) {
        return ((u0.g) obj).f15178d;
    }

    @Override // i3.h
    public int x(r1.p pVar) {
        String str = pVar.f13523o;
        if (str != null) {
            switch (str) {
                case "application/dvbsubs":
                case "application/pgs":
                case "application/x-mp4-vtt":
                    return 2;
                case "text/vtt":
                    return 1;
                case "application/x-quicktime-tx3g":
                    return 2;
                case "text/x-ssa":
                    return 1;
                case "application/vobsub":
                    return 2;
                case "application/x-subrip":
                case "application/ttml+xml":
                    return 1;
            }
        }
        throw new IllegalArgumentException(da.b.c("Unsupported MIME type: ", str));
    }

    @Override // j5.a
    public File y(f5.f fVar) {
        return null;
    }

    @Override // l2.q
    public l2.j0 z(int i10, int i11) {
        return new l2.n();
    }

    private final void J() {
    }

    private final void K() {
    }

    private final void L() {
    }

    private final void M() {
    }

    private final void N() {
    }

    private final void O() {
    }

    private final void P() {
    }

    private final void R() {
    }

    private final void S() {
    }

    private final void T() {
    }

    private final void U() {
    }

    @Override // i5.c
    public void F() {
    }

    public void onComplete() {
    }

    @Override // o5.o
    public void p() {
    }

    @Override // l2.q
    public void q() {
    }

    @Override // i5.c
    public void A(int i10) {
    }

    public void B(Throwable th2) {
    }

    public void E(Object obj) {
    }

    public InputFilter[] H(InputFilter[] inputFilterArr) {
        return inputFilterArr;
    }

    public void V(boolean z) {
    }

    public void W(boolean z) {
    }

    public void b(gc.b bVar) {
    }

    @Override // l2.g
    public long d(long j10) {
        return j10;
    }

    @Override // i5.c
    public void g(float f10) {
    }

    @Override // l2.q
    public void s(l2.c0 c0Var) {
    }

    private final void Q(int i10, String str) {
    }

    @Override // o5.o
    public void l(Bitmap bitmap, i5.c cVar) {
    }

    @Override // j5.a
    public void n(f5.f fVar, v3.f fVar2) {
    }
}
