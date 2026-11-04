package v0;

import android.text.SpannableStringBuilder;
import h5.d0;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    public static final String f16306b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f16307c;

    /* renamed from: d, reason: collision with root package name */
    public static final b f16308d;

    /* renamed from: e, reason: collision with root package name */
    public static final b f16309e;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f16310a;

    static {
        d0 d0Var = i.f16320c;
        f16306b = Character.toString((char) 8206);
        f16307c = Character.toString((char) 8207);
        f16308d = new b(false);
        f16309e = new b(true);
    }

    public b(boolean z) {
        d0 d0Var = i.f16318a;
        this.f16310a = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0068, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0070, code lost:
    
        if (r1 != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
    
        if (r2 == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
    
        if (r0.f16304c <= 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007f, code lost:
    
        switch(r0.a()) {
            case 14: goto L66;
            case 15: goto L66;
            case 16: goto L65;
            case 17: goto L65;
            case 18: goto L64;
            default: goto L70;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0083, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0086, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0089, code lost:
    
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008c, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:?, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:?, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(CharSequence charSequence) {
        byte directionality;
        a aVar = new a(charSequence);
        aVar.f16304c = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = aVar.f16304c;
            if (i13 < aVar.f16303b && i10 == 0) {
                CharSequence charSequence2 = aVar.f16302a;
                char cCharAt = charSequence2.charAt(i13);
                aVar.f16305d = cCharAt;
                if (Character.isHighSurrogate(cCharAt)) {
                    int iCodePointAt = Character.codePointAt(charSequence2, aVar.f16304c);
                    aVar.f16304c = Character.charCount(iCodePointAt) + aVar.f16304c;
                    directionality = Character.getDirectionality(iCodePointAt);
                } else {
                    aVar.f16304c++;
                    char c7 = aVar.f16305d;
                    directionality = c7 < 1792 ? a.f16301e[c7] : Character.getDirectionality(c7);
                }
                if (directionality != 0) {
                    if (directionality == 1 || directionality == 2) {
                        if (i12 == 0) {
                        }
                    } else if (directionality != 9) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                i12++;
                                i11 = -1;
                                continue;
                            case 16:
                            case 17:
                                i12++;
                                i11 = 1;
                                continue;
                            case 18:
                                i12--;
                                i11 = 0;
                                continue;
                        }
                    }
                } else if (i12 == 0) {
                }
                i10 = i12;
            }
        }
        return -1;
    }

    public static int b(CharSequence charSequence) {
        a aVar = new a(charSequence);
        aVar.f16304c = aVar.f16303b;
        int i10 = 0;
        int i11 = 0;
        while (aVar.f16304c > 0) {
            byte bA = aVar.a();
            if (bA != 0) {
                if (bA == 1 || bA == 2) {
                    if (i10 == 0) {
                        return 1;
                    }
                    if (i11 == 0) {
                        i11 = i10;
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i11 == i10) {
                                return -1;
                            }
                            i10--;
                            break;
                        case 16:
                        case 17:
                            if (i11 == i10) {
                                return 1;
                            }
                            i10--;
                            break;
                        case 18:
                            i10++;
                            break;
                        default:
                            if (i11 != 0) {
                                break;
                            } else {
                                i11 = i10;
                                break;
                            }
                    }
                } else {
                    continue;
                }
            } else {
                if (i10 == 0) {
                    return -1;
                }
                if (i11 == 0) {
                    i11 = i10;
                }
            }
        }
        return 0;
    }

    public final SpannableStringBuilder c(CharSequence charSequence) {
        d0 d0Var = i.f16320c;
        if (charSequence == null) {
            return null;
        }
        boolean zD = d0Var.d(charSequence.length(), charSequence);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean zD2 = (zD ? i.f16319b : i.f16318a).d(charSequence.length(), charSequence);
        String str = "";
        String str2 = f16307c;
        String str3 = f16306b;
        boolean z = this.f16310a;
        spannableStringBuilder.append((CharSequence) ((z || !(zD2 || a(charSequence) == 1)) ? (!z || (zD2 && a(charSequence) != -1)) ? "" : str2 : str3));
        if (zD != z) {
            spannableStringBuilder.append(zD ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        boolean zD3 = (zD ? i.f16319b : i.f16318a).d(charSequence.length(), charSequence);
        if (!z && (zD3 || b(charSequence) == 1)) {
            str = str3;
        } else if (z && (!zD3 || b(charSequence) == -1)) {
            str = str2;
        }
        spannableStringBuilder.append((CharSequence) str);
        return spannableStringBuilder;
    }
}
