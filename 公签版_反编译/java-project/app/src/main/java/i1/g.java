package i1;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import ha.l2;

/* loaded from: classes.dex */
public final class g extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8417b;

    /* renamed from: c, reason: collision with root package name */
    public final e f8418c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8419d;

    public g(TextView textView) {
        super(8);
        this.f8417b = textView;
        this.f8419d = true;
        this.f8418c = new e(textView);
    }

    @Override // ha.l2
    public final InputFilter[] H(InputFilter[] inputFilterArr) {
        if (!this.f8419d) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i10 = 0; i10 < inputFilterArr.length; i10++) {
                InputFilter inputFilter = inputFilterArr[i10];
                if (inputFilter instanceof e) {
                    sparseArray.put(i10, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                if (sparseArray.indexOfKey(i12) < 0) {
                    inputFilterArr2[i11] = inputFilterArr[i12];
                    i11++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i13 = 0;
        while (true) {
            e eVar = this.f8418c;
            if (i13 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = eVar;
                return inputFilterArr3;
            }
            if (inputFilterArr[i13] == eVar) {
                return inputFilterArr;
            }
            i13++;
        }
    }

    @Override // ha.l2
    public final void V(boolean z) {
        if (z) {
            Y();
        }
    }

    @Override // ha.l2
    public final void W(boolean z) {
        this.f8419d = z;
        Y();
        TextView textView = this.f8417b;
        textView.setFilters(H(textView.getFilters()));
    }

    public final void Y() {
        TextView textView = this.f8417b;
        TransformationMethod transformationMethod = textView.getTransformationMethod();
        if (this.f8419d) {
            if (!(transformationMethod instanceof k) && !(transformationMethod instanceof PasswordTransformationMethod)) {
                transformationMethod = new k(transformationMethod);
            }
        } else if (transformationMethod instanceof k) {
            transformationMethod = ((k) transformationMethod).f8425a;
        }
        textView.setTransformationMethod(transformationMethod);
    }
}
