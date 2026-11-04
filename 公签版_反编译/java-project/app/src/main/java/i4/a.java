package i4;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.CycleInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import com.hsae.autosdk.core.NoConst;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f8511a = {R.attr.name, R.attr.tint, R.attr.height, R.attr.width, R.attr.alpha, R.attr.autoMirrored, R.attr.tintMode, R.attr.viewportWidth, R.attr.viewportHeight};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f8512b = {R.attr.name, R.attr.pivotX, R.attr.pivotY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.translateX, R.attr.translateY};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f8513c = {R.attr.name, R.attr.fillColor, R.attr.pathData, R.attr.strokeColor, R.attr.strokeWidth, R.attr.trimPathStart, R.attr.trimPathEnd, R.attr.trimPathOffset, R.attr.strokeLineCap, R.attr.strokeLineJoin, R.attr.strokeMiterLimit, R.attr.strokeAlpha, R.attr.fillAlpha, R.attr.fillType};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f8514d = {R.attr.name, R.attr.pathData, R.attr.fillType};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f8515e = {R.attr.drawable};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f8516f = {R.attr.name, R.attr.animation};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f8517g = {R.attr.interpolator, R.attr.duration, R.attr.startOffset, R.attr.repeatCount, R.attr.repeatMode, R.attr.valueFrom, R.attr.valueTo, R.attr.valueType};

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f8518h = {R.attr.ordering};

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f8519i = {R.attr.valueFrom, R.attr.valueTo, R.attr.valueType, R.attr.propertyName};

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f8520j = {R.attr.value, R.attr.interpolator, R.attr.valueType, R.attr.fraction};

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f8521k = {R.attr.propertyName, R.attr.pathData, R.attr.propertyXName, R.attr.propertyYName};
    public static final int[] l = {R.attr.controlX1, R.attr.controlY1, R.attr.controlX2, R.attr.controlY2, R.attr.pathData};

    /* JADX WARN: Code restructure failed: missing block: B:200:0x039c, code lost:
    
        if (r31 == null) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x039e, code lost:
    
        if (r13 == null) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x03a0, code lost:
    
        r1 = new android.animation.Animator[r13.size()];
        r3 = r13.iterator();
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x03af, code lost:
    
        if (r3.hasNext() == false) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x03b1, code lost:
    
        r1[r14] = (android.animation.Animator) r3.next();
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x03bd, code lost:
    
        if (r32 != 0) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x03bf, code lost:
    
        r31.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x03c3, code lost:
    
        r31.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x03c6, code lost:
    
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Animator a(Context context, Resources resources, Resources.Theme theme, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i10) throws XmlPullParserException, IOException, NumberFormatException {
        PropertyValuesHolder[] propertyValuesHolderArr;
        AttributeSet attributeSet2;
        String str;
        PropertyValuesHolder propertyValuesHolderC;
        int size;
        int i11;
        int i12;
        String str2;
        Keyframe keyframeOfFloat;
        Resources resources2 = resources;
        Resources.Theme theme2 = theme;
        XmlResourceParser xmlResourceParser2 = xmlResourceParser;
        int depth = xmlResourceParser.getDepth();
        ValueAnimator valueAnimatorE = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlResourceParser.next();
            boolean z = false;
            int i13 = 3;
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                break;
            }
            int i14 = 1;
            if (next == 1) {
                break;
            }
            int i15 = 2;
            if (next == 2) {
                String name = xmlResourceParser.getName();
                if (name.equals("objectAnimator")) {
                    ObjectAnimator objectAnimator = new ObjectAnimator();
                    e(context, resources, theme, attributeSet, objectAnimator, xmlResourceParser);
                    valueAnimatorE = objectAnimator;
                } else if (name.equals("animator")) {
                    valueAnimatorE = e(context, resources, theme, attributeSet, null, xmlResourceParser);
                } else if (name.equals("set")) {
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    TypedArray typedArrayG = o0.b.g(resources2, theme2, attributeSet, f8518h);
                    a(context, resources, theme, xmlResourceParser, attributeSet, animatorSet2, !o0.b.d(xmlResourceParser2, "ordering") ? 0 : typedArrayG.getInt(0, 0));
                    typedArrayG.recycle();
                    valueAnimatorE = animatorSet2;
                } else {
                    String str3 = "propertyValuesHolder";
                    if (!name.equals("propertyValuesHolder")) {
                        throw new RuntimeException("Unknown animator name: " + xmlResourceParser.getName());
                    }
                    AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                    ArrayList arrayList2 = null;
                    while (true) {
                        int eventType = xmlResourceParser.getEventType();
                        if (eventType == i13 || eventType == i14) {
                            break;
                        }
                        if (eventType != i15) {
                            xmlResourceParser.next();
                        } else {
                            if (xmlResourceParser.getName().equals(str3)) {
                                TypedArray typedArrayG2 = o0.b.g(resources2, theme2, attributeSetAsAttributeSet, f8519i);
                                String strC = o0.b.c(typedArrayG2, xmlResourceParser2, "propertyName", i13);
                                int i16 = !o0.b.d(xmlResourceParser2, "valueType") ? 4 : typedArrayG2.getInt(i15, 4);
                                int i17 = i16;
                                ArrayList arrayList3 = null;
                                while (true) {
                                    int next2 = xmlResourceParser.next();
                                    attributeSet2 = attributeSetAsAttributeSet;
                                    if (next2 == i13 || next2 == 1) {
                                        break;
                                    }
                                    if (xmlResourceParser.getName().equals("keyframe")) {
                                        int[] iArr = f8520j;
                                        i12 = i17;
                                        str2 = str3;
                                        if (i12 == 4) {
                                            TypedArray typedArrayG3 = o0.b.g(resources2, theme2, Xml.asAttributeSet(xmlResourceParser), iArr);
                                            TypedValue typedValuePeekValue = !o0.b.d(xmlResourceParser2, "value") ? null : typedArrayG3.peekValue(0);
                                            int i18 = (typedValuePeekValue == null || !d(typedValuePeekValue.type)) ? 0 : 3;
                                            typedArrayG3.recycle();
                                            i12 = i18;
                                        }
                                        TypedArray typedArrayG4 = o0.b.g(resources2, theme2, Xml.asAttributeSet(xmlResourceParser), iArr);
                                        float f10 = o0.b.d(xmlResourceParser2, "fraction") ? typedArrayG4.getFloat(3, -1.0f) : -1.0f;
                                        TypedValue typedValuePeekValue2 = !o0.b.d(xmlResourceParser2, "value") ? null : typedArrayG4.peekValue(0);
                                        boolean z4 = typedValuePeekValue2 != null;
                                        int i19 = i12 == 4 ? (z4 && d(typedValuePeekValue2.type)) ? 3 : 0 : i12;
                                        if (!z4) {
                                            keyframeOfFloat = i19 == 0 ? Keyframe.ofFloat(f10) : Keyframe.ofInt(f10);
                                        } else if (i19 == 0) {
                                            keyframeOfFloat = Keyframe.ofFloat(f10, !o0.b.d(xmlResourceParser2, "value") ? 0.0f : typedArrayG4.getFloat(0, 0.0f));
                                        } else if (i19 == 1 || i19 == 3) {
                                            keyframeOfFloat = Keyframe.ofInt(f10, !o0.b.d(xmlResourceParser2, "value") ? 0 : typedArrayG4.getInt(0, 0));
                                        } else {
                                            keyframeOfFloat = null;
                                        }
                                        int resourceId = !o0.b.d(xmlResourceParser2, "interpolator") ? 0 : typedArrayG4.getResourceId(1, 0);
                                        if (resourceId > 0) {
                                            keyframeOfFloat.setInterpolator(f(context, resourceId));
                                        }
                                        typedArrayG4.recycle();
                                        if (keyframeOfFloat != null) {
                                            if (arrayList3 == null) {
                                                arrayList3 = new ArrayList();
                                            }
                                            arrayList3.add(keyframeOfFloat);
                                        }
                                        xmlResourceParser.next();
                                    } else {
                                        i12 = i17;
                                        str2 = str3;
                                    }
                                    resources2 = resources;
                                    theme2 = theme;
                                    str3 = str2;
                                    attributeSetAsAttributeSet = attributeSet2;
                                    i17 = i12;
                                    i13 = 3;
                                }
                                int i20 = i17;
                                str = str3;
                                if (arrayList3 == null || (size = arrayList3.size()) <= 0) {
                                    propertyValuesHolderC = null;
                                } else {
                                    Keyframe keyframe = (Keyframe) arrayList3.get(0);
                                    Keyframe keyframe2 = (Keyframe) arrayList3.get(size - 1);
                                    float fraction = keyframe2.getFraction();
                                    if (fraction < 1.0f) {
                                        if (fraction < 0.0f) {
                                            keyframe2.setFraction(1.0f);
                                        } else {
                                            arrayList3.add(arrayList3.size(), keyframe2.getType() == Float.TYPE ? Keyframe.ofFloat(1.0f) : keyframe2.getType() == Integer.TYPE ? Keyframe.ofInt(1.0f) : Keyframe.ofObject(1.0f));
                                            size++;
                                        }
                                    }
                                    float fraction2 = keyframe.getFraction();
                                    if (fraction2 != 0.0f) {
                                        if (fraction2 < 0.0f) {
                                            keyframe.setFraction(0.0f);
                                        } else {
                                            arrayList3.add(0, keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(0.0f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(0.0f) : Keyframe.ofObject(0.0f));
                                            size++;
                                        }
                                    }
                                    Keyframe[] keyframeArr = new Keyframe[size];
                                    arrayList3.toArray(keyframeArr);
                                    int i21 = 0;
                                    while (i21 < size) {
                                        Keyframe keyframe3 = keyframeArr[i21];
                                        if (keyframe3.getFraction() >= 0.0f) {
                                            i11 = size;
                                        } else {
                                            if (i21 == 0) {
                                                keyframe3.setFraction(0.0f);
                                            } else {
                                                int i22 = size - 1;
                                                if (i21 == i22) {
                                                    keyframe3.setFraction(1.0f);
                                                } else {
                                                    int i23 = i21;
                                                    for (int i24 = i21 + 1; i24 < i22 && keyframeArr[i24].getFraction() < 0.0f; i24++) {
                                                        i23 = i24;
                                                    }
                                                    float fraction3 = (keyframeArr[i23 + 1].getFraction() - keyframeArr[i21 - 1].getFraction()) / ((i23 - i21) + 2);
                                                    int i25 = i21;
                                                    while (i25 <= i23) {
                                                        keyframeArr[i25].setFraction(keyframeArr[i25 - 1].getFraction() + fraction3);
                                                        i25++;
                                                        size = size;
                                                    }
                                                    i11 = size;
                                                }
                                            }
                                            i11 = size;
                                        }
                                        i21++;
                                        size = i11;
                                    }
                                    propertyValuesHolderC = PropertyValuesHolder.ofKeyframe(strC, keyframeArr);
                                    if (i20 == 3) {
                                        propertyValuesHolderC.setEvaluator(h.f8539a);
                                    }
                                }
                                if (propertyValuesHolderC == null) {
                                    propertyValuesHolderC = c(typedArrayG2, i16, 0, 1, strC);
                                }
                                if (propertyValuesHolderC != null) {
                                    if (arrayList2 == null) {
                                        arrayList2 = new ArrayList();
                                    }
                                    arrayList2.add(propertyValuesHolderC);
                                }
                                typedArrayG2.recycle();
                            } else {
                                attributeSet2 = attributeSetAsAttributeSet;
                                str = str3;
                            }
                            xmlResourceParser.next();
                            resources2 = resources;
                            theme2 = theme;
                            xmlResourceParser2 = xmlResourceParser;
                            str3 = str;
                            attributeSetAsAttributeSet = attributeSet2;
                            i13 = 3;
                            i14 = 1;
                            i15 = 2;
                        }
                    }
                    if (arrayList2 != null) {
                        int size2 = arrayList2.size();
                        propertyValuesHolderArr = new PropertyValuesHolder[size2];
                        for (int i26 = 0; i26 < size2; i26++) {
                            propertyValuesHolderArr[i26] = (PropertyValuesHolder) arrayList2.get(i26);
                        }
                    } else {
                        propertyValuesHolderArr = null;
                    }
                    if (propertyValuesHolderArr != null && (valueAnimatorE instanceof ValueAnimator)) {
                        valueAnimatorE.setValues(propertyValuesHolderArr);
                    }
                    z = true;
                }
                if (animatorSet != null && !z) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(valueAnimatorE);
                }
                resources2 = resources;
                theme2 = theme;
                xmlResourceParser2 = xmlResourceParser;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c7, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Interpolator b(Context context, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        Interpolator accelerateInterpolator;
        int depth = xmlResourceParser.getDepth();
        Interpolator linearInterpolator = null;
        while (true) {
            int next = xmlResourceParser.next();
            if ((next == 3 && xmlResourceParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                String name = xmlResourceParser.getName();
                if (name.equals("linearInterpolator")) {
                    linearInterpolator = new LinearInterpolator();
                } else {
                    if (name.equals("accelerateInterpolator")) {
                        accelerateInterpolator = new AccelerateInterpolator(context, attributeSetAsAttributeSet);
                    } else if (name.equals("decelerateInterpolator")) {
                        accelerateInterpolator = new DecelerateInterpolator(context, attributeSetAsAttributeSet);
                    } else if (name.equals("accelerateDecelerateInterpolator")) {
                        linearInterpolator = new AccelerateDecelerateInterpolator();
                    } else if (name.equals("cycleInterpolator")) {
                        accelerateInterpolator = new CycleInterpolator(context, attributeSetAsAttributeSet);
                    } else if (name.equals("anticipateInterpolator")) {
                        accelerateInterpolator = new AnticipateInterpolator(context, attributeSetAsAttributeSet);
                    } else if (name.equals("overshootInterpolator")) {
                        accelerateInterpolator = new OvershootInterpolator(context, attributeSetAsAttributeSet);
                    } else if (name.equals("anticipateOvershootInterpolator")) {
                        accelerateInterpolator = new AnticipateOvershootInterpolator(context, attributeSetAsAttributeSet);
                    } else if (name.equals("bounceInterpolator")) {
                        linearInterpolator = new BounceInterpolator();
                    } else {
                        if (!name.equals("pathInterpolator")) {
                            throw new RuntimeException("Unknown interpolator name: " + xmlResourceParser.getName());
                        }
                        accelerateInterpolator = new i(context, attributeSetAsAttributeSet, xmlResourceParser);
                    }
                    linearInterpolator = accelerateInterpolator;
                }
            }
        }
    }

    public static PropertyValuesHolder c(TypedArray typedArray, int i10, int i11, int i12, String str) throws NumberFormatException {
        PropertyValuesHolder propertyValuesHolderOfFloat;
        PropertyValuesHolder propertyValuesHolderOfObject;
        TypedValue typedValuePeekValue = typedArray.peekValue(i11);
        boolean z = typedValuePeekValue != null;
        int i13 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i12);
        boolean z4 = typedValuePeekValue2 != null;
        int i14 = z4 ? typedValuePeekValue2.type : 0;
        if (i10 == 4) {
            i10 = ((z && d(i13)) || (z4 && d(i14))) ? 3 : 0;
        }
        boolean z10 = i10 == 0;
        PropertyValuesHolder propertyValuesHolderOfInt = null;
        if (i10 == 2) {
            String string = typedArray.getString(i11);
            String string2 = typedArray.getString(i12);
            p0.f[] fVarArrT = p000if.a.t(string);
            p0.f[] fVarArrT2 = p000if.a.t(string2);
            if (fVarArrT == null && fVarArrT2 == null) {
                return null;
            }
            if (fVarArrT == null) {
                if (fVarArrT2 != null) {
                    return PropertyValuesHolder.ofObject(str, new g(), fVarArrT2);
                }
                return null;
            }
            g gVar = new g();
            if (fVarArrT2 == null) {
                propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, gVar, fVarArrT);
            } else {
                if (!p000if.a.j(fVarArrT, fVarArrT2)) {
                    throw new InflateException(ta.q.k(" Can't morph from ", string, " to ", string2));
                }
                propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, gVar, fVarArrT, fVarArrT2);
            }
            return propertyValuesHolderOfObject;
        }
        h hVar = i10 == 3 ? h.f8539a : null;
        if (z10) {
            if (z) {
                float dimension = i13 == 5 ? typedArray.getDimension(i11, 0.0f) : typedArray.getFloat(i11, 0.0f);
                if (z4) {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension, i14 == 5 ? typedArray.getDimension(i12, 0.0f) : typedArray.getFloat(i12, 0.0f));
                } else {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, i14 == 5 ? typedArray.getDimension(i12, 0.0f) : typedArray.getFloat(i12, 0.0f));
            }
            propertyValuesHolderOfInt = propertyValuesHolderOfFloat;
        } else if (z) {
            int dimension2 = i13 == 5 ? (int) typedArray.getDimension(i11, 0.0f) : d(i13) ? typedArray.getColor(i11, 0) : typedArray.getInt(i11, 0);
            if (z4) {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2, i14 == 5 ? (int) typedArray.getDimension(i12, 0.0f) : d(i14) ? typedArray.getColor(i12, 0) : typedArray.getInt(i12, 0));
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2);
            }
        } else if (z4) {
            propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i14 == 5 ? (int) typedArray.getDimension(i12, 0.0f) : d(i14) ? typedArray.getColor(i12, 0) : typedArray.getInt(i12, 0));
        }
        if (propertyValuesHolderOfInt == null || hVar == null) {
            return propertyValuesHolderOfInt;
        }
        propertyValuesHolderOfInt.setEvaluator(hVar);
        return propertyValuesHolderOfInt;
    }

    public static boolean d(int i10) {
        return i10 >= 28 && i10 <= 31;
    }

    public static ValueAnimator e(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, XmlResourceParser xmlResourceParser) throws NumberFormatException {
        ValueAnimator valueAnimator;
        TypedArray typedArray;
        TypedArray typedArray2;
        ValueAnimator valueAnimator2;
        int resourceId = 0;
        int i10 = 1;
        TypedArray typedArrayG = o0.b.g(resources, theme, attributeSet, f8517g);
        TypedArray typedArrayG2 = o0.b.g(resources, theme, attributeSet, f8521k);
        ValueAnimator valueAnimator3 = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        boolean zD = o0.b.d(xmlResourceParser, "duration");
        int i11 = NoConst.RECORDING_TIME_INTERVAL;
        if (zD) {
            i11 = typedArrayG.getInt(1, NoConst.RECORDING_TIME_INTERVAL);
        }
        long j10 = i11;
        long j11 = !o0.b.d(xmlResourceParser, "startOffset") ? 0 : typedArrayG.getInt(2, 0);
        int i12 = !o0.b.d(xmlResourceParser, "valueType") ? 4 : typedArrayG.getInt(7, 4);
        if (o0.b.d(xmlResourceParser, "valueFrom") && o0.b.d(xmlResourceParser, "valueTo")) {
            if (i12 == 4) {
                TypedValue typedValuePeekValue = typedArrayG.peekValue(5);
                boolean z = typedValuePeekValue != null;
                int i13 = z ? typedValuePeekValue.type : 0;
                TypedValue typedValuePeekValue2 = typedArrayG.peekValue(6);
                boolean z4 = typedValuePeekValue2 != null;
                i12 = ((z && d(i13)) || (z4 && d(z4 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder propertyValuesHolderC = c(typedArrayG, i12, 5, 6, "");
            if (propertyValuesHolderC != null) {
                valueAnimator3.setValues(propertyValuesHolderC);
            }
        }
        valueAnimator3.setDuration(j10);
        valueAnimator3.setStartDelay(j11);
        valueAnimator3.setRepeatCount(!o0.b.d(xmlResourceParser, "repeatCount") ? 0 : typedArrayG.getInt(3, 0));
        valueAnimator3.setRepeatMode(!o0.b.d(xmlResourceParser, "repeatMode") ? 1 : typedArrayG.getInt(4, 1));
        if (typedArrayG2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator3;
            String strC = o0.b.c(typedArrayG2, xmlResourceParser, "pathData", 1);
            if (strC != null) {
                String strC2 = o0.b.c(typedArrayG2, xmlResourceParser, "propertyXName", 2);
                String strC3 = o0.b.c(typedArrayG2, xmlResourceParser, "propertyYName", 3);
                if (strC2 == null && strC3 == null) {
                    throw new InflateException(typedArrayG2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path pathV = p000if.a.v(strC);
                PathMeasure pathMeasure = new PathMeasure(pathV, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float length = 0.0f;
                while (true) {
                    length += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(length));
                    if (!pathMeasure.nextContour()) {
                        break;
                    }
                    valueAnimator3 = valueAnimator3;
                    i10 = 1;
                }
                PathMeasure pathMeasure2 = new PathMeasure(pathV, false);
                int iMin = Math.min(100, ((int) (length / 0.5f)) + i10);
                float[] fArr = new float[iMin];
                float[] fArr2 = new float[iMin];
                float[] fArr3 = new float[2];
                float f10 = length / (iMin - 1);
                valueAnimator = valueAnimator3;
                typedArray = typedArrayG;
                int i14 = 0;
                int i15 = 0;
                float f11 = 0.0f;
                while (true) {
                    if (i15 >= iMin) {
                        break;
                    }
                    int i16 = iMin;
                    pathMeasure2.getPosTan(f11 - ((Float) arrayList.get(i14)).floatValue(), fArr3, null);
                    fArr[i15] = fArr3[0];
                    fArr2[i15] = fArr3[1];
                    f11 += f10;
                    int i17 = i14 + 1;
                    if (i17 < arrayList.size() && f11 > ((Float) arrayList.get(i17)).floatValue()) {
                        pathMeasure2.nextContour();
                        i14 = i17;
                    }
                    i15++;
                    iMin = i16;
                }
                PropertyValuesHolder propertyValuesHolderOfFloat = strC2 != null ? PropertyValuesHolder.ofFloat(strC2, fArr) : null;
                PropertyValuesHolder propertyValuesHolderOfFloat2 = strC3 != null ? PropertyValuesHolder.ofFloat(strC3, fArr2) : null;
                if (propertyValuesHolderOfFloat == null) {
                    resourceId = 0;
                    objectAnimator2.setValues(propertyValuesHolderOfFloat2);
                } else {
                    resourceId = 0;
                    if (propertyValuesHolderOfFloat2 == null) {
                        objectAnimator2.setValues(propertyValuesHolderOfFloat);
                    } else {
                        objectAnimator2.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
                    }
                }
            } else {
                valueAnimator = valueAnimator3;
                typedArray = typedArrayG;
                objectAnimator2.setPropertyName(o0.b.c(typedArrayG2, xmlResourceParser, "propertyName", 0));
            }
        } else {
            valueAnimator = valueAnimator3;
            typedArray = typedArrayG;
        }
        if (o0.b.d(xmlResourceParser, "interpolator")) {
            typedArray2 = typedArray;
            resourceId = typedArray2.getResourceId(resourceId, resourceId);
        } else {
            typedArray2 = typedArray;
        }
        if (resourceId > 0) {
            valueAnimator2 = valueAnimator;
            valueAnimator2.setInterpolator(f(context, resourceId));
        } else {
            valueAnimator2 = valueAnimator;
        }
        typedArray2.recycle();
        if (typedArrayG2 != null) {
            typedArrayG2.recycle();
        }
        return valueAnimator2;
    }

    public static Interpolator f(Context context, int i10) {
        if (Build.VERSION.SDK_INT >= 21) {
            return AnimationUtils.loadInterpolator(context, i10);
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                if (i10 == 17563663) {
                    return new m1.a(0);
                }
                if (i10 == 17563661) {
                    return new m1.a(1);
                }
                if (i10 == 17563662) {
                    return new m1.a(2);
                }
                XmlResourceParser animation = context.getResources().getAnimation(i10);
                context.getResources();
                context.getTheme();
                Interpolator interpolatorB = b(context, animation);
                animation.close();
                return interpolatorB;
            } catch (IOException e7) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i10));
                notFoundException.initCause(e7);
                throw notFoundException;
            } catch (XmlPullParserException e10) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i10));
                notFoundException2.initCause(e10);
                throw notFoundException2;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                xmlResourceParser.close();
            }
            throw th2;
        }
    }
}
