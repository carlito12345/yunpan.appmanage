.class public final Ld4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/room/s;

.field public final d:Lie/d;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/s;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ld4/g;->a:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Ld4/g;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Ld4/g;->c:Landroidx/room/s;

    .line 14
    .line 15
    new-instance p1, Landroidx/lifecycle/m0;

    .line 16
    .line 17
    const/4 p2, 0x2

    .line 18
    invoke-direct {p1, p2, p0}, Landroidx/lifecycle/m0;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Lie/d;

    .line 22
    .line 23
    invoke-direct {p2, p1}, Lie/d;-><init>(Lte/a;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Ld4/g;->d:Lie/d;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/g;->d:Lie/d;

    .line 2
    .line 3
    iget-object v0, v0, Lie/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v1, Lie/e;->b:Lie/e;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ld4/g;->d:Lie/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Lie/d;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ld4/f;

    .line 16
    .line 17
    invoke-virtual {v0}, Ld4/f;->close()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final r()Lc4/a;
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/g;->d:Lie/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lie/d;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld4/f;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ld4/f;->r(Z)Lc4/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
