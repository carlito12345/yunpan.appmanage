package i0;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: n, reason: collision with root package name */
    public static final SparseIntArray f8373n;

    /* renamed from: a, reason: collision with root package name */
    public float f8374a = 0.0f;

    /* renamed from: b, reason: collision with root package name */
    public float f8375b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    public float f8376c = 0.0f;

    /* renamed from: d, reason: collision with root package name */
    public float f8377d = 1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f8378e = 1.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f8379f = Float.NaN;

    /* renamed from: g, reason: collision with root package name */
    public float f8380g = Float.NaN;

    /* renamed from: h, reason: collision with root package name */
    public int f8381h = -1;

    /* renamed from: i, reason: collision with root package name */
    public float f8382i = 0.0f;

    /* renamed from: j, reason: collision with root package name */
    public float f8383j = 0.0f;

    /* renamed from: k, reason: collision with root package name */
    public float f8384k = 0.0f;
    public boolean l = false;

    /* renamed from: m, reason: collision with root package name */
    public float f8385m = 0.0f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f8373n = sparseIntArray;
        sparseIntArray.append(6, 1);
        sparseIntArray.append(7, 2);
        sparseIntArray.append(8, 3);
        sparseIntArray.append(4, 4);
        sparseIntArray.append(5, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(1, 7);
        sparseIntArray.append(2, 8);
        sparseIntArray.append(3, 9);
        sparseIntArray.append(9, 10);
        sparseIntArray.append(10, 11);
        sparseIntArray.append(11, 12);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f8400i);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            switch (f8373n.get(index)) {
                case 1:
                    this.f8374a = typedArrayObtainStyledAttributes.getFloat(index, this.f8374a);
                    break;
                case 2:
                    this.f8375b = typedArrayObtainStyledAttributes.getFloat(index, this.f8375b);
                    break;
                case 3:
                    this.f8376c = typedArrayObtainStyledAttributes.getFloat(index, this.f8376c);
                    break;
                case 4:
                    this.f8377d = typedArrayObtainStyledAttributes.getFloat(index, this.f8377d);
                    break;
                case 5:
                    this.f8378e = typedArrayObtainStyledAttributes.getFloat(index, this.f8378e);
                    break;
                case 6:
                    this.f8379f = typedArrayObtainStyledAttributes.getDimension(index, this.f8379f);
                    break;
                case 7:
                    this.f8380g = typedArrayObtainStyledAttributes.getDimension(index, this.f8380g);
                    break;
                case 8:
                    this.f8382i = typedArrayObtainStyledAttributes.getDimension(index, this.f8382i);
                    break;
                case 9:
                    this.f8383j = typedArrayObtainStyledAttributes.getDimension(index, this.f8383j);
                    break;
                case 10:
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.f8384k = typedArrayObtainStyledAttributes.getDimension(index, this.f8384k);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.l = true;
                        this.f8385m = typedArrayObtainStyledAttributes.getDimension(index, this.f8385m);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    this.f8381h = n.f(typedArrayObtainStyledAttributes, index, this.f8381h);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
