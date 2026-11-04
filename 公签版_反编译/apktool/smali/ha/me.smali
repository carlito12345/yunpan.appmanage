.class public final synthetic Lha/me;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lfa/y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/p0;


# direct methods
.method public synthetic constructor <init>(Lha/p0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/me;->a:I

    iput-object p1, p0, Lha/me;->b:Lha/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfa/x;)V
    .locals 4

    .line 1
    iget v0, p0, Lha/me;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/me;->b:Lha/p0;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p1, Lfa/x;->a:Z

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    iget v1, p1, Lfa/x;->b:I

    .line 16
    .line 17
    const/16 v2, -0x6f

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Lfa/x;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1, v3}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "\u81ea\u52a8\u5b89\u88c5\u5931\u8d25\uff0c\u6b63\u5728\u8c03\u7528\u5b89\u88c5\u5668\u5b89\u88c5\n"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lfa/x;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, v3}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 48
    .line 49
    iget p1, p1, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 50
    .line 51
    iget-object v0, v0, Lha/p0;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lha/z6;

    .line 54
    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    sget-object p1, Lma/h;->a:Lma/i;

    .line 58
    .line 59
    iget-object v0, v0, Lha/z6;->h:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v1, Lha/jd;

    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    invoke-direct {v1, v2}, Lha/jd;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, v1}, Lma/i;->c(Ljava/lang/String;Lma/g;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, v0, Lha/a4;->b:Landroid/content/Context;

    .line 72
    .line 73
    iget-object v0, v0, Lha/z6;->h:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lha/me;->b:Lha/p0;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget-boolean v1, p1, Lfa/x;->a:Z

    .line 85
    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    iget v1, p1, Lfa/x;->b:I

    .line 89
    .line 90
    const/16 v2, -0x6f

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    if-ne v1, v2, :cond_3

    .line 94
    .line 95
    iget-object p1, p1, Lfa/x;->c:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p1, v3}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v2, "\u81ea\u52a8\u5b89\u88c5\u5931\u8d25\uff0c\u6b63\u5728\u8c03\u7528\u5b89\u88c5\u5668\u5b89\u88c5\n"

    .line 104
    .line 105
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p1, Lfa/x;->c:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1, v3}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 118
    .line 119
    .line 120
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 121
    .line 122
    iget p1, p1, Lcom/yunpan/appmanage/util/w;->c0:I

    .line 123
    .line 124
    iget-object v0, v0, Lha/p0;->c:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Lha/z6;

    .line 127
    .line 128
    if-nez p1, :cond_4

    .line 129
    .line 130
    sget-object p1, Lma/h;->a:Lma/i;

    .line 131
    .line 132
    iget-object v0, v0, Lha/z6;->h:Ljava/lang/String;

    .line 133
    .line 134
    new-instance v1, Lha/jd;

    .line 135
    .line 136
    const/4 v2, 0x2

    .line 137
    invoke-direct {v1, v2}, Lha/jd;-><init>(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0, v1}, Lma/i;->c(Ljava/lang/String;Lma/g;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    iget-object p1, v0, Lha/a4;->b:Landroid/content/Context;

    .line 145
    .line 146
    iget-object v0, v0, Lha/z6;->h:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->I(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_5
    :goto_1
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lmc/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/me;->b:Lha/p0;

    .line 2
    .line 3
    iget-object v0, v0, Lha/p0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lha/z6;

    .line 6
    .line 7
    iget-object v0, v0, Lha/z6;->h:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Lha/ne;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p1, v2}, Lha/ne;-><init>(Lmc/b;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/bumptech/glide/d;->G(Ljava/lang/String;Lma/k;)Lma/l;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lma/l;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v0, "\u5b89\u88c5\u6210\u529f"

    .line 26
    .line 27
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, v0, Lma/l;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
