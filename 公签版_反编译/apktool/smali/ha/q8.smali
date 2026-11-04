.class public final synthetic Lha/q8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/he;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lea/e;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;IIILandroid/app/Activity;Landroid/content/Context;Lea/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/q8;->a:Ljava/util/ArrayList;

    iput p2, p0, Lha/q8;->b:I

    iput p3, p0, Lha/q8;->c:I

    iput p4, p0, Lha/q8;->d:I

    iput-object p5, p0, Lha/q8;->e:Landroid/app/Activity;

    iput-object p6, p0, Lha/q8;->f:Landroid/content/Context;

    iput-object p7, p0, Lha/q8;->g:Lea/e;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 14

    .line 1
    iget-object v2, p0, Lha/q8;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 8
    .line 9
    new-instance v1, Lz7/s;

    .line 10
    .line 11
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Lha/q8;->b:I

    .line 15
    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "keyType"

    .line 21
    .line 22
    invoke-virtual {v1, v4, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 23
    .line 24
    .line 25
    iget v3, p0, Lha/q8;->c:I

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "gnType"

    .line 32
    .line 33
    invoke-virtual {v1, v4, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 34
    .line 35
    .line 36
    iget v3, p0, Lha/q8;->d:I

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, "setType"

    .line 43
    .line 44
    invoke-virtual {v1, v5, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lha/q8;->g:Lea/e;

    .line 48
    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    new-instance v13, Lha/h1;

    .line 52
    .line 53
    sget-object v3, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 54
    .line 55
    iget v5, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 56
    .line 57
    invoke-virtual {v3, v5}, Lcom/yunpan/appmanage/carsdk/k0;->d(I)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    new-instance v11, Lf2/e0;

    .line 68
    .line 69
    const/4 v5, 0x2

    .line 70
    move-object v0, v11

    .line 71
    move v3, p1

    .line 72
    invoke-direct/range {v0 .. v5}, Lf2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    iget-object v6, p0, Lha/q8;->e:Landroid/app/Activity;

    .line 76
    .line 77
    iget-object v7, p0, Lha/q8;->f:Landroid/content/Context;

    .line 78
    .line 79
    const-string v8, "\u8bbe\u7f6e\u97f3\u91cf"

    .line 80
    .line 81
    const/4 v12, 0x0

    .line 82
    move-object v5, v13

    .line 83
    invoke-direct/range {v5 .. v12}, Lha/h1;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;IILea/c;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v13}, Lha/a4;->show()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    const/4 v0, 0x1

    .line 91
    if-ne v3, v0, :cond_1

    .line 92
    .line 93
    const-string v0, "car\u97f3\u91cf+"

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const-string v0, "car\u97f3\u91cf-"

    .line 97
    .line 98
    :goto_0
    const-string v3, "name"

    .line 99
    .line 100
    invoke-virtual {v1, v3, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 108
    .line 109
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 110
    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v0, "streamType"

    .line 116
    .line 117
    invoke-virtual {v1, v0, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v4, v1}, Lea/e;->k(Lz7/s;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-void
.end method
