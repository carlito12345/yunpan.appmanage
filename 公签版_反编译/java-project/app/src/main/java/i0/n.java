package i0;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Name;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f8386d = {0, 4, 8};

    /* renamed from: e, reason: collision with root package name */
    public static final SparseIntArray f8387e;

    /* renamed from: f, reason: collision with root package name */
    public static final SparseIntArray f8388f;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8389a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8390b = true;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f8391c = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f8387e = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f8388f = sparseIntArray2;
        sparseIntArray.append(82, 25);
        sparseIntArray.append(83, 26);
        sparseIntArray.append(85, 29);
        sparseIntArray.append(86, 30);
        sparseIntArray.append(92, 36);
        sparseIntArray.append(91, 35);
        sparseIntArray.append(63, 4);
        sparseIntArray.append(62, 3);
        sparseIntArray.append(58, 1);
        sparseIntArray.append(60, 91);
        sparseIntArray.append(59, 92);
        sparseIntArray.append(101, 6);
        sparseIntArray.append(102, 7);
        sparseIntArray.append(70, 17);
        sparseIntArray.append(71, 18);
        sparseIntArray.append(72, 19);
        sparseIntArray.append(54, 99);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(87, 32);
        sparseIntArray.append(88, 33);
        sparseIntArray.append(69, 10);
        sparseIntArray.append(68, 9);
        sparseIntArray.append(106, 13);
        sparseIntArray.append(109, 16);
        sparseIntArray.append(107, 14);
        sparseIntArray.append(104, 11);
        sparseIntArray.append(108, 15);
        sparseIntArray.append(105, 12);
        sparseIntArray.append(95, 40);
        sparseIntArray.append(80, 39);
        sparseIntArray.append(79, 41);
        sparseIntArray.append(94, 42);
        sparseIntArray.append(78, 20);
        sparseIntArray.append(93, 37);
        sparseIntArray.append(67, 5);
        sparseIntArray.append(81, 87);
        sparseIntArray.append(90, 87);
        sparseIntArray.append(84, 87);
        sparseIntArray.append(61, 87);
        sparseIntArray.append(57, 87);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(96, 95);
        sparseIntArray.append(73, 96);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(97, 54);
        sparseIntArray.append(74, 55);
        sparseIntArray.append(98, 56);
        sparseIntArray.append(75, 57);
        sparseIntArray.append(99, 58);
        sparseIntArray.append(76, 59);
        sparseIntArray.append(64, 61);
        sparseIntArray.append(66, 62);
        sparseIntArray.append(65, 63);
        sparseIntArray.append(28, 64);
        sparseIntArray.append(121, 65);
        sparseIntArray.append(35, 66);
        sparseIntArray.append(122, 67);
        sparseIntArray.append(113, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(112, 68);
        sparseIntArray.append(100, 69);
        sparseIntArray.append(77, 70);
        sparseIntArray.append(111, 97);
        sparseIntArray.append(32, 71);
        sparseIntArray.append(30, 72);
        sparseIntArray.append(31, 73);
        sparseIntArray.append(33, 74);
        sparseIntArray.append(29, 75);
        sparseIntArray.append(114, 76);
        sparseIntArray.append(89, 77);
        sparseIntArray.append(123, 78);
        sparseIntArray.append(56, 80);
        sparseIntArray.append(55, 81);
        sparseIntArray.append(116, 82);
        sparseIntArray.append(120, 83);
        sparseIntArray.append(119, 84);
        sparseIntArray.append(118, 85);
        sparseIntArray.append(117, 86);
        sparseIntArray2.append(85, 6);
        sparseIntArray2.append(85, 7);
        sparseIntArray2.append(0, 27);
        sparseIntArray2.append(89, 13);
        sparseIntArray2.append(92, 16);
        sparseIntArray2.append(90, 14);
        sparseIntArray2.append(87, 11);
        sparseIntArray2.append(91, 15);
        sparseIntArray2.append(88, 12);
        sparseIntArray2.append(78, 40);
        sparseIntArray2.append(71, 39);
        sparseIntArray2.append(70, 41);
        sparseIntArray2.append(77, 42);
        sparseIntArray2.append(69, 20);
        sparseIntArray2.append(76, 37);
        sparseIntArray2.append(60, 5);
        sparseIntArray2.append(72, 87);
        sparseIntArray2.append(75, 87);
        sparseIntArray2.append(73, 87);
        sparseIntArray2.append(57, 87);
        sparseIntArray2.append(56, 87);
        sparseIntArray2.append(5, 24);
        sparseIntArray2.append(7, 28);
        sparseIntArray2.append(23, 31);
        sparseIntArray2.append(24, 8);
        sparseIntArray2.append(6, 34);
        sparseIntArray2.append(8, 2);
        sparseIntArray2.append(3, 23);
        sparseIntArray2.append(4, 21);
        sparseIntArray2.append(79, 95);
        sparseIntArray2.append(64, 96);
        sparseIntArray2.append(2, 22);
        sparseIntArray2.append(13, 43);
        sparseIntArray2.append(26, 44);
        sparseIntArray2.append(21, 45);
        sparseIntArray2.append(22, 46);
        sparseIntArray2.append(20, 60);
        sparseIntArray2.append(18, 47);
        sparseIntArray2.append(19, 48);
        sparseIntArray2.append(14, 49);
        sparseIntArray2.append(15, 50);
        sparseIntArray2.append(16, 51);
        sparseIntArray2.append(17, 52);
        sparseIntArray2.append(25, 53);
        sparseIntArray2.append(80, 54);
        sparseIntArray2.append(65, 55);
        sparseIntArray2.append(81, 56);
        sparseIntArray2.append(66, 57);
        sparseIntArray2.append(82, 58);
        sparseIntArray2.append(67, 59);
        sparseIntArray2.append(59, 62);
        sparseIntArray2.append(58, 63);
        sparseIntArray2.append(28, 64);
        sparseIntArray2.append(105, 65);
        sparseIntArray2.append(34, 66);
        sparseIntArray2.append(106, 67);
        sparseIntArray2.append(96, 79);
        sparseIntArray2.append(1, 38);
        sparseIntArray2.append(97, 98);
        sparseIntArray2.append(95, 68);
        sparseIntArray2.append(83, 69);
        sparseIntArray2.append(68, 70);
        sparseIntArray2.append(32, 71);
        sparseIntArray2.append(30, 72);
        sparseIntArray2.append(31, 73);
        sparseIntArray2.append(33, 74);
        sparseIntArray2.append(29, 75);
        sparseIntArray2.append(98, 76);
        sparseIntArray2.append(74, 77);
        sparseIntArray2.append(107, 78);
        sparseIntArray2.append(55, 80);
        sparseIntArray2.append(54, 81);
        sparseIntArray2.append(100, 82);
        sparseIntArray2.append(104, 83);
        sparseIntArray2.append(103, 84);
        sparseIntArray2.append(102, 85);
        sparseIntArray2.append(101, 86);
        sparseIntArray2.append(94, 97);
    }

    public static int[] c(a aVar, String str) throws IllegalAccessException, IllegalArgumentException {
        int iIntValue;
        HashMap map;
        String[] strArrSplit = str.split(",");
        Context context = aVar.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i10 = 0;
        int i11 = 0;
        while (i10 < strArrSplit.length) {
            String strTrim = strArrSplit[i10].trim();
            Object obj = null;
            try {
                iIntValue = p.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, Name.MARK, context.getPackageName());
            }
            if (iIntValue == 0 && aVar.isInEditMode() && (aVar.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) aVar.getParent();
                constraintLayout.getClass();
                if ((strTrim instanceof String) && (map = constraintLayout.f1027m) != null && map.containsKey(strTrim)) {
                    obj = constraintLayout.f1027m.get(strTrim);
                }
                if (obj != null && (obj instanceof Integer)) {
                    iIntValue = ((Integer) obj).intValue();
                }
            }
            iArr[i11] = iIntValue;
            i10++;
            i11++;
        }
        return i11 != strArrSplit.length ? Arrays.copyOf(iArr, i11) : iArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static i d(Context context, AttributeSet attributeSet, boolean z) throws NumberFormatException {
        int i10;
        i iVar = new i();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z ? q.f8394c : q.f8392a);
        int[] iArr = f8386d;
        String[] strArr = e0.a.f4707a;
        SparseIntArray sparseIntArray = f8387e;
        l lVar = iVar.f8315b;
        m mVar = iVar.f8318e;
        k kVar = iVar.f8316c;
        j jVar = iVar.f8317d;
        int i11 = 3;
        if (z) {
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            h hVar = new h();
            kVar.getClass();
            jVar.getClass();
            mVar.getClass();
            int i12 = 0;
            while (i12 < indexCount) {
                int index = typedArrayObtainStyledAttributes.getIndex(i12);
                switch (f8388f.get(index)) {
                    case 2:
                        hVar.b(2, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.I));
                        break;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case 30:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 61:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    default:
                        Integer.toHexString(index);
                        sparseIntArray.get(index);
                        break;
                    case 5:
                        hVar.c(5, typedArrayObtainStyledAttributes.getString(index));
                        break;
                    case 6:
                        hVar.b(6, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, jVar.C));
                        break;
                    case 7:
                        hVar.b(7, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, jVar.D));
                        break;
                    case 8:
                        hVar.b(8, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.J));
                        break;
                    case 11:
                        hVar.b(11, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.P));
                        break;
                    case 12:
                        hVar.b(12, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.Q));
                        break;
                    case 13:
                        hVar.b(13, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.M));
                        break;
                    case 14:
                        hVar.b(14, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.O));
                        break;
                    case 15:
                        hVar.b(15, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.R));
                        break;
                    case 16:
                        hVar.b(16, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.N));
                        break;
                    case 17:
                        hVar.b(17, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, jVar.f8327d));
                        break;
                    case 18:
                        hVar.b(18, typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, jVar.f8329e));
                        break;
                    case 19:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, jVar.f8331f), 19);
                        break;
                    case 20:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, jVar.f8356w), 20);
                        break;
                    case 21:
                        hVar.b(21, typedArrayObtainStyledAttributes.getLayoutDimension(index, jVar.f8325c));
                        break;
                    case 22:
                        hVar.b(22, iArr[typedArrayObtainStyledAttributes.getInt(index, lVar.f8369a)]);
                        break;
                    case 23:
                        hVar.b(23, typedArrayObtainStyledAttributes.getLayoutDimension(index, jVar.f8323b));
                        break;
                    case 24:
                        hVar.b(24, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.F));
                        break;
                    case 27:
                        hVar.b(27, typedArrayObtainStyledAttributes.getInt(index, jVar.E));
                        break;
                    case 28:
                        hVar.b(28, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.G));
                        break;
                    case 31:
                        hVar.b(31, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.K));
                        break;
                    case 34:
                        hVar.b(34, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.H));
                        break;
                    case 37:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, jVar.f8357x), 37);
                        break;
                    case 38:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, iVar.f8314a);
                        iVar.f8314a = resourceId;
                        hVar.b(38, resourceId);
                        break;
                    case 39:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, jVar.U), 39);
                        break;
                    case 40:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, jVar.T), 40);
                        break;
                    case 41:
                        hVar.b(41, typedArrayObtainStyledAttributes.getInt(index, jVar.V));
                        break;
                    case 42:
                        hVar.b(42, typedArrayObtainStyledAttributes.getInt(index, jVar.W));
                        break;
                    case 43:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, lVar.f8371c), 43);
                        break;
                    case 44:
                        if (Build.VERSION.SDK_INT >= 21) {
                            hVar.d(44, true);
                            hVar.a(typedArrayObtainStyledAttributes.getDimension(index, mVar.f8385m), 44);
                            break;
                        }
                        break;
                    case 45:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, mVar.f8375b), 45);
                        break;
                    case 46:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, mVar.f8376c), 46);
                        break;
                    case 47:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, mVar.f8377d), 47);
                        break;
                    case 48:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, mVar.f8378e), 48);
                        break;
                    case 49:
                        hVar.a(typedArrayObtainStyledAttributes.getDimension(index, mVar.f8379f), 49);
                        break;
                    case 50:
                        hVar.a(typedArrayObtainStyledAttributes.getDimension(index, mVar.f8380g), 50);
                        break;
                    case 51:
                        hVar.a(typedArrayObtainStyledAttributes.getDimension(index, mVar.f8382i), 51);
                        break;
                    case 52:
                        hVar.a(typedArrayObtainStyledAttributes.getDimension(index, mVar.f8383j), 52);
                        break;
                    case 53:
                        if (Build.VERSION.SDK_INT >= 21) {
                            hVar.a(typedArrayObtainStyledAttributes.getDimension(index, mVar.f8384k), 53);
                            break;
                        }
                        break;
                    case 54:
                        hVar.b(54, typedArrayObtainStyledAttributes.getInt(index, jVar.X));
                        break;
                    case 55:
                        hVar.b(55, typedArrayObtainStyledAttributes.getInt(index, jVar.Y));
                        break;
                    case 56:
                        hVar.b(56, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.Z));
                        break;
                    case 57:
                        hVar.b(57, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.f8322a0));
                        break;
                    case 58:
                        hVar.b(58, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.f8324b0));
                        break;
                    case 59:
                        hVar.b(59, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.f8326c0));
                        break;
                    case 60:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, mVar.f8374a), 60);
                        break;
                    case 62:
                        hVar.b(62, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.A));
                        break;
                    case 63:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, jVar.B), 63);
                        break;
                    case 64:
                        hVar.b(64, f(typedArrayObtainStyledAttributes, index, kVar.f8360a));
                        break;
                    case 65:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type != 3) {
                            hVar.c(65, strArr[typedArrayObtainStyledAttributes.getInteger(index, 0)]);
                            break;
                        } else {
                            hVar.c(65, typedArrayObtainStyledAttributes.getString(index));
                            break;
                        }
                    case 66:
                        hVar.b(66, typedArrayObtainStyledAttributes.getInt(index, 0));
                        break;
                    case 67:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, kVar.f8364e), 67);
                        break;
                    case 68:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, lVar.f8372d), 68);
                        break;
                    case 69:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, 1.0f), 69);
                        break;
                    case 70:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, 1.0f), 70);
                        break;
                    case 71:
                        break;
                    case 72:
                        hVar.b(72, typedArrayObtainStyledAttributes.getInt(index, jVar.f8332f0));
                        break;
                    case 73:
                        hVar.b(73, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.f8334g0));
                        break;
                    case 74:
                        hVar.c(74, typedArrayObtainStyledAttributes.getString(index));
                        break;
                    case 75:
                        hVar.d(75, typedArrayObtainStyledAttributes.getBoolean(index, jVar.f8347n0));
                        break;
                    case 76:
                        hVar.b(76, typedArrayObtainStyledAttributes.getInt(index, kVar.f8362c));
                        break;
                    case 77:
                        hVar.c(77, typedArrayObtainStyledAttributes.getString(index));
                        break;
                    case 78:
                        hVar.b(78, typedArrayObtainStyledAttributes.getInt(index, lVar.f8370b));
                        break;
                    case 79:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, kVar.f8363d), 79);
                        break;
                    case 80:
                        hVar.d(80, typedArrayObtainStyledAttributes.getBoolean(index, jVar.f8343l0));
                        break;
                    case 81:
                        hVar.d(81, typedArrayObtainStyledAttributes.getBoolean(index, jVar.f8345m0));
                        break;
                    case 82:
                        hVar.b(82, typedArrayObtainStyledAttributes.getInteger(index, kVar.f8361b));
                        break;
                    case 83:
                        hVar.b(83, f(typedArrayObtainStyledAttributes, index, mVar.f8381h));
                        break;
                    case CarSettingID.Send.HVAC_SEASONS_KEY /* 84 */:
                        hVar.b(84, typedArrayObtainStyledAttributes.getInteger(index, kVar.f8366g));
                        break;
                    case 85:
                        hVar.a(typedArrayObtainStyledAttributes.getFloat(index, kVar.f8365f), 85);
                        break;
                    case 86:
                        int i13 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (i13 != 1) {
                            if (i13 != 3) {
                                hVar.b(88, typedArrayObtainStyledAttributes.getInteger(index, kVar.f8368i));
                                break;
                            } else {
                                String string = typedArrayObtainStyledAttributes.getString(index);
                                kVar.f8367h = string;
                                hVar.c(90, string);
                                if (kVar.f8367h.indexOf("/") <= 0) {
                                    hVar.b(88, -1);
                                    break;
                                } else {
                                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                    kVar.f8368i = resourceId2;
                                    hVar.b(89, resourceId2);
                                    hVar.b(88, -2);
                                    break;
                                }
                            }
                        } else {
                            int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            kVar.f8368i = resourceId3;
                            hVar.b(89, resourceId3);
                            if (kVar.f8368i != -1) {
                                hVar.b(88, -2);
                                break;
                            }
                        }
                        break;
                    case 87:
                        Integer.toHexString(index);
                        sparseIntArray.get(index);
                        break;
                    case 93:
                        hVar.b(93, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.L));
                        break;
                    case 94:
                        hVar.b(94, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, jVar.S));
                        break;
                    case 95:
                        g(hVar, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case 96:
                        i10 = 1;
                        g(hVar, typedArrayObtainStyledAttributes, index, 1);
                        continue;
                        i12 += i10;
                        i11 = 3;
                    case 97:
                        hVar.b(97, typedArrayObtainStyledAttributes.getInt(index, jVar.f8349o0));
                        break;
                    case 98:
                        int i14 = h0.a.f6319t;
                        if (typedArrayObtainStyledAttributes.peekValue(index).type != i11) {
                            iVar.f8314a = typedArrayObtainStyledAttributes.getResourceId(index, iVar.f8314a);
                            break;
                        } else {
                            typedArrayObtainStyledAttributes.getString(index);
                            break;
                        }
                    case 99:
                        hVar.d(99, typedArrayObtainStyledAttributes.getBoolean(index, jVar.f8333g));
                        break;
                }
                i10 = 1;
                i12 += i10;
                i11 = 3;
            }
        } else {
            int i15 = 1;
            int indexCount2 = typedArrayObtainStyledAttributes.getIndexCount();
            int i16 = 0;
            while (i16 < indexCount2) {
                int index2 = typedArrayObtainStyledAttributes.getIndex(i16);
                if (index2 != i15 && 23 != index2 && 24 != index2) {
                    kVar.getClass();
                    jVar.getClass();
                    mVar.getClass();
                }
                switch (sparseIntArray.get(index2)) {
                    case 1:
                        jVar.f8350p = f(typedArrayObtainStyledAttributes, index2, jVar.f8350p);
                        i15 = 1;
                        break;
                    case 2:
                        jVar.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.I);
                        i15 = 1;
                        break;
                    case 3:
                        jVar.f8348o = f(typedArrayObtainStyledAttributes, index2, jVar.f8348o);
                        i15 = 1;
                        break;
                    case 4:
                        jVar.f8346n = f(typedArrayObtainStyledAttributes, index2, jVar.f8346n);
                        i15 = 1;
                        break;
                    case 5:
                        jVar.f8358y = typedArrayObtainStyledAttributes.getString(index2);
                        i15 = 1;
                        break;
                    case 6:
                        jVar.C = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, jVar.C);
                        i15 = 1;
                        break;
                    case 7:
                        jVar.D = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, jVar.D);
                        i15 = 1;
                        break;
                    case 8:
                        jVar.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.J);
                        i15 = 1;
                        break;
                    case 9:
                        jVar.f8355v = f(typedArrayObtainStyledAttributes, index2, jVar.f8355v);
                        i15 = 1;
                        break;
                    case 10:
                        jVar.f8354u = f(typedArrayObtainStyledAttributes, index2, jVar.f8354u);
                        i15 = 1;
                        break;
                    case 11:
                        jVar.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.P);
                        i15 = 1;
                        break;
                    case 12:
                        jVar.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.Q);
                        i15 = 1;
                        break;
                    case 13:
                        jVar.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.M);
                        i15 = 1;
                        break;
                    case 14:
                        jVar.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.O);
                        i15 = 1;
                        break;
                    case 15:
                        jVar.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.R);
                        i15 = 1;
                        break;
                    case 16:
                        jVar.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.N);
                        i15 = 1;
                        break;
                    case 17:
                        jVar.f8327d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, jVar.f8327d);
                        i15 = 1;
                        break;
                    case 18:
                        jVar.f8329e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index2, jVar.f8329e);
                        i15 = 1;
                        break;
                    case 19:
                        jVar.f8331f = typedArrayObtainStyledAttributes.getFloat(index2, jVar.f8331f);
                        i15 = 1;
                        break;
                    case 20:
                        jVar.f8356w = typedArrayObtainStyledAttributes.getFloat(index2, jVar.f8356w);
                        i15 = 1;
                        break;
                    case 21:
                        jVar.f8325c = typedArrayObtainStyledAttributes.getLayoutDimension(index2, jVar.f8325c);
                        i15 = 1;
                        break;
                    case 22:
                        int i17 = typedArrayObtainStyledAttributes.getInt(index2, lVar.f8369a);
                        lVar.f8369a = i17;
                        lVar.f8369a = iArr[i17];
                        i15 = 1;
                        break;
                    case 23:
                        jVar.f8323b = typedArrayObtainStyledAttributes.getLayoutDimension(index2, jVar.f8323b);
                        i15 = 1;
                        break;
                    case 24:
                        jVar.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.F);
                        i15 = 1;
                        break;
                    case 25:
                        jVar.f8335h = f(typedArrayObtainStyledAttributes, index2, jVar.f8335h);
                        i15 = 1;
                        break;
                    case 26:
                        jVar.f8337i = f(typedArrayObtainStyledAttributes, index2, jVar.f8337i);
                        i15 = 1;
                        break;
                    case 27:
                        jVar.E = typedArrayObtainStyledAttributes.getInt(index2, jVar.E);
                        i15 = 1;
                        break;
                    case 28:
                        jVar.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.G);
                        i15 = 1;
                        break;
                    case 29:
                        jVar.f8339j = f(typedArrayObtainStyledAttributes, index2, jVar.f8339j);
                        i15 = 1;
                        break;
                    case 30:
                        jVar.f8341k = f(typedArrayObtainStyledAttributes, index2, jVar.f8341k);
                        i15 = 1;
                        break;
                    case 31:
                        jVar.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.K);
                        i15 = 1;
                        break;
                    case 32:
                        jVar.f8352s = f(typedArrayObtainStyledAttributes, index2, jVar.f8352s);
                        i15 = 1;
                        break;
                    case 33:
                        jVar.f8353t = f(typedArrayObtainStyledAttributes, index2, jVar.f8353t);
                        i15 = 1;
                        break;
                    case 34:
                        jVar.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.H);
                        i15 = 1;
                        break;
                    case 35:
                        jVar.f8344m = f(typedArrayObtainStyledAttributes, index2, jVar.f8344m);
                        i15 = 1;
                        break;
                    case 36:
                        jVar.l = f(typedArrayObtainStyledAttributes, index2, jVar.l);
                        i15 = 1;
                        break;
                    case 37:
                        jVar.f8357x = typedArrayObtainStyledAttributes.getFloat(index2, jVar.f8357x);
                        i15 = 1;
                        break;
                    case 38:
                        iVar.f8314a = typedArrayObtainStyledAttributes.getResourceId(index2, iVar.f8314a);
                        i15 = 1;
                        break;
                    case 39:
                        jVar.U = typedArrayObtainStyledAttributes.getFloat(index2, jVar.U);
                        i15 = 1;
                        break;
                    case 40:
                        jVar.T = typedArrayObtainStyledAttributes.getFloat(index2, jVar.T);
                        i15 = 1;
                        break;
                    case 41:
                        jVar.V = typedArrayObtainStyledAttributes.getInt(index2, jVar.V);
                        i15 = 1;
                        break;
                    case 42:
                        jVar.W = typedArrayObtainStyledAttributes.getInt(index2, jVar.W);
                        i15 = 1;
                        break;
                    case 43:
                        lVar.f8371c = typedArrayObtainStyledAttributes.getFloat(index2, lVar.f8371c);
                        i15 = 1;
                        break;
                    case 44:
                        if (Build.VERSION.SDK_INT >= 21) {
                            mVar.l = true;
                            mVar.f8385m = typedArrayObtainStyledAttributes.getDimension(index2, mVar.f8385m);
                        }
                        i15 = 1;
                        break;
                    case 45:
                        mVar.f8375b = typedArrayObtainStyledAttributes.getFloat(index2, mVar.f8375b);
                        i15 = 1;
                        break;
                    case 46:
                        mVar.f8376c = typedArrayObtainStyledAttributes.getFloat(index2, mVar.f8376c);
                        i15 = 1;
                        break;
                    case 47:
                        mVar.f8377d = typedArrayObtainStyledAttributes.getFloat(index2, mVar.f8377d);
                        i15 = 1;
                        break;
                    case 48:
                        mVar.f8378e = typedArrayObtainStyledAttributes.getFloat(index2, mVar.f8378e);
                        i15 = 1;
                        break;
                    case 49:
                        mVar.f8379f = typedArrayObtainStyledAttributes.getDimension(index2, mVar.f8379f);
                        i15 = 1;
                        break;
                    case 50:
                        mVar.f8380g = typedArrayObtainStyledAttributes.getDimension(index2, mVar.f8380g);
                        i15 = 1;
                        break;
                    case 51:
                        mVar.f8382i = typedArrayObtainStyledAttributes.getDimension(index2, mVar.f8382i);
                        i15 = 1;
                        break;
                    case 52:
                        mVar.f8383j = typedArrayObtainStyledAttributes.getDimension(index2, mVar.f8383j);
                        i15 = 1;
                        break;
                    case 53:
                        if (Build.VERSION.SDK_INT >= 21) {
                            mVar.f8384k = typedArrayObtainStyledAttributes.getDimension(index2, mVar.f8384k);
                            i15 = 1;
                            break;
                        }
                        i15 = 1;
                        break;
                    case 54:
                        jVar.X = typedArrayObtainStyledAttributes.getInt(index2, jVar.X);
                        i15 = 1;
                        break;
                    case 55:
                        jVar.Y = typedArrayObtainStyledAttributes.getInt(index2, jVar.Y);
                        i15 = 1;
                        break;
                    case 56:
                        jVar.Z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.Z);
                        i15 = 1;
                        break;
                    case 57:
                        jVar.f8322a0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.f8322a0);
                        i15 = 1;
                        break;
                    case 58:
                        jVar.f8324b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.f8324b0);
                        i15 = 1;
                        break;
                    case 59:
                        jVar.f8326c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.f8326c0);
                        i15 = 1;
                        break;
                    case 60:
                        mVar.f8374a = typedArrayObtainStyledAttributes.getFloat(index2, mVar.f8374a);
                        i15 = 1;
                        break;
                    case 61:
                        jVar.z = f(typedArrayObtainStyledAttributes, index2, jVar.z);
                        i15 = 1;
                        break;
                    case 62:
                        jVar.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.A);
                        i15 = 1;
                        break;
                    case 63:
                        jVar.B = typedArrayObtainStyledAttributes.getFloat(index2, jVar.B);
                        i15 = 1;
                        break;
                    case 64:
                        kVar.f8360a = f(typedArrayObtainStyledAttributes, index2, kVar.f8360a);
                        i15 = 1;
                        break;
                    case 65:
                        if (typedArrayObtainStyledAttributes.peekValue(index2).type == 3) {
                            typedArrayObtainStyledAttributes.getString(index2);
                            kVar.getClass();
                        } else {
                            String str = strArr[typedArrayObtainStyledAttributes.getInteger(index2, 0)];
                            kVar.getClass();
                        }
                        i15 = 1;
                        break;
                    case 66:
                        typedArrayObtainStyledAttributes.getInt(index2, 0);
                        kVar.getClass();
                        i15 = 1;
                        break;
                    case 67:
                        kVar.f8364e = typedArrayObtainStyledAttributes.getFloat(index2, kVar.f8364e);
                        i15 = 1;
                        break;
                    case 68:
                        lVar.f8372d = typedArrayObtainStyledAttributes.getFloat(index2, lVar.f8372d);
                        i15 = 1;
                        break;
                    case 69:
                        jVar.f8328d0 = typedArrayObtainStyledAttributes.getFloat(index2, 1.0f);
                        i15 = 1;
                        break;
                    case 70:
                        jVar.f8330e0 = typedArrayObtainStyledAttributes.getFloat(index2, 1.0f);
                        i15 = 1;
                        break;
                    case 71:
                        i15 = 1;
                        break;
                    case 72:
                        jVar.f8332f0 = typedArrayObtainStyledAttributes.getInt(index2, jVar.f8332f0);
                        i15 = 1;
                        break;
                    case 73:
                        jVar.f8334g0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.f8334g0);
                        i15 = 1;
                        break;
                    case 74:
                        jVar.f8340j0 = typedArrayObtainStyledAttributes.getString(index2);
                        i15 = 1;
                        break;
                    case 75:
                        jVar.f8347n0 = typedArrayObtainStyledAttributes.getBoolean(index2, jVar.f8347n0);
                        i15 = 1;
                        break;
                    case 76:
                        kVar.f8362c = typedArrayObtainStyledAttributes.getInt(index2, kVar.f8362c);
                        i15 = 1;
                        break;
                    case 77:
                        jVar.f8342k0 = typedArrayObtainStyledAttributes.getString(index2);
                        i15 = 1;
                        break;
                    case 78:
                        lVar.f8370b = typedArrayObtainStyledAttributes.getInt(index2, lVar.f8370b);
                        i15 = 1;
                        break;
                    case 79:
                        kVar.f8363d = typedArrayObtainStyledAttributes.getFloat(index2, kVar.f8363d);
                        i15 = 1;
                        break;
                    case 80:
                        jVar.f8343l0 = typedArrayObtainStyledAttributes.getBoolean(index2, jVar.f8343l0);
                        i15 = 1;
                        break;
                    case 81:
                        jVar.f8345m0 = typedArrayObtainStyledAttributes.getBoolean(index2, jVar.f8345m0);
                        i15 = 1;
                        break;
                    case 82:
                        kVar.f8361b = typedArrayObtainStyledAttributes.getInteger(index2, kVar.f8361b);
                        i15 = 1;
                        break;
                    case 83:
                        mVar.f8381h = f(typedArrayObtainStyledAttributes, index2, mVar.f8381h);
                        i15 = 1;
                        break;
                    case CarSettingID.Send.HVAC_SEASONS_KEY /* 84 */:
                        kVar.f8366g = typedArrayObtainStyledAttributes.getInteger(index2, kVar.f8366g);
                        i15 = 1;
                        break;
                    case 85:
                        kVar.f8365f = typedArrayObtainStyledAttributes.getFloat(index2, kVar.f8365f);
                        i15 = 1;
                        break;
                    case 86:
                        int i18 = typedArrayObtainStyledAttributes.peekValue(index2).type;
                        if (i18 == 1) {
                            kVar.f8368i = typedArrayObtainStyledAttributes.getResourceId(index2, -1);
                        } else if (i18 == 3) {
                            String string2 = typedArrayObtainStyledAttributes.getString(index2);
                            kVar.f8367h = string2;
                            if (string2.indexOf("/") > 0) {
                                kVar.f8368i = typedArrayObtainStyledAttributes.getResourceId(index2, -1);
                            }
                        } else {
                            typedArrayObtainStyledAttributes.getInteger(index2, kVar.f8368i);
                        }
                        i15 = 1;
                        break;
                    case 87:
                        Integer.toHexString(index2);
                        sparseIntArray.get(index2);
                        i15 = 1;
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        Integer.toHexString(index2);
                        sparseIntArray.get(index2);
                        i15 = 1;
                        break;
                    case 91:
                        jVar.f8351q = f(typedArrayObtainStyledAttributes, index2, jVar.f8351q);
                        i15 = 1;
                        break;
                    case 92:
                        jVar.r = f(typedArrayObtainStyledAttributes, index2, jVar.r);
                        i15 = 1;
                        break;
                    case 93:
                        jVar.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.L);
                        i15 = 1;
                        break;
                    case 94:
                        jVar.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index2, jVar.S);
                        i15 = 1;
                        break;
                    case 95:
                        g(jVar, typedArrayObtainStyledAttributes, index2, 0);
                        i15 = 1;
                        break;
                    case 96:
                        g(jVar, typedArrayObtainStyledAttributes, index2, 1);
                        i15 = 1;
                        break;
                    case 97:
                        jVar.f8349o0 = typedArrayObtainStyledAttributes.getInt(index2, jVar.f8349o0);
                        i15 = 1;
                        break;
                }
                i16 += i15;
            }
            if (jVar.f8340j0 != null) {
                jVar.f8338i0 = null;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return iVar;
    }

    public static int f(TypedArray typedArray, int i10, int i11) {
        int resourceId = typedArray.getResourceId(i10, i11);
        return resourceId == -1 ? typedArray.getInt(i10, -1) : resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void g(Object obj, TypedArray typedArray, int i10, int i11) throws NumberFormatException {
        int dimensionPixelSize;
        if (obj == null) {
            return;
        }
        int i12 = typedArray.peekValue(i10).type;
        boolean z = true;
        int i13 = 0;
        if (i12 == 3) {
            String string = typedArray.getString(i10);
            if (string == null) {
                return;
            }
            int iIndexOf = string.indexOf(61);
            int length = string.length();
            if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                return;
            }
            String strSubstring = string.substring(0, iIndexOf);
            String strSubstring2 = string.substring(iIndexOf + 1);
            if (strSubstring2.length() > 0) {
                String strTrim = strSubstring.trim();
                String strTrim2 = strSubstring2.trim();
                if ("ratio".equalsIgnoreCase(strTrim)) {
                    if (obj instanceof e) {
                        e eVar = (e) obj;
                        if (i11 == 0) {
                            ((ViewGroup.MarginLayoutParams) eVar).width = 0;
                        } else {
                            ((ViewGroup.MarginLayoutParams) eVar).height = 0;
                        }
                        h(eVar, strTrim2);
                        return;
                    }
                    if (obj instanceof j) {
                        ((j) obj).f8358y = strTrim2;
                        return;
                    } else {
                        if (obj instanceof h) {
                            ((h) obj).c(5, strTrim2);
                            return;
                        }
                        return;
                    }
                }
                try {
                    if ("weight".equalsIgnoreCase(strTrim)) {
                        float f10 = Float.parseFloat(strTrim2);
                        if (obj instanceof e) {
                            e eVar2 = (e) obj;
                            if (i11 == 0) {
                                ((ViewGroup.MarginLayoutParams) eVar2).width = 0;
                                eVar2.H = f10;
                            } else {
                                ((ViewGroup.MarginLayoutParams) eVar2).height = 0;
                                eVar2.I = f10;
                            }
                        } else if (obj instanceof j) {
                            j jVar = (j) obj;
                            if (i11 == 0) {
                                jVar.f8323b = 0;
                                jVar.U = f10;
                            } else {
                                jVar.f8325c = 0;
                                jVar.T = f10;
                            }
                        } else if (obj instanceof h) {
                            h hVar = (h) obj;
                            if (i11 == 0) {
                                hVar.b(23, 0);
                                hVar.a(f10, 39);
                            } else {
                                hVar.b(21, 0);
                                hVar.a(f10, 40);
                            }
                        }
                    } else {
                        if (!"parent".equalsIgnoreCase(strTrim)) {
                            return;
                        }
                        float fMax = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(strTrim2)));
                        if (obj instanceof e) {
                            e eVar3 = (e) obj;
                            if (i11 == 0) {
                                ((ViewGroup.MarginLayoutParams) eVar3).width = 0;
                                eVar3.R = fMax;
                                eVar3.L = 2;
                            } else {
                                ((ViewGroup.MarginLayoutParams) eVar3).height = 0;
                                eVar3.S = fMax;
                                eVar3.M = 2;
                            }
                        } else if (obj instanceof j) {
                            j jVar2 = (j) obj;
                            if (i11 == 0) {
                                jVar2.f8323b = 0;
                                jVar2.f8328d0 = fMax;
                                jVar2.X = 2;
                            } else {
                                jVar2.f8325c = 0;
                                jVar2.f8330e0 = fMax;
                                jVar2.Y = 2;
                            }
                        } else if (obj instanceof h) {
                            h hVar2 = (h) obj;
                            if (i11 == 0) {
                                hVar2.b(23, 0);
                                hVar2.b(54, 2);
                            } else {
                                hVar2.b(21, 0);
                                hVar2.b(55, 2);
                            }
                        }
                    }
                    return;
                } catch (NumberFormatException unused) {
                    return;
                }
            }
            return;
        }
        if (i12 != 5) {
            dimensionPixelSize = typedArray.getInt(i10, 0);
            if (dimensionPixelSize != -4) {
                if (dimensionPixelSize != -3 && (dimensionPixelSize == -2 || dimensionPixelSize == -1)) {
                }
                z = false;
                if (obj instanceof e) {
                    e eVar4 = (e) obj;
                    if (i11 == 0) {
                        ((ViewGroup.MarginLayoutParams) eVar4).width = i13;
                        eVar4.W = z;
                        return;
                    } else {
                        ((ViewGroup.MarginLayoutParams) eVar4).height = i13;
                        eVar4.X = z;
                        return;
                    }
                }
                if (obj instanceof j) {
                    j jVar3 = (j) obj;
                    if (i11 == 0) {
                        jVar3.f8323b = i13;
                        jVar3.f8343l0 = z;
                        return;
                    } else {
                        jVar3.f8325c = i13;
                        jVar3.f8345m0 = z;
                        return;
                    }
                }
                if (obj instanceof h) {
                    h hVar3 = (h) obj;
                    if (i11 == 0) {
                        hVar3.b(23, i13);
                        hVar3.d(80, z);
                        return;
                    } else {
                        hVar3.b(21, i13);
                        hVar3.d(81, z);
                        return;
                    }
                }
                return;
            }
            i13 = -2;
            if (obj instanceof e) {
            }
        } else {
            dimensionPixelSize = typedArray.getDimensionPixelSize(i10, 0);
        }
        i13 = dimensionPixelSize;
        z = false;
        if (obj instanceof e) {
        }
    }

    public static void h(e eVar, String str) throws NumberFormatException {
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            int i10 = -1;
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                i10 = strSubstring.equalsIgnoreCase("W") ? 0 : strSubstring.equalsIgnoreCase("H") ? 1 : -1;
                i = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(58);
            try {
                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                    String strSubstring2 = str.substring(i);
                    if (strSubstring2.length() > 0) {
                        Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(i, iIndexOf2);
                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f10 = Float.parseFloat(strSubstring3);
                        float f11 = Float.parseFloat(strSubstring4);
                        if (f10 > 0.0f && f11 > 0.0f) {
                            if (i10 == 1) {
                                Math.abs(f11 / f10);
                            } else {
                                Math.abs(f10 / f11);
                            }
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        eVar.G = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void a(ConstraintLayout constraintLayout) throws IllegalAccessException, NoSuchMethodException, Resources.NotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int childCount = constraintLayout.getChildCount();
        HashMap map = this.f8391c;
        HashSet hashSet = new HashSet(map.keySet());
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            int id2 = childAt.getId();
            if (!map.containsKey(Integer.valueOf(id2))) {
                try {
                    childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                }
            } else {
                if (this.f8390b && id2 == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id2 != -1 && map.containsKey(Integer.valueOf(id2))) {
                    hashSet.remove(Integer.valueOf(id2));
                    i iVar = (i) map.get(Integer.valueOf(id2));
                    if (iVar != null) {
                        if (childAt instanceof a) {
                            j jVar = iVar.f8317d;
                            jVar.f8336h0 = 1;
                            a aVar = (a) childAt;
                            aVar.setId(id2);
                            aVar.setType(jVar.f8332f0);
                            aVar.setMargin(jVar.f8334g0);
                            aVar.setAllowsGoneWidget(jVar.f8347n0);
                            int[] iArr = jVar.f8338i0;
                            if (iArr != null) {
                                aVar.setReferencedIds(iArr);
                            } else {
                                String str = jVar.f8340j0;
                                if (str != null) {
                                    int[] iArrC = c(aVar, str);
                                    jVar.f8338i0 = iArrC;
                                    aVar.setReferencedIds(iArrC);
                                }
                            }
                        }
                        e eVar = (e) childAt.getLayoutParams();
                        eVar.a();
                        iVar.a(eVar);
                        HashMap map2 = iVar.f8319f;
                        Class<?> cls = childAt.getClass();
                        for (String strC : map2.keySet()) {
                            b bVar = (b) map2.get(strC);
                            if (!bVar.f8236a) {
                                strC = da.b.c("set", strC);
                            }
                            try {
                                switch (d0.f.c(bVar.f8237b)) {
                                    case 0:
                                        Class<?>[] clsArr = new Class[1];
                                        try {
                                            clsArr[0] = Integer.TYPE;
                                            cls.getMethod(strC, clsArr).invoke(childAt, Integer.valueOf(bVar.f8238c));
                                        } catch (IllegalAccessException e7) {
                                            e = e7;
                                            e.printStackTrace();
                                        } catch (NoSuchMethodException e10) {
                                            e = e10;
                                            e.getMessage();
                                        } catch (InvocationTargetException e11) {
                                            e = e11;
                                            e.printStackTrace();
                                        }
                                    case 1:
                                        cls.getMethod(strC, Float.TYPE).invoke(childAt, Float.valueOf(bVar.f8239d));
                                        break;
                                    case 2:
                                        cls.getMethod(strC, Integer.TYPE).invoke(childAt, Integer.valueOf(bVar.f8242g));
                                        break;
                                    case 3:
                                        Method method = cls.getMethod(strC, Drawable.class);
                                        ColorDrawable colorDrawable = new ColorDrawable();
                                        colorDrawable.setColor(bVar.f8242g);
                                        method.invoke(childAt, colorDrawable);
                                        break;
                                    case 4:
                                        cls.getMethod(strC, CharSequence.class).invoke(childAt, bVar.f8240e);
                                        break;
                                    case 5:
                                        cls.getMethod(strC, Boolean.TYPE).invoke(childAt, Boolean.valueOf(bVar.f8241f));
                                        break;
                                    case 6:
                                        cls.getMethod(strC, Float.TYPE).invoke(childAt, Float.valueOf(bVar.f8239d));
                                        break;
                                    case 7:
                                        cls.getMethod(strC, Integer.TYPE).invoke(childAt, Integer.valueOf(bVar.f8238c));
                                        break;
                                }
                            } catch (IllegalAccessException e12) {
                                e = e12;
                            } catch (NoSuchMethodException e13) {
                                e = e13;
                            } catch (InvocationTargetException e14) {
                                e = e14;
                            }
                        }
                        childAt.setLayoutParams(eVar);
                        l lVar = iVar.f8315b;
                        if (lVar.f8370b == 0) {
                            childAt.setVisibility(lVar.f8369a);
                        }
                        int i11 = Build.VERSION.SDK_INT;
                        childAt.setAlpha(lVar.f8371c);
                        m mVar = iVar.f8318e;
                        childAt.setRotation(mVar.f8374a);
                        childAt.setRotationX(mVar.f8375b);
                        childAt.setRotationY(mVar.f8376c);
                        childAt.setScaleX(mVar.f8377d);
                        childAt.setScaleY(mVar.f8378e);
                        if (mVar.f8381h != -1) {
                            if (((View) childAt.getParent()).findViewById(mVar.f8381h) != null) {
                                float bottom = (r10.getBottom() + r10.getTop()) / 2.0f;
                                float right = (r10.getRight() + r10.getLeft()) / 2.0f;
                                if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                    childAt.setPivotX(right - childAt.getLeft());
                                    childAt.setPivotY(bottom - childAt.getTop());
                                }
                            }
                        } else {
                            if (!Float.isNaN(mVar.f8379f)) {
                                childAt.setPivotX(mVar.f8379f);
                            }
                            if (!Float.isNaN(mVar.f8380g)) {
                                childAt.setPivotY(mVar.f8380g);
                            }
                        }
                        childAt.setTranslationX(mVar.f8382i);
                        childAt.setTranslationY(mVar.f8383j);
                        if (i11 >= 21) {
                            childAt.setTranslationZ(mVar.f8384k);
                            if (mVar.l) {
                                childAt.setElevation(mVar.f8385m);
                            }
                        }
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            i iVar2 = (i) map.get(num);
            if (iVar2 != null) {
                j jVar2 = iVar2.f8317d;
                if (jVar2.f8336h0 == 1) {
                    a aVar2 = new a(constraintLayout.getContext());
                    aVar2.setId(num.intValue());
                    int[] iArr2 = jVar2.f8338i0;
                    if (iArr2 != null) {
                        aVar2.setReferencedIds(iArr2);
                    } else {
                        String str2 = jVar2.f8340j0;
                        if (str2 != null) {
                            int[] iArrC2 = c(aVar2, str2);
                            jVar2.f8338i0 = iArrC2;
                            aVar2.setReferencedIds(iArrC2);
                        }
                    }
                    aVar2.setType(jVar2.f8332f0);
                    aVar2.setMargin(jVar2.f8334g0);
                    r rVar = ConstraintLayout.f1015s;
                    e eVar2 = new e(-2, -2);
                    aVar2.i();
                    iVar2.a(eVar2);
                    constraintLayout.addView(aVar2, eVar2);
                }
                if (jVar2.f8321a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    r rVar2 = ConstraintLayout.f1015s;
                    e eVar3 = new e(-2, -2);
                    iVar2.a(eVar3);
                    constraintLayout.addView(guideline, eVar3);
                }
            }
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = constraintLayout.getChildAt(i12);
            if (childAt2 instanceof c) {
                ((c) childAt2).e(constraintLayout);
            }
        }
    }

    public final void b(ConstraintLayout constraintLayout) {
        n nVar = this;
        int childCount = constraintLayout.getChildCount();
        HashMap map = nVar.f8391c;
        map.clear();
        int i10 = 0;
        while (i10 < childCount) {
            View childAt = constraintLayout.getChildAt(i10);
            e eVar = (e) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (nVar.f8390b && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!map.containsKey(Integer.valueOf(id2))) {
                map.put(Integer.valueOf(id2), new i());
            }
            i iVar = (i) map.get(Integer.valueOf(id2));
            if (iVar != null) {
                HashMap map2 = nVar.f8389a;
                HashMap map3 = new HashMap();
                Class<?> cls = childAt.getClass();
                for (String str : map2.keySet()) {
                    b bVar = (b) map2.get(str);
                    try {
                        if (str.equals("BackgroundColor")) {
                            map3.put(str, new b(bVar, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                        } else {
                            map3.put(str, new b(bVar, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                        }
                    } catch (IllegalAccessException e7) {
                        e7.printStackTrace();
                    } catch (NoSuchMethodException e10) {
                        e10.printStackTrace();
                    } catch (InvocationTargetException e11) {
                        e11.printStackTrace();
                    }
                }
                iVar.f8319f = map3;
                iVar.f8314a = id2;
                int i11 = eVar.f8259e;
                j jVar = iVar.f8317d;
                jVar.f8335h = i11;
                jVar.f8337i = eVar.f8261f;
                jVar.f8339j = eVar.f8263g;
                jVar.f8341k = eVar.f8265h;
                jVar.l = eVar.f8267i;
                jVar.f8344m = eVar.f8269j;
                jVar.f8346n = eVar.f8271k;
                jVar.f8348o = eVar.l;
                jVar.f8350p = eVar.f8274m;
                jVar.f8351q = eVar.f8276n;
                jVar.r = eVar.f8278o;
                jVar.f8352s = eVar.f8283s;
                jVar.f8353t = eVar.f8284t;
                jVar.f8354u = eVar.f8285u;
                jVar.f8355v = eVar.f8286v;
                jVar.f8356w = eVar.E;
                jVar.f8357x = eVar.F;
                jVar.f8358y = eVar.G;
                jVar.z = eVar.f8280p;
                jVar.A = eVar.f8282q;
                jVar.B = eVar.r;
                jVar.C = eVar.T;
                jVar.D = eVar.U;
                jVar.E = eVar.V;
                jVar.f8331f = eVar.f8255c;
                jVar.f8327d = eVar.f8251a;
                jVar.f8329e = eVar.f8253b;
                jVar.f8323b = ((ViewGroup.MarginLayoutParams) eVar).width;
                jVar.f8325c = ((ViewGroup.MarginLayoutParams) eVar).height;
                jVar.F = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
                jVar.G = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
                jVar.H = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                jVar.I = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                jVar.L = eVar.D;
                jVar.T = eVar.I;
                jVar.U = eVar.H;
                jVar.W = eVar.K;
                jVar.V = eVar.J;
                jVar.f8343l0 = eVar.W;
                jVar.f8345m0 = eVar.X;
                jVar.X = eVar.L;
                jVar.Y = eVar.M;
                jVar.Z = eVar.P;
                jVar.f8322a0 = eVar.Q;
                jVar.f8324b0 = eVar.N;
                jVar.f8326c0 = eVar.O;
                jVar.f8328d0 = eVar.R;
                jVar.f8330e0 = eVar.S;
                jVar.f8342k0 = eVar.Y;
                jVar.N = eVar.f8288x;
                jVar.P = eVar.z;
                jVar.M = eVar.f8287w;
                jVar.O = eVar.f8289y;
                jVar.R = eVar.A;
                jVar.Q = eVar.B;
                jVar.S = eVar.C;
                jVar.f8349o0 = eVar.Z;
                jVar.J = eVar.getMarginEnd();
                jVar.K = eVar.getMarginStart();
                int visibility = childAt.getVisibility();
                l lVar = iVar.f8315b;
                lVar.f8369a = visibility;
                int i12 = Build.VERSION.SDK_INT;
                lVar.f8371c = childAt.getAlpha();
                float rotation = childAt.getRotation();
                m mVar = iVar.f8318e;
                mVar.f8374a = rotation;
                mVar.f8375b = childAt.getRotationX();
                mVar.f8376c = childAt.getRotationY();
                mVar.f8377d = childAt.getScaleX();
                mVar.f8378e = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    mVar.f8379f = pivotX;
                    mVar.f8380g = pivotY;
                }
                mVar.f8382i = childAt.getTranslationX();
                mVar.f8383j = childAt.getTranslationY();
                if (i12 >= 21) {
                    mVar.f8384k = childAt.getTranslationZ();
                    if (mVar.l) {
                        mVar.f8385m = childAt.getElevation();
                    }
                }
                if (childAt instanceof a) {
                    a aVar = (a) childAt;
                    jVar.f8347n0 = aVar.getAllowsGoneWidget();
                    jVar.f8338i0 = aVar.getReferencedIds();
                    jVar.f8332f0 = aVar.getType();
                    jVar.f8334g0 = aVar.getMargin();
                }
            }
            i10++;
            nVar = this;
        }
    }

    public final void e(Context context, int i10) throws XmlPullParserException, Resources.NotFoundException, IOException, NumberFormatException {
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    i iVarD = d(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        iVarD.f8317d.f8321a = true;
                    }
                    this.f8391c.put(Integer.valueOf(iVarD.f8314a), iVarD);
                }
            }
        } catch (IOException e7) {
            e7.printStackTrace();
        } catch (XmlPullParserException e10) {
            e10.printStackTrace();
        }
    }
}
