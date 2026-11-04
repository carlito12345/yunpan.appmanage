.class public final Lua/c9;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lha/v9;

.field public final synthetic c:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/yunpan/appmanage/bean/WpPathBean;

.field public final synthetic f:Lua/i9;


# direct methods
.method public constructor <init>(Lua/i9;Lha/v9;Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;ZLcom/yunpan/appmanage/bean/WpPathBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/c9;->f:Lua/i9;

    .line 2
    .line 3
    iput-object p2, p0, Lua/c9;->b:Lha/v9;

    .line 4
    .line 5
    iput-object p3, p0, Lua/c9;->c:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 6
    .line 7
    iput-boolean p4, p0, Lua/c9;->d:Z

    .line 8
    .line 9
    iput-object p5, p0, Lua/c9;->e:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 10
    .line 11
    const/16 p1, 0x1c

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/c9;->b:Lha/v9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/v9;->dismiss()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lua/c9;->c:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string p1, "\u4e3b\u52a8\u505c\u6b62\u4efb\u52a1"

    .line 31
    .line 32
    :cond_0
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lua/c9;->f:Lua/i9;

    .line 36
    .line 37
    iget-object v0, p1, Lua/i9;->x:Lx9/g0;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-static {v0, v1}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lx9/w3;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v0, v1}, Lua/i9;->n(Lx9/w3;Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onComplete()V
    .locals 7

    .line 1
    iget-object v0, p0, Lua/c9;->b:Lha/v9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lha/v9;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/c9;->c:Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    iget-object v4, p0, Lua/c9;->f:Lua/i9;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v0, "\u4e3b\u52a8\u505c\u6b62\u4efb\u52a1"

    .line 17
    .line 18
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v4, Lua/i9;->x:Lx9/g0;

    .line 22
    .line 23
    invoke-static {v0, v3}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lx9/w3;

    .line 28
    .line 29
    invoke-virtual {v4, v0, v2}, Lua/i9;->n(Lx9/w3;Z)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_0
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-lez v1, :cond_2

    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 64
    .line 65
    new-instance v3, Lx9/w3;

    .line 66
    .line 67
    iget-object v5, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v6, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 70
    .line 71
    invoke-direct {v3, v5, v6}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->errorStr:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v2, v3, Lx9/w3;->j:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lha/r5;

    .line 83
    .line 84
    iget-object v2, v4, Lda/h;->f:Landroid/app/Activity;

    .line 85
    .line 86
    iget-object v3, v4, Lda/h;->e:Landroid/content/Context;

    .line 87
    .line 88
    invoke-direct {v0, v2, v3, v1}, Lha/r5;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 96
    .line 97
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-boolean v1, p0, Lua/c9;->d:Z

    .line 101
    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, "/"

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lua/c9;->e:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v2, "//"

    .line 131
    .line 132
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v4, v0}, Lua/i9;->s(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    iget-object v0, v4, Lua/i9;->x:Lx9/g0;

    .line 141
    .line 142
    invoke-static {v0, v3}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lx9/w3;

    .line 147
    .line 148
    invoke-virtual {v4, v0, v2}, Lua/i9;->n(Lx9/w3;Z)V

    .line 149
    .line 150
    .line 151
    :goto_1
    return-void
.end method
