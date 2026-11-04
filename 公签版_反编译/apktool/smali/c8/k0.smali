.class public final Lc8/k0;
.super Lz7/a0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz7/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b(Lh8/a;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lh8/a;->e0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lh8/a;->a0()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lb8/j;

    .line 15
    .line 16
    invoke-virtual {p1}, Lh8/a;->c0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Lb8/j;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object p1, v0

    .line 24
    :goto_0
    return-object p1
.end method

.method public final c(Lh8/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lb8/j;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lh8/b;->W(Ljava/lang/Number;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
