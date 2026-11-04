.class public final Lua/g4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/b;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/g4;->a:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(II)V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/g4;->a:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->F:Lx9/r3;

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Lc6/g;->y(II)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lz7/o;

    .line 14
    .line 15
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lz7/o;->l(I)Lz7/p;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Lz7/o;->n(I)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    :goto_0
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 35
    .line 36
    iget-object v3, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ge p1, v3, :cond_1

    .line 43
    .line 44
    if-ne p1, p2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lz7/o;->k(Lz7/p;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 50
    .line 51
    invoke-virtual {v3, p1}, Lz7/o;->l(I)Lz7/p;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Lz7/o;->k(Lz7/p;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 p1, p1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 62
    .line 63
    iget-object p1, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-ne p1, p2, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lz7/o;->k(Lz7/p;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 75
    .line 76
    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/g4;->a:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method
