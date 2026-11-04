package t6;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import com.yunpan.appmanage.R;
import g7.l;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final b f14815a;

    /* renamed from: b, reason: collision with root package name */
    public final b f14816b = new b();

    /* renamed from: c, reason: collision with root package name */
    public final float f14817c;

    /* renamed from: d, reason: collision with root package name */
    public final float f14818d;

    /* renamed from: e, reason: collision with root package name */
    public final float f14819e;

    /* renamed from: f, reason: collision with root package name */
    public final float f14820f;

    /* renamed from: g, reason: collision with root package name */
    public final float f14821g;

    /* renamed from: h, reason: collision with root package name */
    public final float f14822h;

    /* renamed from: i, reason: collision with root package name */
    public final int f14823i;

    /* renamed from: j, reason: collision with root package name */
    public final int f14824j;

    /* renamed from: k, reason: collision with root package name */
    public final int f14825k;

    public c(Context context) throws XmlPullParserException, Resources.NotFoundException, IOException {
        AttributeSet attributeSet;
        int styleAttribute;
        int next;
        b bVar = new b();
        int i10 = bVar.f14794a;
        if (i10 != 0) {
            try {
                XmlResourceParser xml = context.getResources().getXml(i10);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (!TextUtils.equals(xml.getName(), "badge")) {
                    throw new XmlPullParserException("Must have a <" + ((Object) "badge") + "> start tag");
                }
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                styleAttribute = attributeSetAsAttributeSet.getStyleAttribute();
                attributeSet = attributeSetAsAttributeSet;
            } catch (IOException | XmlPullParserException e7) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(g.b.e(i10, new StringBuilder("Can't load badge resource ID #0x")));
                notFoundException.initCause(e7);
                throw notFoundException;
            }
        } else {
            attributeSet = null;
            styleAttribute = 0;
        }
        TypedArray typedArrayG = l.g(context, attributeSet, q6.a.f13030a, R.attr.badgeStyle, styleAttribute == 0 ? R.style.Widget_MaterialComponents_Badge : styleAttribute, new int[0]);
        Resources resources = context.getResources();
        this.f14817c = typedArrayG.getDimensionPixelSize(4, -1);
        this.f14823i = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.f14824j = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.f14818d = typedArrayG.getDimensionPixelSize(14, -1);
        this.f14819e = typedArrayG.getDimension(12, resources.getDimension(R.dimen.m3_badge_size));
        this.f14821g = typedArrayG.getDimension(17, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f14820f = typedArrayG.getDimension(3, resources.getDimension(R.dimen.m3_badge_size));
        this.f14822h = typedArrayG.getDimension(13, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f14825k = typedArrayG.getInt(24, 1);
        b bVar2 = this.f14816b;
        int i11 = bVar.f14802i;
        bVar2.f14802i = i11 == -2 ? 255 : i11;
        int i12 = bVar.f14804k;
        if (i12 != -2) {
            bVar2.f14804k = i12;
        } else if (typedArrayG.hasValue(23)) {
            this.f14816b.f14804k = typedArrayG.getInt(23, 0);
        } else {
            this.f14816b.f14804k = -1;
        }
        String str = bVar.f14803j;
        if (str != null) {
            this.f14816b.f14803j = str;
        } else if (typedArrayG.hasValue(7)) {
            this.f14816b.f14803j = typedArrayG.getString(7);
        }
        b bVar3 = this.f14816b;
        bVar3.f14807p = bVar.f14807p;
        CharSequence charSequence = bVar.f14808q;
        bVar3.f14808q = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        b bVar4 = this.f14816b;
        int i13 = bVar.r;
        bVar4.r = i13 == 0 ? R.plurals.mtrl_badge_content_description : i13;
        int i14 = bVar.f14809s;
        bVar4.f14809s = i14 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i14;
        Boolean bool = bVar.f14811v;
        bVar4.f14811v = Boolean.valueOf(bool == null || bool.booleanValue());
        b bVar5 = this.f14816b;
        int i15 = bVar.l;
        bVar5.l = i15 == -2 ? typedArrayG.getInt(21, -2) : i15;
        b bVar6 = this.f14816b;
        int i16 = bVar.f14805m;
        bVar6.f14805m = i16 == -2 ? typedArrayG.getInt(22, -2) : i16;
        b bVar7 = this.f14816b;
        Integer num = bVar.f14798e;
        bVar7.f14798e = Integer.valueOf(num == null ? typedArrayG.getResourceId(5, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num.intValue());
        b bVar8 = this.f14816b;
        Integer num2 = bVar.f14799f;
        bVar8.f14799f = Integer.valueOf(num2 == null ? typedArrayG.getResourceId(6, 0) : num2.intValue());
        b bVar9 = this.f14816b;
        Integer num3 = bVar.f14800g;
        bVar9.f14800g = Integer.valueOf(num3 == null ? typedArrayG.getResourceId(15, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num3.intValue());
        b bVar10 = this.f14816b;
        Integer num4 = bVar.f14801h;
        bVar10.f14801h = Integer.valueOf(num4 == null ? typedArrayG.getResourceId(16, 0) : num4.intValue());
        b bVar11 = this.f14816b;
        Integer num5 = bVar.f14795b;
        bVar11.f14795b = Integer.valueOf(num5 == null ? com.bumptech.glide.c.w(context, typedArrayG, 1).getDefaultColor() : num5.intValue());
        b bVar12 = this.f14816b;
        Integer num6 = bVar.f14797d;
        bVar12.f14797d = Integer.valueOf(num6 == null ? typedArrayG.getResourceId(8, R.style.TextAppearance_MaterialComponents_Badge) : num6.intValue());
        Integer num7 = bVar.f14796c;
        if (num7 != null) {
            this.f14816b.f14796c = num7;
        } else if (typedArrayG.hasValue(9)) {
            this.f14816b.f14796c = Integer.valueOf(com.bumptech.glide.c.w(context, typedArrayG, 9).getDefaultColor());
        } else {
            int iIntValue = this.f14816b.f14797d.intValue();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iIntValue, q6.a.A);
            typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
            ColorStateList colorStateListW = com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 3);
            com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 4);
            com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 5);
            typedArrayObtainStyledAttributes.getInt(2, 0);
            typedArrayObtainStyledAttributes.getInt(1, 1);
            int i17 = typedArrayObtainStyledAttributes.hasValue(12) ? 12 : 10;
            typedArrayObtainStyledAttributes.getResourceId(i17, 0);
            typedArrayObtainStyledAttributes.getString(i17);
            typedArrayObtainStyledAttributes.getBoolean(14, false);
            com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 6);
            typedArrayObtainStyledAttributes.getFloat(7, 0.0f);
            typedArrayObtainStyledAttributes.getFloat(8, 0.0f);
            typedArrayObtainStyledAttributes.getFloat(9, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
            if (Build.VERSION.SDK_INT >= 21) {
                TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iIntValue, q6.a.r);
                typedArrayObtainStyledAttributes2.hasValue(0);
                typedArrayObtainStyledAttributes2.getFloat(0, 0.0f);
                typedArrayObtainStyledAttributes2.recycle();
            }
            this.f14816b.f14796c = Integer.valueOf(colorStateListW.getDefaultColor());
        }
        b bVar13 = this.f14816b;
        Integer num8 = bVar.f14810t;
        bVar13.f14810t = Integer.valueOf(num8 == null ? typedArrayG.getInt(2, 8388661) : num8.intValue());
        b bVar14 = this.f14816b;
        Integer num9 = bVar.f14812w;
        bVar14.f14812w = Integer.valueOf(num9 == null ? typedArrayG.getDimensionPixelSize(11, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding)) : num9.intValue());
        b bVar15 = this.f14816b;
        Integer num10 = bVar.f14813x;
        bVar15.f14813x = Integer.valueOf(num10 == null ? typedArrayG.getDimensionPixelSize(10, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding)) : num10.intValue());
        b bVar16 = this.f14816b;
        Integer num11 = bVar.f14814y;
        bVar16.f14814y = Integer.valueOf(num11 == null ? typedArrayG.getDimensionPixelOffset(18, 0) : num11.intValue());
        b bVar17 = this.f14816b;
        Integer num12 = bVar.z;
        bVar17.z = Integer.valueOf(num12 == null ? typedArrayG.getDimensionPixelOffset(25, 0) : num12.intValue());
        b bVar18 = this.f14816b;
        Integer num13 = bVar.A;
        bVar18.A = Integer.valueOf(num13 == null ? typedArrayG.getDimensionPixelOffset(19, bVar18.f14814y.intValue()) : num13.intValue());
        b bVar19 = this.f14816b;
        Integer num14 = bVar.B;
        bVar19.B = Integer.valueOf(num14 == null ? typedArrayG.getDimensionPixelOffset(26, bVar19.z.intValue()) : num14.intValue());
        b bVar20 = this.f14816b;
        Integer num15 = bVar.E;
        bVar20.E = Integer.valueOf(num15 == null ? typedArrayG.getDimensionPixelOffset(20, 0) : num15.intValue());
        b bVar21 = this.f14816b;
        Integer num16 = bVar.C;
        bVar21.C = Integer.valueOf(num16 == null ? 0 : num16.intValue());
        b bVar22 = this.f14816b;
        Integer num17 = bVar.D;
        bVar22.D = Integer.valueOf(num17 == null ? 0 : num17.intValue());
        b bVar23 = this.f14816b;
        Boolean bool2 = bVar.F;
        bVar23.F = Boolean.valueOf(bool2 == null ? typedArrayG.getBoolean(0, false) : bool2.booleanValue());
        typedArrayG.recycle();
        Locale locale = bVar.f14806n;
        if (locale == null) {
            this.f14816b.f14806n = Build.VERSION.SDK_INT >= 24 ? Locale.getDefault(Locale.Category.FORMAT) : Locale.getDefault();
        } else {
            this.f14816b.f14806n = locale;
        }
        this.f14815a = bVar;
    }
}
