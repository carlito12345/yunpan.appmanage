package com.hierynomus.asn1.annotations;

import com.hierynomus.asn1.types.primitive.ASN1Integer;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes.dex */
public interface ASN1 {

    @Target({ElementType.FIELD, ElementType.METHOD})
    @ParsedBy(parser = ASN1Integer.Parser.class)
    @Retention(RetentionPolicy.RUNTIME)
    public @interface ASN1Integer {
        String defaultValue() default "0";
    }
}
