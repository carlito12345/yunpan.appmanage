package i0;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final float f8298a;

    /* renamed from: b, reason: collision with root package name */
    public final float f8299b;

    /* renamed from: c, reason: collision with root package name */
    public final float f8300c;

    /* renamed from: d, reason: collision with root package name */
    public final float f8301d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8302e;

    public g(Context context, XmlResourceParser xmlResourceParser) throws Resources.NotFoundException {
        this.f8298a = Float.NaN;
        this.f8299b = Float.NaN;
        this.f8300c = Float.NaN;
        this.f8301d = Float.NaN;
        this.f8302e = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), q.f8401j);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == 0) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f8302e);
                this.f8302e = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new n().b((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            } else if (index == 1) {
                this.f8301d = typedArrayObtainStyledAttributes.getDimension(index, this.f8301d);
            } else if (index == 2) {
                this.f8299b = typedArrayObtainStyledAttributes.getDimension(index, this.f8299b);
            } else if (index == 3) {
                this.f8300c = typedArrayObtainStyledAttributes.getDimension(index, this.f8300c);
            } else if (index == 4) {
                this.f8298a = typedArrayObtainStyledAttributes.getDimension(index, this.f8298a);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
