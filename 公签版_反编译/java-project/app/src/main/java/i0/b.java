package i0;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import android.util.Xml;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f8236a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8237b;

    /* renamed from: c, reason: collision with root package name */
    public int f8238c;

    /* renamed from: d, reason: collision with root package name */
    public float f8239d;

    /* renamed from: e, reason: collision with root package name */
    public String f8240e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8241f;

    /* renamed from: g, reason: collision with root package name */
    public int f8242g;

    public b(int i10, Object obj, String str, boolean z) {
        this.f8237b = i10;
        this.f8236a = z;
        b(obj);
    }

    public static void a(Context context, XmlResourceParser xmlResourceParser, HashMap map) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), q.f8395d);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string = null;
        Object objValueOf = null;
        int i10 = 0;
        boolean z = false;
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i11);
            if (index == 0) {
                string = typedArrayObtainStyledAttributes.getString(index);
                if (string != null && string.length() > 0) {
                    string = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                }
            } else if (index == 10) {
                string = typedArrayObtainStyledAttributes.getString(index);
                z = true;
            } else if (index == 1) {
                objValueOf = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                i10 = 6;
            } else if (index == 3) {
                objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                i10 = 3;
            } else if (index == 2) {
                objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                i10 = 4;
            } else {
                if (index == 7) {
                    objValueOf = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == 4) {
                    objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == 5) {
                    objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                    i10 = 2;
                } else if (index == 6) {
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                    i10 = 1;
                } else if (index == 9) {
                    objValueOf = typedArrayObtainStyledAttributes.getString(index);
                    i10 = 5;
                } else if (index == 8) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    if (resourceId == -1) {
                        resourceId = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    objValueOf = Integer.valueOf(resourceId);
                    i10 = 8;
                }
                i10 = 7;
            }
        }
        if (string != null && objValueOf != null) {
            map.put(string, new b(i10, objValueOf, string, z));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void b(Object obj) {
        switch (d0.f.c(this.f8237b)) {
            case 0:
            case 7:
                this.f8238c = ((Integer) obj).intValue();
                break;
            case 1:
                this.f8239d = ((Float) obj).floatValue();
                break;
            case 2:
            case 3:
                this.f8242g = ((Integer) obj).intValue();
                break;
            case 4:
                this.f8240e = (String) obj;
                break;
            case 5:
                this.f8241f = ((Boolean) obj).booleanValue();
                break;
            case 6:
                this.f8239d = ((Float) obj).floatValue();
                break;
        }
    }

    public b(b bVar, Object obj) {
        this.f8236a = false;
        bVar.getClass();
        this.f8237b = bVar.f8237b;
        b(obj);
    }
}
