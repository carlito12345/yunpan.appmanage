package i0;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: j, reason: collision with root package name */
    public static final SparseIntArray f8359j;

    /* renamed from: a, reason: collision with root package name */
    public int f8360a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f8361b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f8362c = -1;

    /* renamed from: d, reason: collision with root package name */
    public float f8363d = Float.NaN;

    /* renamed from: e, reason: collision with root package name */
    public float f8364e = Float.NaN;

    /* renamed from: f, reason: collision with root package name */
    public float f8365f = Float.NaN;

    /* renamed from: g, reason: collision with root package name */
    public int f8366g = -1;

    /* renamed from: h, reason: collision with root package name */
    public String f8367h = null;

    /* renamed from: i, reason: collision with root package name */
    public int f8368i = -1;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f8359j = sparseIntArray;
        sparseIntArray.append(3, 1);
        sparseIntArray.append(5, 2);
        sparseIntArray.append(9, 3);
        sparseIntArray.append(2, 4);
        sparseIntArray.append(1, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(4, 7);
        sparseIntArray.append(8, 8);
        sparseIntArray.append(7, 9);
        sparseIntArray.append(6, 10);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f8397f);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            switch (f8359j.get(index)) {
                case 1:
                    this.f8364e = typedArrayObtainStyledAttributes.getFloat(index, this.f8364e);
                    break;
                case 2:
                    this.f8362c = typedArrayObtainStyledAttributes.getInt(index, this.f8362c);
                    break;
                case 3:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        typedArrayObtainStyledAttributes.getString(index);
                        break;
                    } else {
                        String str = e0.a.f4707a[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 4:
                    typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case 5:
                    this.f8360a = n.f(typedArrayObtainStyledAttributes, index, this.f8360a);
                    break;
                case 6:
                    this.f8361b = typedArrayObtainStyledAttributes.getInteger(index, this.f8361b);
                    break;
                case 7:
                    this.f8363d = typedArrayObtainStyledAttributes.getFloat(index, this.f8363d);
                    break;
                case 8:
                    this.f8366g = typedArrayObtainStyledAttributes.getInteger(index, this.f8366g);
                    break;
                case 9:
                    this.f8365f = typedArrayObtainStyledAttributes.getFloat(index, this.f8365f);
                    break;
                case 10:
                    int i11 = typedArrayObtainStyledAttributes.peekValue(index).type;
                    if (i11 == 1) {
                        this.f8368i = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        break;
                    } else if (i11 == 3) {
                        String string = typedArrayObtainStyledAttributes.getString(index);
                        this.f8367h = string;
                        if (string.indexOf("/") > 0) {
                            this.f8368i = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        typedArrayObtainStyledAttributes.getInteger(index, this.f8368i);
                        break;
                    }
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
