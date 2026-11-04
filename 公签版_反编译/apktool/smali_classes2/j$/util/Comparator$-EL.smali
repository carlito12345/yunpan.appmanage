.class public final synthetic Lj$/util/Comparator$-EL;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Comparator;Ljava/util/Comparator;)Lj$/util/c;
    .locals 2

    check-cast p0, Lj$/util/d;

    check-cast p0, Lj$/util/e;

    .line 214
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v0, Lj$/util/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/c;-><init>(Ljava/util/Comparator;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static reversed(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1

    instance-of v0, p0, Lj$/util/d;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/d;

    check-cast p0, Lj$/util/e;

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    .line 185
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method
