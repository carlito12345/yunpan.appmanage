package o0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import com.yunpan.appmanage.R;
import java.lang.reflect.Array;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f11455a = new ThreadLocal();

    public static ColorStateList a(Resources resources, XmlResourceParser xmlResourceParser, Resources.Theme theme) {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(resources, xmlResourceParser, attributeSetAsAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r2v40, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v5, types: [android.content.res.TypedArray] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ColorStateList b(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth;
        int color;
        int i10;
        int iE;
        float f10;
        float fCbrt;
        float f11;
        TypedValue typedValue;
        ?? r02 = resources;
        AttributeSet attributeSet2 = attributeSet;
        Resources.Theme theme2 = theme;
        String name = xmlResourceParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        ?? r4 = 1;
        int depth2 = xmlResourceParser.getDepth() + 1;
        int[][] iArr = new int[20][];
        int[] iArr2 = new int[20];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == r4 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlResourceParser.getName().equals("item")) {
                int[] iArr3 = l0.a.f10372a;
                ?? ObtainAttributes = theme2 == null ? r02.obtainAttributes(attributeSet2, iArr3) : theme2.obtainStyledAttributes(attributeSet2, iArr3, i11, i11);
                int resourceId = ObtainAttributes.getResourceId(i11, -1);
                if (resourceId != -1) {
                    ThreadLocal threadLocal = f11455a;
                    TypedValue typedValue2 = (TypedValue) threadLocal.get();
                    if (typedValue2 == null) {
                        typedValue = new TypedValue();
                        threadLocal.set(typedValue);
                    } else {
                        typedValue = typedValue2;
                    }
                    r02.getValue(resourceId, typedValue, r4);
                    int i13 = typedValue.type;
                    if (i13 < 28 || i13 > 31) {
                        try {
                            color = a(r02, r02.getXml(resourceId), theme2).getDefaultColor();
                        } catch (Exception unused) {
                            color = ObtainAttributes.getColor(i11, -65281);
                        }
                    } else {
                        color = ObtainAttributes.getColor(i11, -65281);
                    }
                    float f12 = ObtainAttributes.hasValue(r4) ? ObtainAttributes.getFloat(r4, 1.0f) : ObtainAttributes.hasValue(3) ? ObtainAttributes.getFloat(3, 1.0f) : 1.0f;
                    float f13 = (Build.VERSION.SDK_INT < 31 || !ObtainAttributes.hasValue(2)) ? ObtainAttributes.getFloat(4, -1.0f) : ObtainAttributes.getFloat(2, -1.0f);
                    ObtainAttributes.recycle();
                    int attributeCount = attributeSet.getAttributeCount();
                    int[] iArr4 = new int[attributeCount];
                    int i14 = 0;
                    for (int i15 = 0; i15 < attributeCount; i15++) {
                        int attributeNameResource = attributeSet2.getAttributeNameResource(i15);
                        if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                            int i16 = i14 + 1;
                            if (!attributeSet2.getAttributeBooleanValue(i15, false)) {
                                attributeNameResource = -attributeNameResource;
                            }
                            iArr4[i14] = attributeNameResource;
                            i14 = i16;
                        }
                    }
                    int[] iArrTrimStateSet = StateSet.trimStateSet(iArr4, i14);
                    boolean z = f13 >= 0.0f && f13 <= 100.0f;
                    if (f12 != 1.0f || z) {
                        int iU = a9.o.u((int) ((Color.alpha(color) * f12) + 0.5f), 0, 255);
                        if (z) {
                            a aVarA = a.a(color);
                            p pVar = p.f11475k;
                            float f14 = aVarA.f11443b;
                            if (f14 < 1.0d || Math.round(f13) <= 0.0d || Math.round(f13) >= 100.0d) {
                                i10 = depth2;
                                iE = b.e(f13);
                            } else {
                                float f15 = aVarA.f11442a;
                                float fMin = f15 < 0.0f ? 0.0f : Math.min(360.0f, f15);
                                float f16 = f14;
                                a aVar = null;
                                boolean z4 = true;
                                float f17 = 0.0f;
                                while (true) {
                                    if (Math.abs(f17 - f14) >= 0.4f) {
                                        float f18 = 1000.0f;
                                        float f19 = 1000.0f;
                                        float f20 = 0.0f;
                                        float f21 = 100.0f;
                                        a aVar2 = null;
                                        while (true) {
                                            if (Math.abs(f20 - f21) <= 0.01f) {
                                                i10 = depth2;
                                                f10 = fMin;
                                                break;
                                            }
                                            float f22 = ((f21 - f20) / 2.0f) + f20;
                                            int iC = a.b(f22, f16, fMin).c(p.f11475k);
                                            float f23 = b.f(Color.red(iC));
                                            float f24 = b.f(Color.green(iC));
                                            float f25 = b.f(Color.blue(iC));
                                            float[] fArr = b.f11451d[1];
                                            float f26 = ((f25 * fArr[2]) + ((f24 * fArr[1]) + (f23 * fArr[0]))) / 100.0f;
                                            if (f26 <= 0.008856452f) {
                                                fCbrt = f26 * 903.2963f;
                                                i10 = depth2;
                                            } else {
                                                i10 = depth2;
                                                fCbrt = (((float) Math.cbrt(f26)) * 116.0f) - 16.0f;
                                            }
                                            float fAbs = Math.abs(f13 - fCbrt);
                                            if (fAbs < 0.2f) {
                                                a aVarA2 = a.a(iC);
                                                a aVarB = a.b(aVarA2.f11444c, aVarA2.f11443b, fMin);
                                                f11 = f22;
                                                float f27 = aVarA2.f11445d - aVarB.f11445d;
                                                f10 = fMin;
                                                float f28 = aVarA2.f11446e - aVarB.f11446e;
                                                float f29 = aVarA2.f11447f - aVarB.f11447f;
                                                float fPow = (float) (Math.pow(Math.sqrt((f29 * f29) + (f28 * f28) + (f27 * f27)), 0.63d) * 1.41d);
                                                if (fPow <= 1.0f) {
                                                    aVar2 = aVarA2;
                                                    f19 = fPow;
                                                    f18 = fAbs;
                                                }
                                            } else {
                                                f11 = f22;
                                                f10 = fMin;
                                            }
                                            if (f18 == 0.0f && f19 == 0.0f) {
                                                break;
                                            }
                                            if (fCbrt < f13) {
                                                f20 = f11;
                                            } else {
                                                f21 = f11;
                                            }
                                            depth2 = i10;
                                            fMin = f10;
                                        }
                                        a aVar3 = aVar2;
                                        if (!z4) {
                                            if (aVar3 == null) {
                                                f14 = f16;
                                            } else {
                                                aVar = aVar3;
                                                f17 = f16;
                                            }
                                            f16 = ((f14 - f17) / 2.0f) + f17;
                                            depth2 = i10;
                                            fMin = f10;
                                        } else {
                                            if (aVar3 != null) {
                                                iE = aVar3.c(pVar);
                                                break;
                                            }
                                            f16 = ((f14 - f17) / 2.0f) + f17;
                                            depth2 = i10;
                                            fMin = f10;
                                            z4 = false;
                                        }
                                    } else {
                                        i10 = depth2;
                                        iE = aVar == null ? b.e(f13) : aVar.c(pVar);
                                    }
                                }
                            }
                            color = iE;
                        } else {
                            i10 = depth2;
                        }
                        color = (16777215 & color) | (iU << 24);
                    } else {
                        i10 = depth2;
                    }
                    int i17 = i12 + 1;
                    if (i17 > iArr2.length) {
                        int[] iArr5 = new int[i12 <= 4 ? 8 : i12 * 2];
                        System.arraycopy(iArr2, 0, iArr5, 0, i12);
                        iArr2 = iArr5;
                    }
                    iArr2[i12] = color;
                    if (i17 > iArr.length) {
                        ?? r22 = (Object[]) Array.newInstance(iArr.getClass().getComponentType(), i12 > 4 ? i12 * 2 : 8);
                        System.arraycopy(iArr, 0, r22, 0, i12);
                        iArr = r22;
                    }
                    iArr[i12] = iArrTrimStateSet;
                    iArr = iArr;
                    r02 = resources;
                    theme2 = theme;
                    i12 = i17;
                    depth2 = i10;
                    r4 = 1;
                    i11 = 0;
                    attributeSet2 = attributeSet;
                }
            } else {
                r02 = resources;
                attributeSet2 = attributeSet;
                theme2 = theme;
                depth2 = depth2;
                r4 = 1;
                i11 = 0;
            }
        }
        int[] iArr6 = new int[i12];
        int[][] iArr7 = new int[i12][];
        System.arraycopy(iArr2, 0, iArr6, 0, i12);
        System.arraycopy(iArr, 0, iArr7, 0, i12);
        return new ColorStateList(iArr7, iArr6);
    }
}
