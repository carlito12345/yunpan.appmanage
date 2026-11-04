package t7;

import androidx.room.s;
import java.util.Iterator;
import java.util.NoSuchElementException;
import l5.y;

/* loaded from: classes.dex */
public final class l implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public String f14834b;

    /* renamed from: c, reason: collision with root package name */
    public final CharSequence f14835c;

    /* renamed from: d, reason: collision with root package name */
    public final c f14836d;

    /* renamed from: f, reason: collision with root package name */
    public int f14838f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f14839g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ m f14840h;

    /* renamed from: a, reason: collision with root package name */
    public int f14833a = 2;

    /* renamed from: e, reason: collision with root package name */
    public int f14837e = 0;

    public l(m mVar, s sVar, CharSequence charSequence, int i10) {
        this.f14839g = i10;
        this.f14840h = mVar;
        this.f14836d = (c) sVar.f2427c;
        this.f14838f = sVar.f2426b;
        this.f14835c = charSequence;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
    
        r1 = r1 + 1;
     */
    @Override // java.util.Iterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean hasNext() {
        String string;
        int length;
        a9.o.t(this.f14833a != 4);
        int iC = d0.f.c(this.f14833a);
        if (iC == 0) {
            return true;
        }
        if (iC == 2) {
            return false;
        }
        this.f14833a = 4;
        int i10 = this.f14837e;
        while (true) {
            int length2 = this.f14837e;
            if (length2 != -1) {
                switch (this.f14839g) {
                    case 0:
                        b bVar = (b) ((y) this.f14840h).f10629b;
                        CharSequence charSequence = this.f14835c;
                        int length3 = charSequence.length();
                        a9.o.p(length2, length3);
                        while (length2 < length3) {
                            if (bVar.a(charSequence.charAt(length2))) {
                                break;
                            } else {
                                length2++;
                            }
                        }
                        length2 = -1;
                        break;
                    default:
                        bd.c cVar = (bd.c) this.f14840h;
                        int length4 = cVar.f2779b.length();
                        CharSequence charSequence2 = this.f14835c;
                        int length5 = charSequence2.length() - length4;
                        while (length2 <= length5) {
                            for (int i11 = 0; i11 < length4; i11++) {
                                if (charSequence2.charAt(i11 + length2) != cVar.f2779b.charAt(i11)) {
                                    break;
                                }
                            }
                            break;
                        }
                        length2 = -1;
                        break;
                }
                CharSequence charSequence3 = this.f14835c;
                if (length2 == -1) {
                    length2 = charSequence3.length();
                    this.f14837e = -1;
                } else {
                    switch (this.f14839g) {
                        case 0:
                            length = length2 + 1;
                            break;
                        default:
                            length = ((bd.c) this.f14840h).f2779b.length() + length2;
                            break;
                    }
                    this.f14837e = length;
                }
                int i12 = this.f14837e;
                if (i12 == i10) {
                    int i13 = i12 + 1;
                    this.f14837e = i13;
                    if (i13 > charSequence3.length()) {
                        this.f14837e = -1;
                    }
                } else {
                    c cVar2 = this.f14836d;
                    if (i10 < length2) {
                        charSequence3.charAt(i10);
                        cVar2.getClass();
                    }
                    if (length2 > i10) {
                        charSequence3.charAt(length2 - 1);
                        cVar2.getClass();
                    }
                    int i14 = this.f14838f;
                    if (i14 == 1) {
                        length2 = charSequence3.length();
                        this.f14837e = -1;
                        if (length2 > i10) {
                            charSequence3.charAt(length2 - 1);
                            cVar2.getClass();
                        }
                    } else {
                        this.f14838f = i14 - 1;
                    }
                    string = charSequence3.subSequence(i10, length2).toString();
                }
            } else {
                this.f14833a = 3;
                string = null;
            }
        }
        this.f14834b = string;
        if (this.f14833a == 3) {
            return false;
        }
        this.f14833a = 1;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f14833a = 2;
        String str = this.f14834b;
        this.f14834b = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
