.class public final Lua/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/b;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivitySidebar;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivitySidebar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/p6;->a:Lcom/yunpan/appmanage/ui/ActivitySidebar;

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
    iget-object v0, p0, Lua/p6;->a:Lcom/yunpan/appmanage/ui/ActivitySidebar;

    .line 2
    .line 3
    iget v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->M:I

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->O:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->value_str2:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v2, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->M:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget v3, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->M:I

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Lz7/o;->n(I)V

    .line 39
    .line 40
    .line 41
    iget-object v3, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne p1, v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lz7/o;->k(Lz7/p;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v4, Lz7/o;

    .line 54
    .line 55
    invoke-direct {v4}, Lz7/o;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-ge v5, v6, :cond_3

    .line 64
    .line 65
    if-ne v5, p1, :cond_2

    .line 66
    .line 67
    invoke-virtual {v4, v2}, Lz7/o;->k(Lz7/p;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {v1, v5}, Lz7/o;->l(I)Lz7/p;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v4, v6}, Lz7/o;->k(Lz7/p;)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 81
    .line 82
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->O:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->value_str2:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, v1, v4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    iget-object p1, v0, Lda/g;->A:Lda/g;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 100
    .line 101
    invoke-static {p1, v0}, Lq4/a;->X(Landroid/content/Context;Lz7/s;)V

    .line 102
    .line 103
    .line 104
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
    iget-object v0, p0, Lua/p6;->a:Lcom/yunpan/appmanage/ui/ActivitySidebar;

    .line 2
    .line 3
    iput p1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->M:I

    .line 4
    .line 5
    return-void
.end method
