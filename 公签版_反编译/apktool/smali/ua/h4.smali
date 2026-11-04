.class public final Lua/h4;
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
    iput-object p1, p0, Lua/h4;->a:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

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
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lz7/o;

    .line 7
    .line 8
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lua/h4;->a:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 14
    .line 15
    iget v3, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->N:I

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lz7/o;->l(I)Lz7/p;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 26
    .line 27
    iget v4, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->N:I

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lz7/o;->n(I)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_0
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 34
    .line 35
    iget-object v4, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ge v3, v4, :cond_1

    .line 42
    .line 43
    if-ne v3, p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lz7/o;->k(Lz7/p;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 49
    .line 50
    invoke-virtual {v4, v3}, Lz7/o;->l(I)Lz7/p;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v0, v4}, Lz7/o;->k(Lz7/p;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 61
    .line 62
    iget-object v3, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-ne v3, p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lz7/o;->k(Lz7/p;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iput-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 74
    .line 75
    return-void
.end method

.method public final b(II)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/h4;->a:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->D:Lx9/r3;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lc6/g;->y(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/h4;->a:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 7
    .line 8
    iput p1, v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->N:I

    .line 9
    .line 10
    return-void
.end method
