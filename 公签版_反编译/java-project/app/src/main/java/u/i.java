package u;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import org.xmlpull.v1.XmlPullParserException;
import w.n1;

/* loaded from: classes.dex */
public final class i extends MenuInflater {

    /* renamed from: e, reason: collision with root package name */
    public static final Class[] f15145e;

    /* renamed from: f, reason: collision with root package name */
    public static final Class[] f15146f;

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f15147a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f15148b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f15149c;

    /* renamed from: d, reason: collision with root package name */
    public Object f15150d;

    static {
        Class[] clsArr = {Context.class};
        f15145e = clsArr;
        f15146f = clsArr;
    }

    public i(Context context) {
        super(context);
        this.f15149c = context;
        Object[] objArr = {context};
        this.f15147a = objArr;
        this.f15148b = objArr;
    }

    public static Object a(Context context) {
        return (!(context instanceof Activity) && (context instanceof ContextWrapper)) ? a(((ContextWrapper) context).getBaseContext()) : context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v59 */
    public final void b(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        ?? r4;
        int i10;
        ColorStateList colorStateList;
        int resourceId;
        h hVar = new h(this, menu);
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            r4 = 1;
            i10 = 2;
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlResourceParser.next();
            } else {
                eventType = xmlResourceParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z = false;
        boolean z4 = false;
        String str = null;
        while (!z) {
            if (eventType == r4) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType == i10) {
                if (!z4) {
                    String name2 = xmlResourceParser.getName();
                    boolean zEquals = name2.equals("group");
                    i iVar = hVar.E;
                    if (zEquals) {
                        TypedArray typedArrayObtainStyledAttributes = iVar.f15149c.obtainStyledAttributes(attributeSet, p.a.f12529p);
                        hVar.f15123b = typedArrayObtainStyledAttributes.getResourceId(r4, 0);
                        hVar.f15124c = typedArrayObtainStyledAttributes.getInt(3, 0);
                        hVar.f15125d = typedArrayObtainStyledAttributes.getInt(4, 0);
                        hVar.f15126e = typedArrayObtainStyledAttributes.getInt(5, 0);
                        hVar.f15127f = typedArrayObtainStyledAttributes.getBoolean(2, r4);
                        hVar.f15128g = typedArrayObtainStyledAttributes.getBoolean(0, r4);
                        typedArrayObtainStyledAttributes.recycle();
                    } else if (name2.equals("item")) {
                        Context context = iVar.f15149c;
                        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, p.a.f12530q);
                        hVar.f15130i = typedArrayObtainStyledAttributes2.getResourceId(2, 0);
                        hVar.f15131j = (typedArrayObtainStyledAttributes2.getInt(5, hVar.f15124c) & (-65536)) | (typedArrayObtainStyledAttributes2.getInt(6, hVar.f15125d) & 65535);
                        hVar.f15132k = typedArrayObtainStyledAttributes2.getText(7);
                        hVar.l = typedArrayObtainStyledAttributes2.getText(8);
                        hVar.f15133m = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
                        String string = typedArrayObtainStyledAttributes2.getString(9);
                        hVar.f15134n = string == null ? (char) 0 : string.charAt(0);
                        hVar.f15135o = typedArrayObtainStyledAttributes2.getInt(16, 4096);
                        String string2 = typedArrayObtainStyledAttributes2.getString(10);
                        hVar.f15136p = string2 == null ? (char) 0 : string2.charAt(0);
                        hVar.f15137q = typedArrayObtainStyledAttributes2.getInt(20, 4096);
                        if (typedArrayObtainStyledAttributes2.hasValue(11)) {
                            hVar.r = typedArrayObtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                        } else {
                            hVar.r = hVar.f15126e;
                        }
                        hVar.f15138s = typedArrayObtainStyledAttributes2.getBoolean(3, false);
                        hVar.f15139t = typedArrayObtainStyledAttributes2.getBoolean(4, hVar.f15127f);
                        hVar.f15140u = typedArrayObtainStyledAttributes2.getBoolean(1, hVar.f15128g);
                        hVar.f15141v = typedArrayObtainStyledAttributes2.getInt(21, -1);
                        hVar.f15144y = typedArrayObtainStyledAttributes2.getString(12);
                        hVar.f15142w = typedArrayObtainStyledAttributes2.getResourceId(13, 0);
                        hVar.f15143x = typedArrayObtainStyledAttributes2.getString(15);
                        String string3 = typedArrayObtainStyledAttributes2.getString(14);
                        if (string3 != null && hVar.f15142w == 0 && hVar.f15143x == null) {
                            hVar.z = (v.n) hVar.a(string3, f15146f, iVar.f15148b);
                        } else {
                            hVar.z = null;
                        }
                        hVar.A = typedArrayObtainStyledAttributes2.getText(17);
                        hVar.B = typedArrayObtainStyledAttributes2.getText(22);
                        if (typedArrayObtainStyledAttributes2.hasValue(19)) {
                            hVar.D = n1.b(typedArrayObtainStyledAttributes2.getInt(19, -1), hVar.D);
                        } else {
                            hVar.D = null;
                        }
                        if (typedArrayObtainStyledAttributes2.hasValue(18)) {
                            if (!typedArrayObtainStyledAttributes2.hasValue(18) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = n0.g.d(context, resourceId)) == null) {
                                colorStateList = typedArrayObtainStyledAttributes2.getColorStateList(18);
                            }
                            hVar.C = colorStateList;
                        } else {
                            hVar.C = null;
                        }
                        typedArrayObtainStyledAttributes2.recycle();
                        hVar.f15129h = false;
                    } else if (name2.equals("menu")) {
                        hVar.f15129h = true;
                        SubMenu subMenuAddSubMenu = hVar.f15122a.addSubMenu(hVar.f15123b, hVar.f15130i, hVar.f15131j, hVar.f15132k);
                        hVar.b(subMenuAddSubMenu.getItem());
                        b(xmlResourceParser, attributeSet, subMenuAddSubMenu);
                    } else {
                        str = name2;
                        z4 = true;
                    }
                }
                eventType = xmlResourceParser.next();
                r4 = 1;
                i10 = 2;
            } else if (eventType == 3) {
                String name3 = xmlResourceParser.getName();
                if (z4 && name3.equals(str)) {
                    z4 = false;
                    str = null;
                } else if (name3.equals("group")) {
                    hVar.f15123b = 0;
                    hVar.f15124c = 0;
                    hVar.f15125d = 0;
                    hVar.f15126e = 0;
                    hVar.f15127f = r4;
                    hVar.f15128g = r4;
                } else if (name3.equals("item")) {
                    if (!hVar.f15129h) {
                        v.n nVar = hVar.z;
                        if (nVar == null || !nVar.f16278a.hasSubMenu()) {
                            hVar.f15129h = r4;
                            hVar.b(hVar.f15122a.add(hVar.f15123b, hVar.f15130i, hVar.f15131j, hVar.f15132k));
                        } else {
                            hVar.f15129h = r4;
                            hVar.b(hVar.f15122a.addSubMenu(hVar.f15123b, hVar.f15130i, hVar.f15131j, hVar.f15132k).getItem());
                        }
                    }
                } else if (name3.equals("menu")) {
                    z = true;
                }
                eventType = xmlResourceParser.next();
                r4 = 1;
                i10 = 2;
            }
            eventType = xmlResourceParser.next();
            r4 = 1;
            i10 = 2;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i10, Menu menu) {
        if (!(menu instanceof v.k)) {
            super.inflate(i10, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f15149c.getResources().getLayout(i10);
                    b(layout, Xml.asAttributeSet(layout), menu);
                    layout.close();
                } catch (IOException e7) {
                    throw new InflateException("Error inflating menu XML", e7);
                }
            } catch (XmlPullParserException e10) {
                throw new InflateException("Error inflating menu XML", e10);
            }
        } catch (Throwable th2) {
            if (layout != null) {
                layout.close();
            }
            throw th2;
        }
    }
}
