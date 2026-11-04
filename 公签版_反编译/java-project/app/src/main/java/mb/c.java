package mb;

import java.text.CharacterIterator;

/* loaded from: classes.dex */
public final class c implements CharacterIterator {

    /* renamed from: a, reason: collision with root package name */
    public final h f11059a;

    /* renamed from: b, reason: collision with root package name */
    public int f11060b;

    public c(h hVar) {
        this.f11059a = hVar;
    }

    @Override // java.text.CharacterIterator
    public final Object clone() {
        c cVar = new c(this.f11059a);
        cVar.f11060b = this.f11060b;
        return cVar;
    }

    @Override // java.text.CharacterIterator
    public final char current() {
        int i10 = this.f11060b;
        h hVar = this.f11059a;
        if (i10 == hVar.f11076c) {
            return (char) 65535;
        }
        return hVar.charAt(i10);
    }

    @Override // java.text.CharacterIterator
    public final char first() {
        this.f11060b = 0;
        return current();
    }

    @Override // java.text.CharacterIterator
    public final int getBeginIndex() {
        return 0;
    }

    @Override // java.text.CharacterIterator
    public final int getEndIndex() {
        return this.f11059a.f11076c;
    }

    @Override // java.text.CharacterIterator
    public final int getIndex() {
        return this.f11060b;
    }

    @Override // java.text.CharacterIterator
    public final char last() {
        int i10 = this.f11059a.f11076c - 1;
        this.f11060b = i10;
        if (i10 < 0) {
            this.f11060b = 0;
        }
        return current();
    }

    @Override // java.text.CharacterIterator
    public final char next() {
        this.f11060b++;
        return current();
    }

    @Override // java.text.CharacterIterator
    public final char previous() {
        int i10 = this.f11060b - 1;
        this.f11060b = i10;
        if (i10 < 0) {
            this.f11060b = 0;
        }
        return current();
    }

    @Override // java.text.CharacterIterator
    public final char setIndex(int i10) {
        this.f11060b = i10;
        return current();
    }
}
