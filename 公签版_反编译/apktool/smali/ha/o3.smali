.class public final synthetic Lha/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/f;
.implements Lc6/e;
.implements Lha/ia;


# instance fields
.field public final synthetic a:Lha/r3;


# direct methods
.method public synthetic constructor <init>(Lha/r3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/o3;->a:Lha/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx9/w3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/o3;->a:Lha/r3;

    .line 2
    .line 3
    iget-object v1, v0, Lha/r3;->x:Lx9/d0;

    .line 4
    .line 5
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lha/r3;->x:Lx9/d0;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lx9/w3;

    .line 20
    .line 21
    iget-boolean v1, v1, Lx9/w3;->c:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, v0, Lha/r3;->x:Lx9/d0;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lc6/g;->C(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, v0, Lha/r3;->x:Lx9/d0;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/o3;->a:Lha/r3;

    .line 2
    .line 3
    iget-object v1, v0, Lha/a4;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lha/h4;

    .line 10
    .line 11
    invoke-direct {p1, v2, v1}, Lha/h4;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lx9/w3;

    .line 15
    .line 16
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 17
    .line 18
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "\u5185\u90e8\u5b58\u50a8"

    .line 23
    .line 24
    invoke-direct {v1, v3, v2}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lh5/m;

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    invoke-direct {v2, v3, v0}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p1, Lha/h4;->s:Lha/g4;

    .line 37
    .line 38
    iget-object v0, p1, Lha/h4;->g:Landroid/widget/TextView;

    .line 39
    .line 40
    const-string v2, "\u8bf7\u9009\u62e9\u6587\u4ef6\u5939"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lha/h4;->i:Lx9/g0;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lha/h4;->a()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v3, 0x1

    .line 55
    if-ne p1, v3, :cond_1

    .line 56
    .line 57
    new-instance p1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lha/a3;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-direct {v1, v2, p1}, Lha/a3;-><init>(ILjava/util/ArrayList;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lmc/c;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    new-instance v2, Lha/h3;

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    invoke-direct {v2, v0, v3, p1}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const/4 v3, 0x2

    .line 99
    if-ne p1, v3, :cond_2

    .line 100
    .line 101
    new-instance p1, Lha/vb;

    .line 102
    .line 103
    invoke-direct {p1, v2, v1}, Lha/vb;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Lha/o3;

    .line 107
    .line 108
    invoke-direct {v1, v0}, Lha/o3;-><init>(Lha/r3;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "\u8bf7\u9009\u62e9\u6587\u4ef6"

    .line 112
    .line 113
    invoke-virtual {p1, v0, v1}, Lha/vb;->c(Ljava/lang/String;Lea/f;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lha/o3;->a:Lha/r3;

    .line 2
    .line 3
    iget-object p2, p1, Lha/r3;->x:Lx9/d0;

    .line 4
    .line 5
    invoke-virtual {p2}, Lc6/g;->b()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    iget-object p2, p1, Lha/r3;->h:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p1, Lha/r3;->x:Lx9/d0;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
