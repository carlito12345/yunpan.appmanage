.class public final Lua/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/b;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityFloatButton;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/y1;->a:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lua/y1;->a:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    .line 2
    .line 3
    iget v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->L:I

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 9
    .line 10
    iget v2, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->D:I

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v2, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->L:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget v3, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->L:I

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Lz7/o;->n(I)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne p1, v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lz7/o;->k(Lz7/p;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v4, Lz7/o;

    .line 48
    .line 49
    invoke-direct {v4}, Lz7/o;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ge v5, v6, :cond_3

    .line 58
    .line 59
    if-ne v5, p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v4, v2}, Lz7/o;->k(Lz7/p;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v1, v5}, Lz7/o;->l(I)Lz7/p;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v4, v6}, Lz7/o;->k(Lz7/p;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 75
    .line 76
    iget v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->D:I

    .line 77
    .line 78
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v1, v4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    iget-object p1, v0, Lda/g;->A:Lda/g;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 88
    .line 89
    invoke-static {p1, v0}, Lq4/a;->O(Landroid/content/Context;Lz7/s;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final b(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lua/y1;->a:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    .line 2
    .line 3
    iput p1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->L:I

    .line 4
    .line 5
    return-void
.end method
