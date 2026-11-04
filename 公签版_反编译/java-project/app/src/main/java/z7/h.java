package z7;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final a f19444a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ h[] f19445b;

    static {
        a aVar = new a();
        f19444a = aVar;
        f19445b = new h[]{aVar, new h() { // from class: z7.b
            @Override // z7.h
            public final String b(Field field) {
                return h.c(field.getName());
            }
        }, new h() { // from class: z7.c
            @Override // z7.h
            public final String b(Field field) {
                return h.c(h.a(field.getName(), ' '));
            }
        }, new h() { // from class: z7.d
            @Override // z7.h
            public final String b(Field field) {
                return h.a(field.getName(), '_').toUpperCase(Locale.ENGLISH);
            }
        }, new h() { // from class: z7.e
            @Override // z7.h
            public final String b(Field field) {
                return h.a(field.getName(), '_').toLowerCase(Locale.ENGLISH);
            }
        }, new h() { // from class: z7.f
            @Override // z7.h
            public final String b(Field field) {
                return h.a(field.getName(), '-').toLowerCase(Locale.ENGLISH);
            }
        }, new h() { // from class: z7.g
            @Override // z7.h
            public final String b(Field field) {
                return h.a(field.getName(), '.').toLowerCase(Locale.ENGLISH);
            }
        }};
    }

    public h(String str, int i10) {
    }

    public static String a(String str, char c7) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isUpperCase(cCharAt) && sb2.length() != 0) {
                sb2.append(c7);
            }
            sb2.append(cCharAt);
        }
        return sb2.toString();
    }

    public static String c(String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isLetter(cCharAt)) {
                if (Character.isUpperCase(cCharAt)) {
                    return str;
                }
                char upperCase = Character.toUpperCase(cCharAt);
                if (i10 == 0) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(upperCase);
                    return android.support.v4.media.session.a.p(str, 1, sb2);
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str.substring(0, i10));
                sb3.append(upperCase);
                return android.support.v4.media.session.a.p(str, i10 + 1, sb3);
            }
        }
        return str;
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) f19445b.clone();
    }

    public abstract String b(Field field);
}
