package ue;

/* loaded from: classes.dex */
public final class h {
    public static String a(c cVar) {
        String string = cVar.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }
}
