.class public final synthetic Lua/f8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lua/q8;

.field public final synthetic c:Lcom/yunpan/appmanage/bean/FileCopyBean;


# direct methods
.method public synthetic constructor <init>(Lua/q8;Lcom/yunpan/appmanage/bean/FileCopyBean;I)V
    .locals 0

    .line 1
    iput p3, p0, Lua/f8;->a:I

    iput-object p1, p0, Lua/f8;->b:Lua/q8;

    iput-object p2, p0, Lua/f8;->c:Lcom/yunpan/appmanage/bean/FileCopyBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Z)V
    .locals 6

    .line 1
    iget v0, p0, Lua/f8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/f8;->b:Lua/q8;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lua/f8;->c:Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Lua/q8;->g:Lha/u9;

    .line 21
    .line 22
    const-string v2, "\u62f7\u8d1d\u4e2d"

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Lha/u9;->b(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lph/j;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-direct {p1, v2, v1}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lmc/c;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, v2, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v1, Lua/m8;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-direct {v1, v0, v2}, Lua/m8;-><init>(Lua/q8;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lec/b;->b(Lec/e;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, v0, Lua/q8;->g:Lha/u9;

    .line 64
    .line 65
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 66
    .line 67
    .line 68
    iget-object p1, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->isHasRepeatFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    new-instance p1, Lha/y4;

    .line 77
    .line 78
    iget-object v2, v0, Lda/h;->f:Landroid/app/Activity;

    .line 79
    .line 80
    iget-object v3, v0, Lda/h;->e:Landroid/content/Context;

    .line 81
    .line 82
    new-instance v4, Lua/n8;

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-direct {v4, v0, v1, v5}, Lua/n8;-><init>(Lua/q8;Lcom/yunpan/appmanage/bean/FileCopyBean;I)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, v2, v3, v1, v4}, Lha/y4;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/yunpan/appmanage/bean/FileCopyBean;Lha/x4;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0, v1}, Lua/q8;->t(Lcom/yunpan/appmanage/bean/FileCopyBean;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lua/f8;->b:Lua/q8;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lua/f8;->c:Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 110
    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    new-instance p1, Lcom/yunpan/appmanage/util/m;

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    invoke-direct {p1, v2}, Lcom/yunpan/appmanage/util/m;-><init>(I)V

    .line 117
    .line 118
    .line 119
    new-instance v2, Lua/f8;

    .line 120
    .line 121
    const/4 v3, 0x1

    .line 122
    invoke-direct {v2, v0, v1, v3}, Lua/f8;-><init>(Lua/q8;Lcom/yunpan/appmanage/bean/FileCopyBean;I)V

    .line 123
    .line 124
    .line 125
    new-instance v0, La2/e0;

    .line 126
    .line 127
    const/4 v3, 0x7

    .line 128
    invoke-direct {v0, p1, v1, v2, v3}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p1, Lcom/yunpan/appmanage/util/m;->a:Ljava/util/concurrent/ExecutorService;

    .line 132
    .line 133
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    iget-object p1, v0, Lua/q8;->g:Lha/u9;

    .line 138
    .line 139
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 140
    .line 141
    .line 142
    iget-object p1, v1, Lcom/yunpan/appmanage/bean/FileCopyBean;->isHasRepeatFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_3

    .line 149
    .line 150
    new-instance p1, Lha/y4;

    .line 151
    .line 152
    iget-object v2, v0, Lda/h;->f:Landroid/app/Activity;

    .line 153
    .line 154
    iget-object v3, v0, Lda/h;->e:Landroid/content/Context;

    .line 155
    .line 156
    new-instance v4, Lua/n8;

    .line 157
    .line 158
    const/4 v5, 0x1

    .line 159
    invoke-direct {v4, v0, v1, v5}, Lua/n8;-><init>(Lua/q8;Lcom/yunpan/appmanage/bean/FileCopyBean;I)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, v2, v3, v1, v4}, Lha/y4;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/yunpan/appmanage/bean/FileCopyBean;Lha/x4;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v0, v1}, Lua/q8;->s(Lcom/yunpan/appmanage/bean/FileCopyBean;)V

    .line 170
    .line 171
    .line 172
    :goto_1
    return-void

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
