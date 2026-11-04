package com.android.apksig.internal.compat;

import g.b;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class OptionalIntCompat {
    private static final OptionalIntCompat EMPTY = new OptionalIntCompat();
    private final boolean isPresent;
    private final int value;

    private OptionalIntCompat() {
        this.isPresent = false;
        this.value = 0;
    }

    public static OptionalIntCompat empty() {
        return EMPTY;
    }

    public static OptionalIntCompat of(int i10) {
        return new OptionalIntCompat(i10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OptionalIntCompat)) {
            return false;
        }
        OptionalIntCompat optionalIntCompat = (OptionalIntCompat) obj;
        boolean z = this.isPresent;
        if (z && optionalIntCompat.isPresent) {
            if (this.value == optionalIntCompat.value) {
                return true;
            }
        } else if (z == optionalIntCompat.isPresent) {
            return true;
        }
        return false;
    }

    public int getAsInt() {
        if (this.isPresent) {
            return this.value;
        }
        throw new NoSuchElementException("No value present");
    }

    public int hashCode() {
        if (this.isPresent) {
            return this.value;
        }
        return 0;
    }

    public void ifPresent(IntConsumerCompat intConsumerCompat) {
        if (this.isPresent) {
            intConsumerCompat.accept(this.value);
        }
    }

    public boolean isPresent() {
        return this.isPresent;
    }

    public int orElse(int i10) {
        return this.isPresent ? this.value : i10;
    }

    public int orElseGet(IntSupplierCompat intSupplierCompat) {
        return this.isPresent ? this.value : intSupplierCompat.getAsInt();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    public <X extends Throwable> int orElseThrow(SupplierCompat<X> supplierCompat) throws X {
        if (this.isPresent) {
            return this.value;
        }
        throw supplierCompat.get();
    }

    public String toString() {
        return this.isPresent ? b.i("OptionalIntCompat[", this.value, "]") : "OptionalIntCompat.empty";
    }

    private OptionalIntCompat(int i10) {
        this.isPresent = true;
        this.value = i10;
    }
}
