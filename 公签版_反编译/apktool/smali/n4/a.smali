.class public abstract synthetic Ln4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/apksig/internal/compat/IntConsumerCompat;Lcom/android/apksig/internal/compat/IntConsumerCompat;)Lcom/android/apksig/internal/compat/IntConsumerCompat;
    .locals 2

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lma/b;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1, p1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static synthetic b(Lcom/android/apksig/internal/compat/IntConsumerCompat;Lcom/android/apksig/internal/compat/IntConsumerCompat;I)V
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Lcom/android/apksig/internal/compat/IntConsumerCompat;->accept(I)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Lcom/android/apksig/internal/compat/IntConsumerCompat;->accept(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
