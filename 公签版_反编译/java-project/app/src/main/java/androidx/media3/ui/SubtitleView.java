package androidx.media3.ui;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import t1.a;
import t1.b;
import t1.f;
import v3.c;
import v3.d;
import v3.k0;
import v3.q0;

/* loaded from: classes.dex */
public final class SubtitleView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public List f2003a;

    /* renamed from: b, reason: collision with root package name */
    public d f2004b;

    /* renamed from: c, reason: collision with root package name */
    public float f2005c;

    /* renamed from: d, reason: collision with root package name */
    public float f2006d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2007e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2008f;

    /* renamed from: g, reason: collision with root package name */
    public int f2009g;

    /* renamed from: h, reason: collision with root package name */
    public k0 f2010h;

    /* renamed from: i, reason: collision with root package name */
    public View f2011i;

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2003a = Collections.emptyList();
        this.f2004b = d.f16422g;
        this.f2005c = 0.0533f;
        this.f2006d = 0.08f;
        this.f2007e = true;
        this.f2008f = true;
        c cVar = new c(context);
        this.f2010h = cVar;
        this.f2011i = cVar;
        addView(cVar);
        this.f2009g = 1;
    }

    private List<b> getCuesWithStylingPreferencesApplied() {
        if (this.f2007e && this.f2008f) {
            return this.f2003a;
        }
        ArrayList arrayList = new ArrayList(this.f2003a.size());
        for (int i10 = 0; i10 < this.f2003a.size(); i10++) {
            b bVar = (b) this.f2003a.get(i10);
            bVar.getClass();
            a aVar = new a(bVar);
            if (!this.f2007e) {
                aVar.f14653n = false;
                CharSequence charSequence = aVar.f14641a;
                if (charSequence instanceof Spanned) {
                    if (!(charSequence instanceof Spannable)) {
                        aVar.f14641a = SpannableString.valueOf(charSequence);
                        aVar.f14642b = null;
                    }
                    CharSequence charSequence2 = aVar.f14641a;
                    charSequence2.getClass();
                    Spannable spannable = (Spannable) charSequence2;
                    for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                        if (!(obj instanceof f)) {
                            spannable.removeSpan(obj);
                        }
                    }
                }
                com.bumptech.glide.d.Z(aVar);
            } else if (!this.f2008f) {
                com.bumptech.glide.d.Z(aVar);
            }
            arrayList.add(aVar.a());
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManagerD;
        if (isInEditMode() || (captioningManagerD = com.hierynomus.security.jce.a.d(getContext().getSystemService("captioning"))) == null || !captioningManagerD.isEnabled()) {
            return 1.0f;
        }
        return captioningManagerD.getFontScale();
    }

    private d getUserCaptionStyle() {
        CaptioningManager captioningManagerD;
        boolean zIsInEditMode = isInEditMode();
        d dVar = d.f16422g;
        if (zIsInEditMode || (captioningManagerD = com.hierynomus.security.jce.a.d(getContext().getSystemService("captioning"))) == null || !captioningManagerD.isEnabled()) {
            return dVar;
        }
        CaptioningManager.CaptionStyle userStyle = captioningManagerD.getUserStyle();
        return new d(userStyle.hasForegroundColor() ? userStyle.foregroundColor : -1, userStyle.hasBackgroundColor() ? userStyle.backgroundColor : -16777216, userStyle.hasWindowColor() ? userStyle.windowColor : 0, userStyle.hasEdgeType() ? userStyle.edgeType : 0, userStyle.hasEdgeColor() ? userStyle.edgeColor : -1, userStyle.getTypeface());
    }

    private <T extends View & k0> void setView(T t10) {
        removeView(this.f2011i);
        View view = this.f2011i;
        if (view instanceof q0) {
            ((q0) view).f16536b.destroy();
        }
        this.f2011i = t10;
        this.f2010h = t10;
        addView(t10);
    }

    public final void a() {
        setStyle(getUserCaptionStyle());
    }

    public final void b() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public final void c() {
        this.f2010h.a(getCuesWithStylingPreferencesApplied(), this.f2004b, this.f2005c, this.f2006d);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        this.f2008f = z;
        c();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        this.f2007e = z;
        c();
    }

    public void setBottomPaddingFraction(float f10) {
        this.f2006d = f10;
        c();
    }

    public void setCues(List<b> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f2003a = list;
        c();
    }

    public void setFractionalTextSize(float f10) {
        this.f2005c = f10;
        c();
    }

    public void setStyle(d dVar) {
        this.f2004b = dVar;
        c();
    }

    public void setViewType(int i10) {
        if (this.f2009g == i10) {
            return;
        }
        if (i10 == 1) {
            setView(new c(getContext()));
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException();
            }
            setView(new q0(getContext()));
        }
        this.f2009g = i10;
    }
}
