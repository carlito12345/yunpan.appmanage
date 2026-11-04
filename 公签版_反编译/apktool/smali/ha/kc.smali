.class public final Lha/kc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/lc;


# direct methods
.method public synthetic constructor <init>(Lha/lc;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/kc;->a:I

    iput-object p1, p0, Lha/kc;->b:Lha/lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method

.method private final b()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    .line 1
    iget v0, p0, Lha/kc;->a:I

    return-void
.end method

.method public final t()V
    .locals 13

    .line 1
    iget v0, p0, Lha/kc;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/kc;->b:Lha/lc;

    .line 7
    .line 8
    invoke-virtual {v0}, Lha/lc;->a()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lha/kc;->b:Lha/lc;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 18
    .line 19
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget-object v2, v0, Lha/a4;->b:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, "/\u5feb\u6377\u6307\u4ee4.txt"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    new-instance v3, Lha/z6;

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v5, "\u8def\u5f84\uff1a"

    .line 71
    .line 72
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const-string v2, "\u5185\u90e8\u5b58\u50a8/\u5feb\u6377\u6307\u4ee4.txt"

    .line 87
    .line 88
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    new-instance v11, Lha/kc;

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    invoke-direct {v11, v0, v1}, Lha/kc;-><init>(Lha/lc;I)V

    .line 99
    .line 100
    .line 101
    iget-object v5, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 102
    .line 103
    iget-object v6, v0, Lha/a4;->b:Landroid/content/Context;

    .line 104
    .line 105
    const-string v10, "\u8986\u76d6\u4fdd\u5b58"

    .line 106
    .line 107
    const/4 v12, 0x0

    .line 108
    const-string v7, "\u5df2\u5b58\u5728\u6587\u4ef6\uff1a\u5feb\u6377\u6307\u4ee4.txt"

    .line 109
    .line 110
    const-string v9, "\u53d6\u6d88\u4fdd\u5b58"

    .line 111
    .line 112
    move-object v4, v3

    .line 113
    invoke-direct/range {v4 .. v12}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Lha/a4;->show()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v0}, Lha/lc;->a()V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
