package ub;

import android.widget.PopupWindow;
import db.m;
import db.w;
import io.github.rosemoe.sora.widget.CodeEditor;
import j$.util.Objects;
import mb.j;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public final PopupWindow f16091a;

    /* renamed from: b, reason: collision with root package name */
    public final CodeEditor f16092b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16093c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f16094d = new int[2];

    /* renamed from: e, reason: collision with root package name */
    public final boolean f16095e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f16096f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f16097g;

    /* renamed from: h, reason: collision with root package name */
    public final CodeEditor f16098h;

    /* renamed from: i, reason: collision with root package name */
    public int f16099i;

    /* renamed from: j, reason: collision with root package name */
    public int f16100j;

    /* renamed from: k, reason: collision with root package name */
    public int f16101k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f16102m;

    /* renamed from: n, reason: collision with root package name */
    public int f16103n;

    public b(CodeEditor codeEditor, int i10) {
        Objects.requireNonNull(codeEditor);
        this.f16092b = codeEditor;
        this.f16093c = i10;
        this.f16098h = codeEditor;
        PopupWindow popupWindow = new PopupWindow();
        this.f16091a = popupWindow;
        popupWindow.setElevation(codeEditor.getDpUnit() * 8.0f);
        a aVar = new a(0, this);
        m mVar = new m(5, this);
        if (!this.f16096f) {
            codeEditor.l0(w.class, mVar);
            this.f16096f = true;
        }
        if (c(8) && !this.f16097g) {
            codeEditor.addOnLayoutChangeListener(aVar);
            this.f16097g = true;
        }
        this.f16095e = true;
    }

    public final void a(boolean z) {
        int i10;
        int offsetY;
        PopupWindow popupWindow = this.f16091a;
        if (z || popupWindow.isShowing()) {
            boolean zC = c(1);
            CodeEditor codeEditor = this.f16092b;
            int offsetX = this.f16101k - (zC ? codeEditor.getOffsetX() : this.f16099i);
            if (zC) {
                i10 = this.l;
                offsetY = codeEditor.getOffsetY();
            } else {
                i10 = this.l;
                offsetY = this.f16100j;
            }
            int iMax = i10 - offsetY;
            int iMax2 = this.f16102m + offsetX;
            int iMax3 = this.f16103n + iMax;
            if (!c(2)) {
                offsetX = Math.max(0, Math.min(offsetX, codeEditor.getWidth()));
                iMax2 = Math.max(0, Math.min(iMax2, codeEditor.getWidth()));
                iMax = Math.max(0, Math.min(iMax, codeEditor.getHeight()));
                iMax3 = Math.max(0, Math.min(iMax3, codeEditor.getHeight()));
                if (iMax >= iMax3 || offsetX >= iMax2) {
                    b();
                    return;
                }
            }
            if (c(8)) {
                try {
                    j cursor = codeEditor.getCursor();
                    if (cursor != null) {
                        mb.b bVar = cursor.f11081c;
                        int i11 = bVar.f11057b;
                        int i12 = bVar.f11058c;
                        float fS = (codeEditor.S() + codeEditor.f8719j.s(i11, i12)[1]) - codeEditor.getOffsetX();
                        float offsetY2 = codeEditor.f8719j.s(i11, i12)[0] - codeEditor.getOffsetY();
                        if (!Float.isNaN(fS) && !Float.isNaN(offsetY2)) {
                            float fMax = Math.max(1.0f, codeEditor.getInsertSelectionWidth()) + fS;
                            float rowHeight = codeEditor.getRowHeight() + offsetY2;
                            if (fS < iMax2 && fMax > offsetX && offsetY2 < iMax3 && rowHeight > iMax) {
                                b();
                                return;
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
            }
            int[] iArr = this.f16094d;
            codeEditor.getLocationInWindow(iArr);
            int i13 = iMax2 - offsetX;
            int i14 = iMax3 - iMax;
            int i15 = offsetX + iArr[0];
            int i16 = iMax + iArr[1];
            if (popupWindow.isShowing()) {
                popupWindow.update(i15, i16, i13, i14);
            } else if (z) {
                popupWindow.setHeight(i14);
                popupWindow.setWidth(i13);
                popupWindow.showAtLocation(this.f16098h, 8388659, i15, i16);
            }
        }
    }

    public void b() {
        PopupWindow popupWindow = this.f16091a;
        if (popupWindow.isShowing()) {
            popupWindow.dismiss();
        }
    }

    public final boolean c(int i10) {
        if (Integer.bitCount(i10) == 1) {
            return (i10 & this.f16093c) != 0;
        }
        throw new IllegalArgumentException("Not a valid feature integer");
    }
}
