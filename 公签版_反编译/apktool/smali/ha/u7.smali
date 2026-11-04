.class public final synthetic Lha/u7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/e;
.implements Lc6/e;


# instance fields
.field public final synthetic a:Lha/x7;


# direct methods
.method public synthetic constructor <init>(Lha/x7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/u7;->a:Lha/x7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lz7/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/u7;->a:Lha/x7;

    .line 2
    .line 3
    iget-object v0, v0, Lha/x7;->p:Lx9/t2;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 10

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p2, 0x2

    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lha/u7;->a:Lha/x7;

    .line 5
    .line 6
    iget-object v2, v1, Lha/x7;->p:Lx9/t2;

    .line 7
    .line 8
    invoke-virtual {v2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lz7/s;

    .line 13
    .line 14
    const-string v3, "gnType"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x3

    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    .line 27
    new-instance v2, Lha/fa;

    .line 28
    .line 29
    new-array v3, p2, [Ljava/lang/String;

    .line 30
    .line 31
    const-string v4, "\u5220\u9664"

    .line 32
    .line 33
    aput-object v4, v3, p1

    .line 34
    .line 35
    const-string v4, "\u7f16\u8f91"

    .line 36
    .line 37
    aput-object v4, v3, v0

    .line 38
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    if-ge p1, p2, :cond_0

    .line 45
    .line 46
    aget-object v5, v3, p1

    .line 47
    .line 48
    invoke-static {v5, v4, v5, p1, v0}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    new-instance v9, Lha/v7;

    .line 58
    .line 59
    invoke-direct {v9, v1, p3}, Lha/v7;-><init>(Lha/x7;I)V

    .line 60
    .line 61
    .line 62
    iget-object v6, v1, Lha/a4;->b:Landroid/content/Context;

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    iget-object v5, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 66
    .line 67
    move-object v4, v2

    .line 68
    invoke-direct/range {v4 .. v9}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-object p1, v1, Lha/x7;->p:Lx9/t2;

    .line 76
    .line 77
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-ne p1, v0, :cond_2

    .line 82
    .line 83
    iget-object p1, v1, Lha/x7;->k:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object p1, v1, Lha/x7;->p:Lx9/t2;

    .line 89
    .line 90
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void
.end method
