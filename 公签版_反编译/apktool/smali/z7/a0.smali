.class public abstract Lz7/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lz7/z;
    .locals 1

    .line 1
    instance-of v0, p0, Lz7/z;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lz7/z;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lz7/z;-><init>(Lz7/a0;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    check-cast v0, Lz7/z;

    .line 13
    .line 14
    return-object v0
.end method

.method public abstract b(Lh8/a;)Ljava/lang/Object;
.end method

.method public abstract c(Lh8/b;Ljava/lang/Object;)V
.end method
