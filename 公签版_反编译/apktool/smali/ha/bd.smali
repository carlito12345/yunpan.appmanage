.class public final synthetic Lha/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/ed;


# direct methods
.method public synthetic constructor <init>(Lha/ed;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/bd;->a:I

    iput-object p1, p0, Lha/bd;->b:Lha/ed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lha/bd;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/bd;->b:Lha/ed;

    .line 7
    .line 8
    iget-object v0, p1, Lha/ed;->h:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p1, Lha/ed;->k:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p1, Lha/ed;->i:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p1, Lha/ed;->l:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-boolean v0, p1, Lha/ed;->p:Z

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p1, Lha/ed;->i:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v1, p1, Lha/ed;->l:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const-string p1, "\u8111\u5b50\u574f\u4e86\uff1f"

    .line 56
    .line 57
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v1, p1, Lha/ed;->h:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v2, p1, Lha/ed;->i:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, p1, Lha/ed;->k:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v4, p1, Lha/ed;->l:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v5, p1, Lha/ed;->m:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v0, p1, Lha/ed;->g:Lha/dd;

    .line 72
    .line 73
    invoke-interface/range {v0 .. v5}, Lha/dd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    const-string p1, "\u8bf7\u5148\u9009\u62e9\u597d\u5e94\u7528"

    .line 81
    .line 82
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void

    .line 86
    :pswitch_0
    new-instance p1, Lha/t2;

    .line 87
    .line 88
    iget-object v0, p0, Lha/bd;->b:Lha/ed;

    .line 89
    .line 90
    iget-boolean v1, v0, Lha/ed;->p:Z

    .line 91
    .line 92
    xor-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    new-instance v2, Lha/cd;

    .line 95
    .line 96
    invoke-direct {v2, v0}, Lha/cd;-><init>(Lha/ed;)V

    .line 97
    .line 98
    .line 99
    iget-object v3, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 100
    .line 101
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 102
    .line 103
    invoke-direct {p1, v3, v0, v1, v2}, Lha/t2;-><init>(Landroid/app/Activity;Landroid/content/Context;ZLha/cd;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_1
    iget-object p1, p0, Lha/bd;->b:Lha/ed;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    new-instance v0, Lha/q2;

    .line 116
    .line 117
    new-instance v1, Lha/cd;

    .line 118
    .line 119
    invoke-direct {v1, p1}, Lha/cd;-><init>(Lha/ed;)V

    .line 120
    .line 121
    .line 122
    const/4 v2, 0x3

    .line 123
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 124
    .line 125
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 126
    .line 127
    invoke-direct {v0, v3, p1, v2, v1}, Lha/q2;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/p2;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
