package x0;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import android.view.View;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class g implements f, h {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17982a;

    /* renamed from: b, reason: collision with root package name */
    public Object f17983b;

    /* renamed from: c, reason: collision with root package name */
    public int f17984c;

    /* renamed from: d, reason: collision with root package name */
    public int f17985d;

    /* renamed from: e, reason: collision with root package name */
    public Object f17986e;

    /* renamed from: f, reason: collision with root package name */
    public Cloneable f17987f;

    /* JADX WARN: Type inference failed for: r0v2, types: [int[], java.lang.Cloneable] */
    public g(View view) {
        this.f17982a = 2;
        this.f17987f = new int[2];
        this.f17986e = view;
    }

    @Override // x0.f
    public void a(Bundle bundle) {
        this.f17987f = bundle;
    }

    @Override // x0.h
    public ClipData b() {
        return (ClipData) this.f17983b;
    }

    @Override // x0.f
    public i build() {
        return new i(new g(this));
    }

    @Override // x0.f
    public void c(Uri uri) {
        this.f17986e = uri;
    }

    @Override // x0.f
    public void d(int i10) {
        this.f17985d = i10;
    }

    public void e(j2 j2Var, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if ((((v1) it.next()).f18060a.c() & 8) != 0) {
                ((View) this.f17986e).setTranslationY(r6.a.c(this.f17985d, r3.f18060a.b(), 0));
                return;
            }
        }
    }

    @Override // x0.h
    public int getSource() {
        return this.f17984c;
    }

    @Override // x0.h
    public int h() {
        return this.f17985d;
    }

    @Override // x0.h
    public ContentInfo i() {
        return null;
    }

    public String toString() {
        String str;
        switch (this.f17982a) {
            case 1:
                StringBuilder sb2 = new StringBuilder("ContentInfoCompat{clip=");
                sb2.append(((ClipData) this.f17983b).getDescription());
                sb2.append(", source=");
                int i10 = this.f17984c;
                sb2.append(i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? String.valueOf(i10) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
                sb2.append(", flags=");
                int i11 = this.f17985d;
                sb2.append((i11 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i11));
                Uri uri = (Uri) this.f17986e;
                if (uri == null) {
                    str = "";
                } else {
                    str = ", hasLinkUri(" + uri.toString().length() + ")";
                }
                sb2.append(str);
                return g.b.l(((Bundle) this.f17987f) != null ? ", hasExtras" : "", "}", sb2);
            default:
                return super.toString();
        }
    }

    public g(g gVar) {
        this.f17982a = 1;
        ClipData clipData = (ClipData) gVar.f17983b;
        clipData.getClass();
        this.f17983b = clipData;
        int i10 = gVar.f17984c;
        if (i10 < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too low)");
        }
        if (i10 <= 5) {
            this.f17984c = i10;
            int i11 = gVar.f17985d;
            if ((i11 & 1) == i11) {
                this.f17985d = i11;
                this.f17986e = (Uri) gVar.f17986e;
                this.f17987f = (Bundle) gVar.f17987f;
                return;
            } else {
                throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i11) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
            }
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException("source is out of range of [0, 5] (too high)");
    }

    public g(ClipData clipData, int i10) {
        this.f17982a = 0;
        this.f17983b = clipData;
        this.f17984c = i10;
    }
}
