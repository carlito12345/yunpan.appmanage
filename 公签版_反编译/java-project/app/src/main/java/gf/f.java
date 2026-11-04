package gf;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX WARN: Method from annotation default annotation not found: elementType */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface f {
    h cls() default h.AUTOMATIC;

    int index() default 0;

    boolean optional() default false;

    int tagNumber() default -1;

    i tagging() default i.NORMAL;

    j type();
}
