package com.android.apksig.internal.asn1;

import com.android.apksig.internal.asn1.Asn1BerParser;
import com.android.apksig.internal.asn1.Asn1DerEncoder;
import java.util.Comparator;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3268a;

    public /* synthetic */ a(int i10) {
        this.f3268a = i10;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f3268a) {
            case 0:
                return Asn1BerParser.lambda$parseSequence$0((Asn1BerParser.AnnotatedField) obj, (Asn1BerParser.AnnotatedField) obj2);
            default:
                return Asn1DerEncoder.lambda$toSequence$0((Asn1DerEncoder.AnnotatedField) obj, (Asn1DerEncoder.AnnotatedField) obj2);
        }
    }
}
